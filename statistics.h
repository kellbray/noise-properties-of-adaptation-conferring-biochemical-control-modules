// statistics.h
#ifndef STATISTICS_H
#define STATISTICS_H

#ifndef UNORDERED_MAP_H
#include <unordered_map>
#define UNORDERED_MAP_H
#endif

#ifndef MATH_H
#include <math.h>
#define MATH_H
#endif

using namespace std;

// function: normalize_single_cell_distr
// purpose: Normalize 3D joint probability distribution contained in an unordered map.
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		t : total system time, used as a normalization factor (prevents having to loop through the distribution twice)
void normalize_jointdistr(unordered_map<int, unordered_map<int, unordered_map<int, double> > > & prob_distr, double t);

// function: normalize_single_cell_distr
// purpose: Normalize 4D joint probability distribution contained in an unordered map.
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		t : total system time, used as a normalization factor (prevents having to loop through the distribution twice)
void normalize_4D_distr(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > &prob_distr, double t);

// function: normalize_tissue_distr
// purpose: Normalize 2D joint probability distribution contained in an unordered map.
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		t : total system time, used as a normalization factor (prevents having to loop through the distribution twice)
void normalize_tissue_distr(unordered_map<int, unordered_map<int, double> > & prob_distr, double t);

// function: calculate_mean
// purpose: Calculate mean of a particular variable. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num : the order in which the variable of interest appears in the unordered map heirachy -- e.g., if prob_distr is P_x_y_z and you want to calculate <x>, then var_num = 1
double calculate_mean(unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num);

// function: calculate_variance
// purpose: Calculate variance of a particular variable. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num : the order in which the variable of interest appears in the unordered map heirachy
double calculate_variance(double mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num);

// function: calculate_covariance
// purpose: Calculate variance of a particular variable. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num1 : the order in which the first variable of interest appears in the unordered map heirachy
//		var_num2 : the order in which the second variable of interest appears in the unordered map heirachy
double calculate_covariance(double mean1, double mean2, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2);

// function: calculate_mixed_variance
// purpose: Calculate variance of the form Var(a*b), where a,b are random numbers on some probability space. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num1 : the order in which the first variable of interest appears in the unordered map heirachy
//		var_num2 : the order in which the second variable of interest appears in the unordered map heirachy
double calculate_mixed_variance(double mixed_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2);

// function: calculate_mixed_covariance
// purpose: Calculate covariance of the form Cov(a*b,c), where a,b,c are random numbers on some probability space. a,b,c need not be distinct. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num1 : the order in which the first variable of interest (i.e., "a") appears in the unordered map heirachy 
//		var_num2 : the order in which the second variable of interest (i.e., "b") appears in the unordered map heirachy
//		var_num2 : the order in which the second variable of interest (i.e., "c") appears in the unordered map heirachy
double calculate_mixed_covariance(double mixed_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2, int var_num3);

// function: calculate_Hill_func_mean
// purpose: Calculate the mean of a Hill function of some component. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num : the order in which the variable of interest appears in the unordered map heirachy. E.g.., if prob_distr is P_x_y_z and the Hill function is f(z) then var_num = 3
//		half_max_val : the half max value of the Hill function
//		max_rate : the maximal value of the Hill function
// 		hill_coeff : the Hill coefficient
double calculate_Hill_func_mean(unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff);

// function: calculate_Hill_func_variance
// purpose: Calculate the variance of a Hill function of some component. 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		var_num : the order in which the variable of interest appears in the unordered map heirachy. E.g.., if prob_distr is P_x_y_z and the Hill function is f(z) then var_num = 3
//		half_max_val : the half max value of the Hill function
//		max_rate : the maximal value of the Hill function
// 		hill_coeff : the Hill coefficient					
double calculate_Hill_func_variance(double mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num, 
									double half_max_val, double max_rate, double hill_coeff);

// function: calculate_Hill_func_covariance
// purpose: Calculate the covariance between a Hill function of some component and some other component (not necessarily distinct). 
// inputs:
//		prob_distr : unordered map for containing the joint distribution
//		hill_var_num : the order in which the variable that the Hill function depends on appears in the unordered map heirachy. E.g.., if prob_distr is P_x_y_z and the Hill function is f(z) then hill_var_num = 3
//		other_var_num : the order in which the other variable appears in the unordered map heirachy. E.g., if prob_distr is P_x_y_z and you want Cov(f(z), x) then other_var_num = 1
//		half_max_val : the half max value of the Hill function
//		max_rate : the maximal value of the Hill function
// 		hill_coeff : the Hill coefficient								
double calculate_Hill_func_covariance(double hill_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, 
								int hill_var_num, int other_var_num, double half_max_val, double max_rate, double hill_coeff);

// the following are analogous to the functions above without _4D at the end.. they just take a distribution P(w,x,y,z) instead of P(x,y,z)
double calculate_mean_4D(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num);
double calculate_variance_4D(double mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num);
double calculate_covariance_4D(double mean1, double mean2, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2);
double calculate_mixed_variance_4D(double mixed_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2);
double calculate_mixed_covariance_4D(double mixed_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2, int var_num3);
double calculate_Hill_func_mean_4D(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff);
double calculate_Hill_func_variance_4D(double mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff);
double calculate_Hill_func_covariance_4D(double hill_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, 
								int hill_var_num, int other_var_num, double half_max_val, double max_rate, double hill_coeff);

#endif