// file: AIF_three_components_Gillespie_iteration.cpp
#include <math.h>
#include <unordered_map>

#include "AIF_three_components_Gillespie_iteration.h" 

void closed_loop_iteration(unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_x_y_z, 
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_complex_x_y,
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_complex_pr_z,
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_complex_x_z,
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_pr_x_y,
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_pr_x_z,
							unsigned int* x, unsigned int* y, unsigned int* z, unsigned int* xy, unsigned int* pr, double* t,
							double theta, double mu, double k, double alpha, double C, double beta_x, double beta_y, double beta_z, 
							double lambda, double gamma, double V_y, double n_y, double A_y, double V_x, double n_x, double A_x,
							double *rec_count_CL, double rand_uni1, double rand_uni2, int passive_reporter)
{
	// set up transition propensities
	double r_Xbirth = theta*(*z);
	double r_Ybirth = mu;
	double r_Zbirth1;
	double r_Zbirth2; 
	double r_Zbirth3 = alpha;
	double Fx;
	double Fy;
	bool only_alpha = false; 
	if (V_x > 0 && (V_y == 0 && k == 0)) // corresponds to actuation via X only 
	{
		if ((*x)>0)
		{
			Fx = V_x*pow((*x), n_x)/(pow(A_x, n_x) + pow((*x), n_x)); 
		}
		else
		{
			if (n_x < 0)
			{
				Fx = V_x;
			}
			else
			{
				Fx = 0.0;
			}
		}
		r_Zbirth1 = Fx; // Hill function of X
		
		r_Zbirth2 = 0.0;
		
	}
	else if (V_x == 0 && (V_y > 0 || k > 0)) // corresponds to actuation via Y only (either linear or saturating) 
	{
		if ((*y)>0)
		{
			Fy = V_y*pow((*y), n_y)/(pow(A_y, n_y) + pow((*y), n_y)); 
		}
		else
		{
			if (n_y < 0)
			{
				Fy = V_y;
			}
			else
			{
				Fy = 0.0;
			}
		}
		r_Zbirth1 = k*(*y) + Fy; // linear actuation rate + saturating rate (pass k = 0 & V_y>0 for saturating OR k>0 & V_y = 0 for linear)
		r_Zbirth2 = 0.0;
	}
	else if (V_x > 0 && (V_y > 0 || k > 0)) // corresponding to actuation via X and Y
	{
		if ((*x)>0)
		{
			Fx = V_x*pow((*x), n_x)/(pow(A_x, n_x) + pow((*x), n_x)); 
		}
		else
		{
			if (n_x < 0)
			{
				Fx = V_x;
			}
			else
			{
				Fx = 0;
			}
		}
		if ((*y)>0)
		{
			Fy = V_y*pow((*y), n_y)/(pow(A_y, n_y) + pow((*y), n_y)); 
		}
		else
		{
			if (n_y < 0)
			{
				Fy = V_y;
			}
			else
			{
				Fy = 0.0;
			}
		}
		r_Zbirth1 = k*(*y) + Fy; // linear actuation rate + saturating rate (pass k = 0 & V_y>0 for saturating OR k>0 & V_y = 0 for linear)
		r_Zbirth2 = Fx; // Hill function of X
	}
	else // ONLY constant birth
	{
		r_Zbirth1 = alpha;
		r_Zbirth2 = 0;
		r_Zbirth3 = 0;
		only_alpha = true;
	}
	double r_PRbirth1;
	double r_PRbirth2;
	double r_PRbirth3;
	double r_PRdecay;
	if (passive_reporter == 1)
	{
		// passive reporter with same birth rate as Z and same lifetime, but its own intrinsic fluctuations
		r_PRbirth1 = r_Zbirth1; 
		r_PRbirth2 = r_Zbirth2; 
		r_PRbirth3 = r_Zbirth3; 
		r_PRdecay = beta_z*(*pr);
	}
	else
	{
		r_PRbirth1 = 0.0;
		r_PRbirth2 = 0.0;
		r_PRbirth3 = 0.0;
		r_PRdecay = 0.0;
	}
	double r_complex_formation = C*(*x)*(*y); // formation of the complex 
	double r_complex_dissociation = lambda*(*xy); // complex dissociation rate 
	double r_complex_decay = gamma*(*xy); // individual decay of complex not resulting in a birth of X and Y (e.g., targeted protease degradation of the complex)
	double r_Xdecay = beta_x*(*x); // individual decay of X (e.g., targeted protease degradation of X)
	double r_Ydecay = beta_y*(*y); // individual decay of Y (e.g., targeted protease degradation of Y)
	double r_Zdecay = beta_z*(*z); // individual decay of Z (e.g., targeted protease degradation of Z)
	double rTot = r_Xbirth + r_Ybirth + r_Zbirth1 + r_PRbirth1 + r_PRdecay + r_Zbirth2 + r_PRbirth2 + r_complex_formation + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_Zdecay + r_Zbirth3 + r_PRbirth3; 
 
	// book keeping to facillitate properly indexing rec_count_CL when not all possible reaction options are enabled
	bool actuation_through_X_and_Y = (A_x > 0 && A_y > 0) || (A_x > 0 && k > 0);
	bool complex_dissociation = (lambda > 0);
	bool complex_decay = (gamma > 0);
	bool X_decay = (beta_x > 0);
	bool Y_decay = (beta_y > 0);
	bool constitutive_z_birth = ((alpha > 0) && not(only_alpha));
	int id5 = int(actuation_through_X_and_Y)*(4+int(actuation_through_X_and_Y)) - (1-int(actuation_through_X_and_Y));
	int id6 = int(complex_dissociation)*(4+int(actuation_through_X_and_Y) + int(complex_dissociation)) - (1-int(complex_dissociation));
	int id7 = int(complex_decay)*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay)) - (1-int(complex_decay));
	int id8 = int(X_decay)*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay)) - (1-int(X_decay));
	int id9 = int(Y_decay)*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay)) - (1-int(Y_decay));
	int id10 = passive_reporter*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + passive_reporter) - (1-passive_reporter);
	int id11 = passive_reporter*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + 2*passive_reporter) - (1-passive_reporter);
	int id12 = passive_reporter*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + 2*passive_reporter + int(actuation_through_X_and_Y)) 
																																											- (1-passive_reporter);
	int id13 = passive_reporter*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + (2+int(actuation_through_X_and_Y)+int(constitutive_z_birth))*passive_reporter) 
																																												- (1-passive_reporter);
	int id14 = int(constitutive_z_birth)*(4+int(actuation_through_X_and_Y) + int(complex_dissociation) + int(complex_decay) + int(X_decay) + int(Y_decay) + (2+int(actuation_through_X_and_Y)+int(constitutive_z_birth))*passive_reporter + int(constitutive_z_birth)) 
																																												- (1-int(constitutive_z_birth));
	int rxn_index[15] = {0,1,2,3,4,id5,id6,id7,id8,id9,id10,id11,id12,id13,id14};
 	
	// sample reaction time
	double rxn_time = -log(1 - rand_uni1)/rTot;
	
	// update total time spend in current state
	P_x_y_z[(*x)][(*y)][(*z)] += rxn_time;
	if (complex_dissociation || complex_decay){P_complex_x_y[(*xy)][(*x)][(*y)] += rxn_time;}
	if ((complex_dissociation || complex_decay)&&(passive_reporter == 1)){P_complex_pr_z[(*xy)][(*pr)][(*z)] += rxn_time;}
	if (complex_dissociation || complex_decay){P_complex_x_z[(*xy)][(*x)][(*z)] += rxn_time;}
	if (passive_reporter == 1){P_pr_x_y[(*pr)][(*x)][(*y)] += rxn_time;}
	if (passive_reporter == 1){P_pr_x_z[(*pr)][(*x)][(*z)] += rxn_time;}
	
	// choose and fire a reaction
	if (rand_uni2 < r_Xbirth/rTot)
	{
		(*x)++;
		rec_count_CL[rxn_index[0]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth)/rTot)
	{
		(*y)++;
		rec_count_CL[rxn_index[1]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1)/rTot)
	{
		(*z)++;
		rec_count_CL[rxn_index[2]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation)/rTot)
	{
		(*x)--;
		(*y)--;
		if (gamma > 0 || lambda > 0)
		{
			(*xy)++;
		}
		rec_count_CL[rxn_index[3]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay)/rTot)
	{
		(*z)--;
		rec_count_CL[rxn_index[4]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2)/rTot)
	{
		(*z)++;
		rec_count_CL[rxn_index[5]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation)/rTot)
	{
		(*xy)--;
		(*x)++;
		(*y)++;
		rec_count_CL[rxn_index[6]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay)/rTot)
	{
		(*xy)--;
		rec_count_CL[rxn_index[7]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay)/rTot)
	{
		(*x)--;
		rec_count_CL[rxn_index[8]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay)/rTot)
	{
		(*y)--;
		rec_count_CL[rxn_index[9]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_PRbirth1)/rTot)
	{
		(*pr)++;
		rec_count_CL[rxn_index[10]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_PRbirth1 + r_PRdecay)/rTot)
	{
		(*pr)--;
		rec_count_CL[rxn_index[11]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_PRbirth1 + r_PRdecay + r_PRbirth2)/rTot)
	{
		(*pr)++;
		rec_count_CL[rxn_index[12]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_PRbirth1 + r_PRdecay + r_PRbirth2 + r_PRbirth3)/rTot)
	{
		(*pr)++;
		rec_count_CL[rxn_index[13]]++; 
	}
	else if (rand_uni2 < (r_Xbirth + r_Ybirth + r_Zbirth1 + r_complex_formation + r_Zdecay + r_Zbirth2 + r_complex_dissociation + r_complex_decay + r_Xdecay + r_Ydecay + r_PRbirth1 + r_PRdecay + r_PRbirth2 + r_PRbirth3 + r_Zbirth3)/rTot)
	{
		(*z)++;
		rec_count_CL[rxn_index[14]]++; 
	}
	(*t) += rxn_time; // update system time
}