#include <iostream>
#include <fstream>
using namespace std;

int main(){
    std::ofstream outputFile("../sim/matrix_b.bin");
    int a[10][10];
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            cin >> a[i][j];
        }
    }

    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 4; j++) {
            switch(a[i][j]){
                case 0 :
                    outputFile << "100" ;
                    break;
                case 1:
                    outputFile << "101";
                    break;
                case 2 :
                    outputFile << "110" ;
                    break;
                case 3 :
                    outputFile << "000" ;
                    break;
                case 4 :
                    outputFile << "001" ;
                    break;
                case 5 :
                    outputFile << "010" ;
                    break;
                default : break;
            }
            if (j != 3)
                outputFile << "_";
        }
        outputFile << endl;

    }

    for (int i = 0; i < 10; i++) {
        for (int j = 4; j < 8; j++) {
            switch(a[i][j]){
                case 0 :
                    outputFile << "100" ;
                    break;
                case 1:
                    outputFile << "101";
                    break;
                case 2 :
                    outputFile << "110" ;
                    break;
                case 3 :
                    outputFile << "000" ;
                    break;
                case 4 :
                    outputFile << "001" ;
                    break;
                case 5 :
                    outputFile << "010" ;
                    break;
                default : break;
            }
            if (j != 7)
                outputFile <<  "_";
        }
        outputFile <<  endl;
    }

    for (int i = 0; i < 10; i++) {
        for (int j = 8; j < 10; j++) {
            switch(a[i][j]){
                case 0 :
                    outputFile << "100" ;
                    break;
                case 1:
                    outputFile << "101";
                    break;
                case 2 :
                    outputFile << "110" ;
                    break;
                case 3 :
                    outputFile << "000" ;
                    break;
                case 4 :
                    outputFile << "001" ;
                    break;
                case 5 :
                    outputFile << "010" ;
                    break;
                default : break;
            }
            if (j == 8)
                outputFile <<  "_";
            else {
                outputFile << "_011_011";
            }
        }
        outputFile <<  endl;
    }

    outputFile.close();
    return 0;
}