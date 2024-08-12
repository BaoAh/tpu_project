#include <iostream>
#include <fstream>
using namespace std;

int main(){
    std::ofstream outputFile("../sim/golden.bin");
    float a[10];
    for (int i = 0; i < 10; i++) {
        cin >> a[i];
    }

    for (int i = 0; i < 10; i++) {
        int b = 4;
        if (a[i] < 0) {
            outputFile << "1";
            a[i] += 8;
        }
        else outputFile << "0";
        int c = int(a[i]);
        float d = a[i] - c;
        d *= 2;
        for (int j = 0; j < 3; j++) {
            outputFile << ((c & b) != 0);
            b = b >> 1;
        }
        for (int j = 0; j < 4; j++) {
            if (int(d) == 1) {
                outputFile << 1;
                d -= 1;
            }
            else outputFile << 0;
            d *= 2;
        }
        if (i != 3 && i != 7)
            outputFile << "_";
        if (i == 3 || i == 7)
            outputFile << endl;
    }

    outputFile << "00000000_00000000";
    outputFile <<  endl;

    outputFile.close();
    return 0;
}