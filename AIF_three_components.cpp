// file: AIF_three_components.cpp
// purpose: simulate three component Antithetic Integral feedback systems using Gillespie's stochastic simulation algorithm.
// cmd line args:
//		theta : rate constant for X birth (linear dependence on Z abundance)
// 		mu : constant rate of Y birth
//		k : rate constant for Z birth (linear dependence on Y abundance)
//		alpha : constitutive birth rate of Z
//		C : mass action complex formation rate for sequestration of X and Y
//		beta_x : individual degradation rate of X
//		beta_y : individual degradation rate of X
//		beta_z : degradation rate of Z 
//		lambda : complex dissociation rate (death of complex + birth of X and Y)
//		gamma : complex decay to the empty set (e.g., via protease)
//		V_y : max rate for saturating actuation reaction rate V_y*y^n_y/(A_y^n_y + y^n_y) (when enabled) -- n_y > 0 --> activating actuation through Y
//		n_y : Hill coefficient for saturating actuation reaction via Y (when enabled)
// 		A_y : half max value of Y abundance for saturating actuation reaction via Y (when enabled)
//		V_x : max rate for saturating actuation reaction rate V_x*x^n_x/(A_x^n_x + x^n_x) (when enabled) -- n_x > 0 --> inhibiting actuation through X
//		n_x : Hill coefficient for saturating actuation reaction via X (when enabled)
// 		A_x : half max value of Y abundance for saturating actuation reaction via X (when enabled)
//		rec_min : minimum number of times each reaction must fire before the simulation exits
//		seed : seed for PRNG
//		filename_theme : a human-readable string identifier that will be contained in the filenames of all generated data files (e.g., my_antithetic_data)
//		passive_reporter : 0 = no passive reporter, 1 = closed loop system + passive reporter
// 		trace_duration: duration of time to track trace for (in units of tau_z = 1/beta_z)
// 		pert_size : size of perturbation (beta_z --> pert_size*beta_z (where tau_z = 1/beta_z) after 1/3 of trace_duration time has passed)

#include <unordered_map> 
#include <vector>
#include <algorithm> 
#include <iostream>
#include <string>
#include <random>
#include <math.h>
#include <iomanip>

// headers for user defined functions
#include "AIF_three_components_Gillespie_iteration.h"
#include "statistics.h"
#include "data_to_file.h"

using namespace std;

//defining the timer class for timing convenience
class timer
{
	clock_t start;
public:
	timer();
	~timer(); 
};

int main(int argc, char** argv)
{
	// Parse input args
	double theta = stod(argv[1]);
	double mu = stod(argv[2]);
	double k = stod(argv[3]);
	double alpha = stod(argv[4]);
	double C = stod(argv[5]);
	double beta_x = stod(argv[6]);
	double beta_y = stod(argv[7]);
	double beta_z = stod(argv[8]);
	double lambda = stod(argv[9]);
	double gamma = stod(argv[10]);
	double V_y = stod(argv[11]);
	double n_y = stod(argv[12]);
	double A_y = stod(argv[13]);
	double V_x = stod(argv[14]);
	double n_x = stod(argv[15]);
	double A_x = stod(argv[16]);
	double rec_min = stod(argv[17]);
	unsigned long seed = stoul(argv[18]);
	string filename_theme = argv[19];
	int passive_reporter = stoi(argv[20]);
	double trace_duration = stod(argv[21]);	
	double pert_size = stod(argv[22]);
	
	cout << "Running 3 component AIF system with parameteres theta = " << theta << "\t mu = " << mu << "\t k = " << k << "\t alpha = " << alpha << 
		"\t C = " << C << "\t beta_x = " << beta_x << "\t beta_y = " << beta_y << "\t beta_z = " << beta_z <<
		"\t lambda = " << lambda << "\t gamma = " << gamma << "\t V_y = " << V_y << "\t n_y = " << n_y << "\t A_y = " << A_y <<
		"\t V_x = " << V_x << "\t n_x = " << n_x << "\t A_x = " << A_x << "\t rec_min = " << rec_min << "\t seed = " << seed <<
		"\t passive reporter = " << passive_reporter << "\t trace_duration = " << trace_duration << "\t pert_size = " << pert_size << endl;
	
	if (passive_reporter != 0 && passive_reporter != 1)
	{
		cerr << "The 20th parameter 'passive_reporter' must take a value of 0 or 1. See documentation.";
	}
	
	// initialize standard Mersenne Twister PRNG
	uniform_real_distribution<double> uniform(0.0,1.0);
	mt19937 engine; // PRNG state
	engine.seed(seed); // seed the PRNG engine
	
	// initialize system variables
	unsigned int x, y, z, xy, pr; // X and Y are the controller species, Z the controlled species, XY the complex formed by X and Y, pr the passive reported (if enabled)
	double t; // system time
	double rand_uni1, rand_uni2; // variables for uniform random numbers
	
	// initialize vectors (variable size) for traces (and the corresponding time vector)
	vector<double> X_trace; vector<double> Y_trace; vector<double> Z_trace; vector<double> Complex_trace; vector<double> PR_trace; vector<double> time;
	
	// set up initial conditions
	t = 0; x = 1; y = 1; z = 1; xy = 1; pr = 1; 
	
	// initialize probability distributions
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_x_y_z; // P(x,y,z)
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_complex_x_y; // P(xy,x,y)
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_complex_pr_z; // P(xy,pr,z)
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_complex_x_z; // P(xy,x,z)
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_pr_x_y; // P(pr,x,y)
	unordered_map<int, unordered_map<int, unordered_map<int, double> > > P_pr_x_z; // P(pr,x,z)
	
	// calculate number of reactions based off input args
	bool actuation_through_X_and_Y = (A_x > 0 && A_y > 0) || (A_x > 0 && k > 0);
	bool complex_dissociation = (lambda > 0);
	bool complex_decay = (gamma > 0);
	bool X_decay = (beta_x > 0);
	bool Y_decay = (beta_y > 0);
	bool only_alpha = ((V_x == 0)&&(V_y==0)&&(k==0));
	bool constitutive_z_birth = ((alpha > 0) && not(only_alpha));
	// standard closed loop includes just 5 reactions
	int Nreactions_CL = 5 + int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + (2+int(actuation_through_X_and_Y)+int(constitutive_z_birth))*passive_reporter + int(constitutive_z_birth); 
	
	// initialize array of reaction counts for the closed loop system (starting at 0)
	double* rec_count_CL = new double[Nreactions_CL]; 
	for (int i = 0; i < Nreactions_CL; i++)
	{
		rec_count_CL[i] = 0;
	}
	// start the timer
	timer ob;

	// Gillespie loop for closed loop system
	while ( ! all_of( rec_count_CL, rec_count_CL+Nreactions_CL, [&rec_min]( double count ){ return count >= rec_min; } ) )
	{
		// sample uniformly distributed random numbers 
		rand_uni1 = uniform(engine);
		rand_uni2 = uniform(engine);
		
		// call to iteration function
		closed_loop_iteration(P_x_y_z, P_complex_x_y, P_complex_pr_z, P_complex_x_z, P_pr_x_y, P_pr_x_z, &x, &y, &z, &xy, &pr, &t,
							theta, mu, k, alpha, C, beta_x, beta_y, beta_z,  lambda, gamma, V_y, n_y, 
							A_y, V_x, n_x, A_x, rec_count_CL, rand_uni1, rand_uni2, passive_reporter);
	}

	// normalize distributions
	normalize_jointdistr(P_x_y_z, t);
	normalize_jointdistr(P_complex_x_y, t);
	normalize_jointdistr(P_complex_pr_z, t);
	normalize_jointdistr(P_complex_x_z, t);
	normalize_jointdistr(P_pr_x_y, t);
	normalize_jointdistr(P_pr_x_z, t);

	// compute statistics before collecting traces and possibly introducing a perturbation
	double X_avg = calculate_mean(P_x_y_z, 1); double Y_avg = calculate_mean(P_x_y_z, 2); double Z_avg = calculate_mean(P_x_y_z, 3); 

	double X_var = calculate_variance(X_avg, P_x_y_z, 1); double Y_var = calculate_variance(Y_avg, P_x_y_z, 2); double Z_var = calculate_variance(Z_avg, P_x_y_z, 3); 
	
	double cov_X_Y = calculate_covariance(X_avg, Y_avg, P_x_y_z, 1, 2); double cov_X_Z = calculate_covariance(X_avg, Z_avg, P_x_y_z, 1, 3); 
	double cov_Y_Z = calculate_covariance(Y_avg, Z_avg, P_x_y_z, 2, 3); 
	
	double XY_avg = cov_X_Y + X_avg*Y_avg; // follows from definition of covariance
	
	double XY_var = calculate_mixed_variance(XY_avg, P_x_y_z, 1, 2);
	
	double cov_XY_X = calculate_mixed_covariance(XY_avg, X_avg, P_x_y_z, 1, 2, 1); double cov_XY_Y = calculate_mixed_covariance(XY_avg, Y_avg, P_x_y_z, 1, 2, 2);
	double cov_XY_Z = calculate_mixed_covariance(XY_avg, Z_avg, P_x_y_z, 1, 2, 3);
	
	double Complex_avg; double Complex_var; double cov_Complex_X; double cov_Complex_Y; double cov_Complex_Z; double cov_XY_Complex;
	if (complex_dissociation || complex_decay)
	{ 
		Complex_avg = calculate_mean(P_complex_x_y, 1); 
		Complex_var = calculate_variance(Complex_avg, P_complex_x_y, 1);
		cov_Complex_X = calculate_covariance(Complex_avg, X_avg, P_complex_x_y, 1, 2);
		cov_Complex_Y = calculate_covariance(Complex_avg, Y_avg, P_complex_x_y, 1, 3);
		cov_Complex_Z = calculate_covariance(Complex_avg, Z_avg, P_complex_x_z, 1, 3);
		cov_XY_Complex = calculate_mixed_covariance(XY_avg, Complex_avg, P_complex_x_y, 2, 3, 1);
	}
	else 
	{ 
		Complex_avg = 0.0;
		Complex_var = 0.0;
		cov_Complex_X = 0.0;
		cov_Complex_Y = 0.0; 
		cov_Complex_Z = 0.0;
		cov_XY_Complex = 0.0;
	}
	
	double PR_avg; double PR_var; double cov_PR_X; double cov_PR_Y; double cov_PR_Z; double cov_Complex_PR;	double cov_XY_PR;
	if (passive_reporter == 1)
	{ 
		PR_avg = calculate_mean(P_pr_x_y, 1); 
		PR_var = calculate_variance(PR_avg, P_pr_x_y, 1); 
		cov_PR_X = calculate_covariance(PR_avg, X_avg, P_pr_x_y, 1, 2);
		cov_PR_Y = calculate_covariance(PR_avg, Y_avg, P_pr_x_y, 1, 3);
		cov_PR_Z = calculate_covariance(PR_avg, Z_avg, P_pr_x_z, 1, 3);
		cov_XY_PR = calculate_mixed_covariance(XY_avg, PR_avg, P_pr_x_y, 2, 3, 1); 
		if (complex_dissociation || complex_decay)
		{
			cov_Complex_PR = calculate_covariance(Complex_avg, PR_avg, P_complex_pr_z, 1, 2);
		}
		else
		{
			cov_Complex_PR = 0.0;
		}
	}
	else 
	{ 
		PR_avg = 0.0; 
		PR_var = 0.0;
		cov_PR_X = 0.0;
		cov_PR_Y = 0.0;
		cov_PR_Z = 0.0;
		cov_XY_PR = 0.0;
		cov_Complex_PR = 0.0;
	}
	
	double HFx_avg; double HFy_avg; double HFx_var; double HFy_var; 
	double cov_HFx_X; double cov_HFx_Y; double cov_HFx_Z; double cov_HFx_Complex; double cov_HFx_PR;  
	double cov_HFy_X; double cov_HFy_Y; double cov_HFy_Z; double cov_HFy_Complex; double cov_HFy_PR;
	if (V_x > 0 && (V_y == 0 && k == 0)) // corresponds to actuation via X only 
	{
		HFx_avg = calculate_Hill_func_mean(P_x_y_z, 1, A_x, V_x, n_x);
		HFy_avg = 0.0; 
		HFx_var = calculate_Hill_func_variance(HFx_avg, P_x_y_z, 1, A_x, V_x, n_x);
		HFy_var = 0.0;
		cov_HFx_X = calculate_Hill_func_covariance(HFx_avg, X_avg, P_x_y_z, 1, 1, A_x, V_x, n_x);
		cov_HFy_X = 0.0;
		cov_HFx_Y = calculate_Hill_func_covariance(HFx_avg, Y_avg, P_x_y_z, 1, 2, A_x, V_x, n_x);
		cov_HFy_Y = 0.0;
		cov_HFx_Z = calculate_Hill_func_covariance(HFx_avg, Z_avg, P_x_y_z, 1, 3, A_x, V_x, n_x);
		cov_HFy_Z = 0.0;
		cov_HFx_Complex = calculate_Hill_func_covariance(HFx_avg, Complex_avg, P_complex_x_y, 2, 1, A_x, V_x, n_x);
		cov_HFy_Complex = 0.0;
		cov_HFx_PR = calculate_Hill_func_covariance(HFx_avg, PR_avg, P_pr_x_y, 2, 1, A_x, V_x, n_x);
		cov_HFy_PR = 0.0;
	}
	else if (V_x == 0 && (V_y > 0 || k > 0)) // corresponds to actuation via Y only (either linear or saturating) 
	{
		HFx_avg = 0.0;
		HFy_avg = calculate_Hill_func_mean(P_x_y_z, 2, A_y, V_y, n_y);
		HFx_var = 0.0;
		HFy_var = calculate_Hill_func_variance(HFy_avg, P_x_y_z, 2, A_y, V_y, n_y);
		cov_HFx_X = 0.0;
		cov_HFy_X = calculate_Hill_func_covariance(HFy_avg, X_avg, P_x_y_z, 2, 1, A_y, V_y, n_y);
		cov_HFx_Y = 0.0;
		cov_HFy_Y = calculate_Hill_func_covariance(HFy_avg, Y_avg, P_x_y_z, 2, 2, A_y, V_y, n_y);
		cov_HFx_Z = 0.0;
		cov_HFy_Z = calculate_Hill_func_covariance(HFy_avg, Z_avg, P_x_y_z, 2, 3, A_y, V_y, n_y);
		cov_HFx_Complex = 0.0;
		cov_HFy_Complex = calculate_Hill_func_covariance(HFy_avg, Complex_avg, P_complex_x_y, 3, 1, A_y, V_y, n_y);
		cov_HFx_PR = 0.0;
		cov_HFy_PR = calculate_Hill_func_covariance(HFy_avg, PR_avg, P_pr_x_y, 3, 1, A_y, V_y, n_y);
		cov_HFy_PR = calculate_Hill_func_covariance(HFy_avg, PR_avg, P_pr_x_y, 3, 1, A_y, V_y, n_y);
	}
	else // corresponding to actuation via X and Y
	{
		HFx_avg = calculate_Hill_func_mean(P_x_y_z, 1, A_x, V_x, n_x);
		HFy_avg = calculate_Hill_func_mean(P_x_y_z, 2, A_y, V_y, n_y);
		HFx_var = calculate_Hill_func_variance(HFx_avg, P_x_y_z, 1, A_x, V_x, n_x);
		HFy_var = calculate_Hill_func_variance(HFy_avg, P_x_y_z, 2, A_y, V_y, n_y);
		cov_HFx_X = calculate_Hill_func_covariance(HFx_avg, X_avg, P_x_y_z, 1, 1, A_x, V_x, n_x);
		cov_HFy_X = calculate_Hill_func_covariance(HFy_avg, X_avg, P_x_y_z, 2, 1, A_y, V_y, n_y);
		cov_HFx_Y = calculate_Hill_func_covariance(HFx_avg, Y_avg, P_x_y_z, 1, 2, A_x, V_x, n_x);
		cov_HFy_Y = calculate_Hill_func_covariance(HFy_avg, Y_avg, P_x_y_z, 2, 2, A_y, V_y, n_y);
		cov_HFx_Z = calculate_Hill_func_covariance(HFx_avg, Z_avg, P_x_y_z, 1, 3, A_x, V_x, n_x);
		cov_HFy_Z = calculate_Hill_func_covariance(HFy_avg, Z_avg, P_x_y_z, 2, 3, A_y, V_y, n_y);
		cov_HFx_Complex = calculate_Hill_func_covariance(HFx_avg, Complex_avg, P_complex_x_y, 2, 1, A_x, V_x, n_x);
		cov_HFy_Complex = calculate_Hill_func_covariance(HFy_avg, Complex_avg, P_complex_x_y, 3, 1, A_y, V_y, n_y);
		cov_HFx_PR = calculate_Hill_func_covariance(HFx_avg, PR_avg, P_pr_x_y, 2, 1, A_x, V_x, n_x);
		cov_HFy_PR = calculate_Hill_func_covariance(HFy_avg, PR_avg, P_pr_x_y, 3, 1, A_y, V_y, n_y);
	}
	
	double *stats{ new double[41]{X_avg, Y_avg, Z_avg, Complex_avg, PR_avg, XY_avg, X_var, Y_var, Z_var, Complex_var, PR_var, XY_var,
			cov_X_Y, cov_X_Z, cov_Y_Z, cov_Complex_X, cov_Complex_Y, cov_Complex_Z, cov_PR_X, cov_PR_Y, cov_PR_Z, 
			cov_Complex_PR, cov_XY_X, cov_XY_Y, cov_XY_Z, cov_XY_Complex, cov_XY_PR, HFx_avg, HFy_avg, HFx_var, 
			HFy_var, cov_HFx_X, cov_HFy_X, cov_HFx_Y, cov_HFy_Y, cov_HFx_Z, cov_HFy_Z, cov_HFx_Complex, cov_HFy_Complex,
			cov_HFx_PR, cov_HFy_PR} };
	
	// reset reaction count array
	for (int i = 0; i < Nreactions_CL; i++)
	{
		rec_count_CL[i] = 0;
	}
	// reset time
	t = 0;
	// sample traces
	double beta_z_pert = beta_z;
	while(t < trace_duration*(1/beta_z))
	{
		// save instantaneous abundances to trace vectors  
		X_trace.push_back(double(x)); Y_trace.push_back(double(y)); Z_trace.push_back(double(z)); 
		if (complex_dissociation  || complex_decay)
		{
			Complex_trace.push_back(double(xy));
		}
		if (passive_reporter == 1)
		{
			PR_trace.push_back(double(pr));
		}			
		// save time
		time.push_back(t);
		
		// sample uniformly distributed random numbers 
		rand_uni1 = uniform(engine);
		rand_uni2 = uniform(engine);
		
		// call to iteration function
		closed_loop_iteration(P_x_y_z, P_complex_x_y, P_complex_pr_z, P_complex_x_z, P_pr_x_y, P_pr_x_z, &x, &y, &z, &xy, &pr, &t,
							theta, mu, k, alpha, C, beta_x, beta_y, beta_z_pert,  lambda, gamma, V_y, n_y, 
							A_y, V_x, n_x, A_x, rec_count_CL, rand_uni1, rand_uni2, passive_reporter);
							
		// perturb the degradation rate of Z ~1/3 of the way through trace
		if ((pert_size != 0) && (t >= trace_duration*(1/beta_z)/3) && (beta_z_pert == beta_z))
		{
				beta_z_pert = pert_size*beta_z_pert;			
		}
	}
	// write statistics to file
	string fname = string( "Data/three_components/" ) + filename_theme + string( "_STATISTICS.bin" );
	write_array(stats, 41, fname);
	
	// if relevant, write traces to files
	if (trace_duration > 0)
	{
		double trace_length = time.size(); // number of elements in the trace/time vectors
		
		// write time array to file
		fname = string( "Data/three_components/" ) + filename_theme + string( "_TRACE_TIMES.bin" );
		write_array(&time[0], trace_length, fname);
		
		// write x trace to file
		fname = string( "Data/three_components/" ) + filename_theme + string( "_X_TRACE.bin" );
		write_array(&X_trace[0], trace_length, fname);
		
		// write y trace to file
		fname = string( "Data/three_components/" ) + filename_theme + string( "_Y_TRACE.bin" );
		write_array(&Y_trace[0], trace_length, fname);
		
		// write z trace to file
		fname = string( "Data/three_components/" ) + filename_theme + string( "_Z_TRACE.bin" );
		write_array(&Z_trace[0], trace_length, fname);
		
		// if complex has degradation write complex trace to file
		if (complex_dissociation  || complex_decay)
		{
			fname = string( "Data/three_components/" ) + filename_theme + string( "_complex_TRACE.bin" );
			write_array(&Complex_trace[0], trace_length, fname);
		}
		
		// if passive reporter is enabled write passive reporter trace to file 
		if (passive_reporter == 1)
		{
			fname = string( "Data/three_components/" ) + filename_theme + string( "_PassiveReporter_TRACE.bin" );
			write_array(&PR_trace[0], trace_length, fname);
		}	
	}
	
	// write simulation parameters to file
	fname = string( "Data/three_components/" ) + filename_theme + string( "_PARAMETERS.bin" );
	double *params{ new double[21]{theta, mu, k, alpha, C, beta_x, beta_y, beta_z, lambda, gamma, V_y, n_y, A_y,
					V_x, n_x, A_x, rec_min, double(seed), double(passive_reporter), trace_duration, pert_size} };
	write_array(params, 21, fname); 
	
	// clear distributions
	P_x_y_z.clear();
	P_complex_x_y.clear(); 
	P_complex_pr_z.clear();
	P_complex_x_z.clear();
	P_pr_x_y.clear();
	P_pr_x_z.clear();
	
	return(0);
}

timer::timer(){start=clock();}
timer::~timer()
{
	int hour,min;
	float sec;
	clock_t end;

	end=clock();

	sec=(float)(end-start)/CLOCKS_PER_SEC;
	min=(int)sec/60;
        sec=sec-60*min;
	hour=(int)min/60;
        min=min-60*hour;

	cout<<"Time Elapsed : "<<hour<<" hour: "<<min<<" min: "<<sec<<" sec. "<<endl;
}

