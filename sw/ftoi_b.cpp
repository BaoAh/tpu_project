#include <iostream>
#include <fstream>
using namespace std;

int main(){
    std::ofstream outputFile("../sim/matrix_b.bin");
    float a[10][10];
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            cin >> a[i][j];
        }
    }

    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 4; j++) {
            int b = 4;
            if (a[i][j] < 0) {
                outputFile << "1";
                a[i][j] += 8;
            }
            else outputFile << "0";
            int c = int(a[i][j]);
            float d = a[i][j] - c;
            d *= 2;
            for (int k = 0; k < 3; k++) {
                outputFile << ((c & b) != 0);
                b = b >> 1;
            }
            for (int k = 0; k < 4; k++) {
                if (int(d) == 1) {
                    outputFile << 1;
                    d -= 1;
                }
                else outputFile << 0;
                d *= 2;
            }
            if (j != 3)
                outputFile << "_";
        }
        outputFile << endl;

    }

    for (int i = 0; i < 10; i++) {
        for (int j = 4; j < 8; j++) {
            int b = 4;
            if (a[i][j] < 0) {
                outputFile << "1";
                a[i][j] += 8;
            }
            else outputFile << "0";
            int c = int(a[i][j]);
            float d = a[i][j] - c;
            d *= 2;
            for (int k = 0; k < 3; k++) {
                outputFile << ((c & b) != 0);
                b = b >> 1;
            }
            for (int k = 0; k < 4; k++) {
                if (int(d) == 1) {
                    outputFile << 1;
                    d -= 1;
                }
                else outputFile << 0;
                d *= 2;
            }
            if (j != 7)
                outputFile <<  "_";
        }
        outputFile <<  endl;
    }

    for (int i = 0; i < 10; i++) {
        for (int j = 8; j < 10; j++) {
            int b = 4;
            if (a[i][j] < 0) {
                outputFile << "1";
                a[i][j] += 8;
            }
            else outputFile << "0";
            int c = int(a[i][j]);
            float d = a[i][j] - c;
            d *= 2;
            for (int k = 0; k < 3; k++) {
                outputFile << ((c & b) != 0);
                b = b >> 1;
            }
            for (int k = 0; k < 4; k++) {
                if (int(d) == 1) {
                    outputFile << 1;
                    d -= 1;
                }
                else outputFile << 0;
                d *= 2;
            }
            if (j == 8)
                outputFile <<  "_";
            else {
                outputFile << "_00000000_00000000";
            }
        }
        outputFile <<  endl;
    }

    outputFile.close();
    return 0;
}