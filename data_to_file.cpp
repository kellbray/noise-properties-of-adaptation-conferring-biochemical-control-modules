// data_to_file.cpp
#include <iostream>
#include <fstream>
#include <ctime>
#include <string>
#include <vector>

#include "data_to_file.h"

using namespace std;

void write_array(const double* arr, int arr_size, string fname)
{
	// generate file
	ofstream outfile; // define output file stream
	outfile.open(fname, ios::app | ios::binary); // open binary file for appending
	// write double array data to file
	for (int i = 0; i < arr_size; i++)
	{
		outfile.write((char *) &arr[i], sizeof(double));
	}
	outfile.close(); // close file stream
}