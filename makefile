# makefile

CXX=g++
CXXFlags=-std=c++11 -O3

all: AIF_three_components AIF_four_components

AIF_three_components: AIF_three_components_Gillespie_iteration.o statistics.o data_to_file.o AIF_three_components.o
	${CXX} ${CXXFlags} AIF_three_components_Gillespie_iteration.o statistics.o data_to_file.o AIF_three_components.o -o AIF_three_components

AIF_four_components: AIF_four_components_Gillespie_iteration.o statistics.o data_to_file.o AIF_four_components.o
	${CXX} ${CXXFlags} AIF_four_components_Gillespie_iteration.o statistics.o data_to_file.o AIF_four_components.o -o AIF_four_components

AIF_three_components.o: AIF_three_components.cpp AIF_three_components_Gillespie_iteration.h statistics.h data_to_file.h 
	${CXX} ${CXXFlags} AIF_three_components.cpp -c -o AIF_three_components.o
	
AIF_four_components.o: AIF_four_components.cpp AIF_four_components_Gillespie_iteration.h statistics.h data_to_file.h 
	${CXX} ${CXXFlags} AIF_four_components.cpp -c -o AIF_four_components.o
	
AIF_three_components_Gillespie_iteration.o: AIF_three_components_Gillespie_iteration.cpp AIF_three_components_Gillespie_iteration.h
	${CXX} ${CXXFlags} AIF_three_components_Gillespie_iteration.cpp -c -o AIF_three_components_Gillespie_iteration.o
	
AIF_four_components_Gillespie_iteration.o: AIF_four_components_Gillespie_iteration.cpp AIF_four_components_Gillespie_iteration.h
	${CXX} ${CXXFlags} AIF_four_components_Gillespie_iteration.cpp -c -o AIF_four_components_Gillespie_iteration.o
	
statistics.o: statistics.cpp statistics.h
	${CXX} ${CXXFlags} statistics.cpp -c -o statistics.o
	
data_to_file.o: data_to_file.cpp data_to_file.h
	${CXX} ${CXXFlags} data_to_file.cpp -c -o data_to_file.o
	
clean:
	rm -f AIF_three_components.o AIF_four_components.o AIF_three_components_Gillespie_iteration.o AIF_four_components_Gillespie_iteration.o statistics.o data_to_file.o