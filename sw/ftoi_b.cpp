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
                    outputFile << "1000" ;
                    break;
                case 1:
                    outputFile << "1001";
                    break;
                case 2 :
                    outputFile << "1010" ;
                    break;
                case 3 :
                    outputFile << "1011" ;
                    break;
                case 4 :
                    outputFile << "1100" ;
                    break;
                case 5 :
                    outputFile << "1101" ;
                    break;
                case 6 :
                    outputFile << "1110" ;
                    break;
                 case 7 :
                    outputFile << "0000" ;
                    break;
                case 8:
                    outputFile << "0001";
                    break;
                case 9 :
                    outputFile << "0010" ;
                    break;
                case 10 :
                    outputFile << "0011";
                    break;
                case 11 :
                    outputFile << "0100" ;
                    break;
                case 12 :
                    outputFile << "0101" ;
                    break;
                case 13 :
                    outputFile << "0110" ;
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
                    outputFile << "1000" ;
                    break;
                case 1:
                    outputFile << "1001";
                    break;
                case 2 :
                    outputFile << "1010" ;
                    break;
                case 3 :
                    outputFile << "1011" ;
                    break;
                case 4 :
                    outputFile << "1100" ;
                    break;
                case 5 :
                    outputFile << "1101" ;
                    break;
                case 6 :
                    outputFile << "1110" ;
                    break;
                 case 7 :
                    outputFile << "0000" ;
                    break;
                case 8:
                    outputFile << "0001";
                    break;
                case 9 :
                    outputFile << "0010" ;
                    break;
                case 10 :
                    outputFile << "0011";
                    break;
                case 11 :
                    outputFile << "0100" ;
                    break;
                case 12 :
                    outputFile << "0101" ;
                    break;
                case 13 :
                    outputFile << "0110" ;
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
                    outputFile << "1000" ;
                    break;
                case 1:
                    outputFile << "1001";
                    break;
                case 2 :
                    outputFile << "1010" ;
                    break;
                case 3 :
                    outputFile << "1011" ;
                    break;
                case 4 :
                    outputFile << "1100" ;
                    break;
                case 5 :
                    outputFile << "1101" ;
                    break;
                case 6 :
                    outputFile << "1110" ;
                    break;
                 case 7 :
                    outputFile << "0000" ;
                    break;
                case 8:
                    outputFile << "0001";
                    break;
                case 9 :
                    outputFile << "0010" ;
                    break;
                case 10 :
                    outputFile << "0011";
                    break;
                case 11 :
                    outputFile << "0100" ;
                    break;
                case 12 :
                    outputFile << "0101" ;
                    break;
                case 13 :
                    outputFile << "0110" ;
                    break;
                default : break;
            }
            if (j == 8)
                outputFile <<  "_";
            else {
                outputFile << "_0111_0111";
            }
        }
        outputFile <<  endl;
    }

    outputFile.close();
    return 0;
}