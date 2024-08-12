#include <iostream>
#include <fstream>
using namespace std;

int main(){
     std::ofstream outputFile("../sim/matrix_a.bin");
    for (int i = 0; i < 10; i++) {
        float a;
        int b = 4;

        cin >> a;
        if (a < 0) {
            outputFile << "1";
            a += 8;
        }
        else outputFile << "0";
        int c = int(a);
        cout << "c " << c << endl; 
        float d = a - c;
        d *= 2;
        for (int j = 0; j < 3; j++) {
            outputFile << ((c & b) != 0);
            b = b >> 1;
        }
        for (int j = 0; j < 4; j++) {
            cout << "d " << d << endl;
            if (int(d) == 1) {
                outputFile << 1;
                d -= 1;
            }
            else outputFile << 0;
            d *= 2;
        }
        outputFile << "_00000000_00000000_00000000" << endl;
    }
    outputFile.close();
    return 0;
}