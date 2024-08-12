#include <iostream>
#include <map>

using namespace std;

int main() {
    float x;
    map<float, int> compress_map;
    for(int i=0 ; i<10; i++){
        for(int j=0 ; j<10 ; j++){
            cin >> x;
            if(compress_map.count(x) > 0){
                compress_map[x] ++ ;
            }else{
                compress_map[x] = 1 ;
            }
        }
    }
    float max_key;
    int max_value;
    for (const auto& n : compress_map) {
        // cout << "key: " << n.first << " value: " << n.second << "\n";
        cout << n.first << ",  ";
        float a = n.first;
        int b = 4;
        if (a < 0) {
            cout << "1";
            a += 8;
        }
        else cout << "0";
        int c = int(a);
        float d = a - c;
        d *= 2;
        for (int j = 0; j < 3; j++) {
            cout << ((c & b) != 0);
            b = b >> 1;
        }
        for (int j = 0; j < 4; j++) {
            if (int(d) == 1) {
                cout << 1;
                d -= 1;
            }
            else cout << 0;
            d *= 2;
        }
        cout << ",    " << n.second << endl;
    }

    return 0;
}