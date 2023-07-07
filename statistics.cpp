// statistics.cppp
#include <unordered_map>
#include <math.h>
#include <iostream>

#include "statistics.h" 

using namespace std;

void normalize_jointdistr(unordered_map<int, unordered_map<int, unordered_map<int, double> > > & prob_distr, double t)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	// normalize the joint probability distribution
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
                prob_distr[itr_1->first][itr_2->first][itr_3->first] = prob_distr[itr_1->first][itr_2->first][itr_3->first]/t;
            }
		}
	}
}

void normalize_4D_distr(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > &prob_distr, double t)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;

	// write distribution contained in unordered_map object to text file
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					prob_distr[itr_1->first][itr_2->first][itr_3->first][itr_4->first] 
					= prob_distr[itr_1->first][itr_2->first][itr_3->first][itr_4->first]/t;
				}
            }
		}
	}
}

void normalize_tissue_distr(unordered_map<int, unordered_map<int, double> > & prob_distr, double t)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, double> >:: iterator itr_1;
	unordered_map<int, double>:: iterator itr_2;
	
	// normalize the joint probability distribution
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			prob_distr[itr_1->first][itr_2->first] = prob_distr[itr_1->first][itr_2->first]/t;
		}
	}
}

double calculate_mean(unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double mean = 0; // variable to hold the value of the mean 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				mean += iterator_first_values[var_num-1]*itr_3->second;
			}
		}
	}
	return mean; 
}

double calculate_variance(double mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double variance = 0; // variable to hold the value of the variance 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				variance += (iterator_first_values[var_num-1] - mean)*(iterator_first_values[var_num-1] - mean)*itr_3->second;
			}
		}
	}
	return variance; 
}

double calculate_covariance(double mean1, double mean2, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double covariance = 0; // variable to hold the value of the covariance 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				covariance += (iterator_first_values[var_num1-1] - mean1)*(iterator_first_values[var_num2-1] - mean2)*itr_3->second;
			}
		}
	}
	return covariance; 
}

double calculate_mixed_variance(double mixed_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double mixed_variance = 0; // variable to hold the value of the mixed mean
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				mixed_variance += (iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*(iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*itr_3->second;
			}
		}
	}
	return mixed_variance;
}

double calculate_mixed_covariance(double mixed_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num1, int var_num2, int var_num3)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double mixed_covariance = 0; // variable to hold the value of the mixed mean
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				mixed_covariance += (iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*(iterator_first_values[var_num3-1] - other_mean)*itr_3->second;
			}
		}
	}
	return mixed_covariance;
}

double calculate_Hill_func_mean(unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double mean = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				if (iterator_first_values[var_num-1]>0)
				{
					val = max_rate*pow(iterator_first_values[var_num-1], hill_coeff )/
					(pow(half_max_val, hill_coeff) + pow(iterator_first_values[var_num-1], hill_coeff )); // Hill function 
				}
				else
				{
					if (hill_coeff < 0)
					{
						val = max_rate;
					}
					else
					{
						val = 0.0;
					}
				}
				mean += val*itr_3->second;
			}
		}
	}
	return mean;
}

double calculate_Hill_func_variance(double mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double variance = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				if (iterator_first_values[var_num-1]>0)
				{
					val = max_rate*pow(iterator_first_values[var_num-1], hill_coeff )/
					(pow(half_max_val, hill_coeff) + pow(iterator_first_values[var_num-1], hill_coeff )); // Hill function 
				}
				else
				{
					if (hill_coeff < 0)
					{
						val = max_rate;
					}
					else
					{
						val = 0.0;
					}
				}
				variance += (val - mean)*(val - mean)*itr_3->second;
			}
		}
	}
	return variance;
}

double calculate_Hill_func_covariance(double hill_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, double> > > prob_distr, 
								int hill_var_num, int other_var_num, double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_2;
	unordered_map<int, double>:: iterator itr_3;
	
	int* iterator_first_values = new int[3]; 
	double covariance = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
			for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
			{
				iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; 
				if (iterator_first_values[hill_var_num-1]>0)
				{
					val = max_rate*pow(iterator_first_values[hill_var_num-1], hill_coeff )/
					(pow(half_max_val, hill_coeff) + pow(iterator_first_values[hill_var_num-1], hill_coeff )); // Hill function 
				}
				else
				{
					if (hill_coeff < 0)
					{
						val = max_rate;
					}
					else
					{
						val = 0.0;
					}
				}
				covariance += (val - hill_mean)*(iterator_first_values[other_var_num-1] - other_mean)*itr_3->second;
			}
		}
	}
	return covariance;
}

double calculate_mean_4D(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[4]; 
	double mean = 0; // variable to hold the value of the mean 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; 
					iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					mean += iterator_first_values[var_num-1]*itr_4->second;
				}
			}
		}
	}
	return mean; 
}

double calculate_variance_4D(double mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double variance = 0; // variable to hold the value of the variance 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; 
					iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					variance += (iterator_first_values[var_num-1] - mean)*(iterator_first_values[var_num-1] - mean)*itr_4->second;
				}
			}
		}
	}
	return variance; 
}

double calculate_covariance_4D(double mean1, double mean2, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double covariance = 0; // variable to hold the value of the covariance 
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; 
					iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					covariance += (iterator_first_values[var_num1-1] - mean1)*(iterator_first_values[var_num2-1] - mean2)*itr_4->second;
				}
			}
		}
	}
	return covariance; 
}

double calculate_mixed_variance_4D(double mixed_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double mixed_variance = 0; // variable to hold the value of the mixed mean
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; 
					iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					mixed_variance += (iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*(iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*itr_4->second;
				}
			}
		}
	}
	return mixed_variance;
}

double calculate_mixed_covariance_4D(double mixed_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num1, int var_num2, int var_num3)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double mixed_covariance = 0; // variable to hold the value of the mixed mean
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; 
					iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					mixed_covariance += (iterator_first_values[var_num1-1]*iterator_first_values[var_num2-1] - mixed_mean)*(iterator_first_values[var_num3-1] - other_mean)*itr_4->second;
				}
			}
		}
	}
	return mixed_covariance;
}

double calculate_Hill_func_mean_4D(unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double mean = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first;
					if (iterator_first_values[var_num-1]>0)
					{
						val = max_rate*pow(iterator_first_values[var_num-1], hill_coeff )/
						(pow(half_max_val, hill_coeff) + pow(iterator_first_values[var_num-1], hill_coeff )); // Hill function 
					}
					else
					{
						if (hill_coeff < 0)
						{
							val = max_rate;
						}
						else
						{
							val = 0.0;
						}
					}
					mean += val*itr_4->second;
				}
			}
		}
	}
	return mean;
}

double calculate_Hill_func_variance_4D(double mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, int var_num, 
								double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double variance = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					if (iterator_first_values[var_num-1]>0)
					{
						val = max_rate*pow(iterator_first_values[var_num-1], hill_coeff )/
						(pow(half_max_val, hill_coeff) + pow(iterator_first_values[var_num-1], hill_coeff )); // Hill function 
					}
					else
					{
						if (hill_coeff < 0)
						{
							val = max_rate;
						}
						else
						{
							val = 0.0;
						}
					}
					variance += (val - mean)*(val - mean)*itr_4->second;
				}
			}
		}
	}
	return variance;
}

double calculate_Hill_func_covariance_4D(double hill_mean, double other_mean, unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > > prob_distr, 
								int hill_var_num, int other_var_num, double half_max_val, double max_rate, double hill_coeff)
{
	// unordered_map iterators for iterating through the joint distribution
	unordered_map<int, unordered_map<int, unordered_map<int, unordered_map<int, double> > > >:: iterator itr_1;
	unordered_map<int, unordered_map<int, unordered_map<int, double> > >:: iterator itr_2;
	unordered_map<int, unordered_map<int, double> >:: iterator itr_3;
	unordered_map<int, double>:: iterator itr_4;
	
	int* iterator_first_values = new int[3]; 
	double covariance = 0; // variable to hold the value of the mixed mean
	double val;
	for (itr_1 = prob_distr.begin(); itr_1 != prob_distr.end(); itr_1++)
	{
		for (itr_2 = itr_1->second.begin(); itr_2 != itr_1->second.end(); itr_2++)
		{
		    for (itr_3 = itr_2->second.begin(); itr_3 != itr_2->second.end(); itr_3++)
            {
				for (itr_4 = itr_3->second.begin(); itr_4 != itr_3->second.end(); itr_4++)
				{
					iterator_first_values[0] = itr_1->first; iterator_first_values[1] = itr_2->first; iterator_first_values[2] = itr_3->first; iterator_first_values[3] = itr_4->first; 
					if (iterator_first_values[hill_var_num-1]>0)
					{
						val = max_rate*pow(iterator_first_values[hill_var_num-1], hill_coeff )/
						(pow(half_max_val, hill_coeff) + pow(iterator_first_values[hill_var_num-1], hill_coeff )); // Hill function 
					}
					else
					{
						if (hill_coeff < 0)
						{
							val = max_rate;
						}
						else
						{
							val = 0.0;
						}
					}
					covariance += (val - hill_mean)*(iterator_first_values[other_var_num-1] - other_mean)*itr_4->second;
				}
			}
		}
	}
	return covariance;
}
