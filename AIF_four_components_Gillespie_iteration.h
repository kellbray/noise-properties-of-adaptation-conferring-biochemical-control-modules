// file: AIF_four_components_Gillespie_iteration.h
#ifndef AIF_four_COMPONENTS_GILLESPIE_ITERATION_H
#define AIF_four_COMPONENTS_GILLESPIE_ITERATION_H

#ifndef UNORDERED_MAP_H
#include <unordered_map> 
#define UNORDERED_MAP_H
#endif

#ifndef MATH_H
#include <math.h> 
#define MATH_H
#endif

using namespace std;

// function: closed_loop_iteration
// purpose: perform single Gillespie iteration for four component AIF system, possibly with some interesting modifications. 
// inputs:
//		P_x_y_w : an unordered map containing the joint probability distribution for the components x, y, w
//		P_x_y_z : an unordered map containing the joint probability distribution for the components x, y, z
//		P_x_w_z : an unordered map containing the joint probability distribution for the components x, w, z
//		P_w_complex_x_y : an unordered map containing the joint probability distribution for the components w, complex (xy), x, y 
//		P_w_complex_pr_y : an unordered map containing the joint probability distribution for the components w, complex (xy), pr, y 
//		P_w_complex_x_z : an unordered map containing the joint probability distribution for the components w, complex (xy), x, z 
//		P_w_pr_x_y : an unordered map containing the joint probability distribution for the components w, pr, x, y 
//		P_w_pr_x_z : an unordered map containing the joint probability distribution for the components w, pr, x, z 
//		w : pointer to the int variable tracking the abundance of W
//		x : pointer to the int variable tracking the abundance of X 
//		y : pointer to the int variable tracking the abundance of Y 
//		z : pointer to the int variable tracking the abundance of Z 
//		xy : pointer to the int variable tracking the abundance of XY (the complex)
//		pr : pointer to the int variable tracking the abundance of the passive reporter "PR"
// 		t : pointer to the double variable tracking the system time
//		phi : translation rate
//		beta_w : W degradation rate
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
//		V_y : max rate for saturating actuation reaction rate V_y*y^n/(A_y^n_y + y^n_y) (when enabled) -- activating actuation through Y
//		n_y : Hill coefficient for saturating actuation reaction via Y (when enabled)
// 		A_y : half max value of Y abundance for saturating actuation reaction via Y (when enabled)
//		V_x : max rate for saturating actuation reaction rate V_x*x^n/(A_x^n_x + x^n_x) (when enabled) -- inhibiting actuation through X
//		n_x : Hill coefficient for saturating actuation reaction via X (when enabled)
// 		A_x : half max value of Y abundance for saturating actuation reaction via X (when enabled)
//		rec_count_CL : pointer to the first element of the array of reaction counts (number of time each reaction has fired)
// 		rand_uni1 : a random number sampled from a uniform distribution on the unit interval
// 		rand_uni2 : another random number sampled from a uniform distribution on the unit interval
//		passive_reporter : the flag to indicate whether we are considering a passive reporter (1 = yes, 0 = no)
void closed_loop_iteration(unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_x_y_w, 
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_x_y_z, 
							unordered_map<int, unordered_map<int, unordered_map<int, double> > > & P_x_w_z, 
							unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > & P_w_complex_x_y,
							unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > & P_w_complex_pr_z,
							unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > & P_w_complex_x_z,
							unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > & P_w_pr_x_y,
							unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > & P_w_pr_x_z,
							unsigned int* w, unsigned int* x, unsigned int* y, unsigned int* z, unsigned int* xy, unsigned int* pr, double* t,
							double phi, double beta_w, 
							double theta, double mu, double k, double alpha, double C, double beta_x, double beta_y, double beta_z, 
							double lambda, double gamma, double V_y, double n_y, double A_y, double V_x, double n_x, double A_x,
							double *rec_count_CL, double rand_uni1, double rand_uni2, int passive_reporter);
#endif