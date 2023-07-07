// data_to_file.h
#ifndef DATA_TO_FILE_H
#define DATA_TO_FILE_H

#ifndef IOSTREAM_H
#include <iostream>
#define IOSTREAM_H
#endif

#ifndef FSTREAM_H
#include <fstream>
#define FSTREAM_H
#endif

#ifndef CTIME_H
#include <ctime>
#define CTIME_H
#endif

#ifndef STRING_H
#include <string>
#define STRING_H
#endif

#ifndef VECTOR_H
#include <vector>
#define VECTOR_H
#endif

using namespace std;

// function: write_array
// purpose: Writes an array of doubles to a binary file. 
// inputs:
//		arr : pointer to the first element of the array which you wish to write to file
//		arr_size : number of elements in arr
//		fname : the filename to be generated (should have extension .bin since we are writing a binary file) 	
void write_array(const double* arr, int arr_size, string fname);

#endif