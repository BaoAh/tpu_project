#include <bits/stdc++.h>
#define endl '\n'

using namespace std;

int main() {
    float x;
    map<float, int> compress_map;
    float temp[6];
    int ans;
    for(int i=0 ; i<10; i++){
        for(int j=0 ; j<10 ; j++){
            cin >> x;
            temp[0] = abs(x+0.25);
            ans = 0;
            temp[1] = abs(x+0.5);
            if(temp[1] < temp[ans]) ans = 1;
            temp[2] = abs(x+1);
            if(temp[2] < temp[ans]) ans = 2;
            temp[3] = abs(x-0.25);
            if(temp[3] < temp[ans]) ans = 3;
            temp[4] = abs(x-0.5);
            if(temp[4] < temp[ans]) ans = 4;
            temp[5] = abs(x-1);
            if(temp[5] < temp[ans]) ans = 5;
        //    switch(ans){
        //         case 0 :
        //             cout << "-0.25" << endl;
        //             break;
        //         case 1 :
        //             cout << "-0.5" << endl;
        //             break;
        //         case 2 :
        //             cout << "-1" << endl;
        //             break;
        //         case 3 :
        //             cout << "0.25" << endl;
        //             break;
        //         case 4 :
        //             cout << "0.5" << endl;
        //             break;
        //         case 5 :
        //             cout << "1" << endl;
        //             break;
        //         default : break;
        //     }
            cout << ans << endl;
        }
    }


    // float max_key;
    // int max_value;
    // for (const auto& n : compress_map) {
    //     cout << n.first << ",  ";
    //     float a = n.first;
    //     int b = 4;
    //     if (a < 0) {
    //         cout << "1";
    //         a += 8;
    //     }
    //     else cout << "0";
    //     int c = int(a);
    //     float d = a - c;
    //     d *= 2;
    //     for (int j = 0; j < 3; j++) {
    //         cout << ((c & b) != 0);
    //         b = b >> 1;
    //     }
    //     for (int j = 0; j < 4; j++) {
    //         if (int(d) == 1) {
    //             cout << 1;
    //             d -= 1;
    //         }
    //         else cout << 0;
    //         d *= 2;
    //     }
    //     cout << ",    " << n.second << endl;
    // }

    return 0;
}