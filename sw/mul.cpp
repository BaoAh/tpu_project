#include <iostream>
using namespace std;

int main(){
    double a[10];
    double b[10][10];
    for(int i=0 ; i<10; i++){
        cin >> a[i];
    }
    for(int i=0 ; i<10; i++){
        for(int j=0 ; j<10; j++){
            cin >> b[i][j];
        }
    }
    double sum = 0;
    for(int i=0 ; i<10; i++){
        for(int j=0 ; j<10; j++){
            sum += a[j] * b[j][i];
        }
        cout << sum << endl;
        sum = 0;
    }
    cout << sum;
    return 0;
}