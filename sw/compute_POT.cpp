#include <bits/stdc++.h>
#define endl '\n'

using namespace std;

int main() {
    float x;
    map<float, int> compress_map;
    float temp[14];
    int ans;
    for(int i=0 ; i<10; i++){
        for(int j=0 ; j<10 ; j++){
            cin >> x;
            temp[0] = abs(x+0.0625);
            ans = 0;
            temp[1] = abs(x+0.125);
            if(temp[1] < temp[ans]) ans = 1;
            temp[2] = abs(x+0.25);
            if(temp[2] < temp[ans]) ans = 2;
            temp[3] = abs(x+0.5);
            if(temp[3] < temp[ans]) ans = 3;
            temp[4] = abs(x+1);
            if(temp[4] < temp[ans]) ans = 4;
            temp[5] = abs(x+2);
            if(temp[5] < temp[ans]) ans = 5;
            temp[6] = abs(x+4);
            if(temp[6] < temp[ans]) ans = 6;
            temp[7] = abs(x-0.0625);
            if(temp[7] < temp[ans]) ans = 7;
            temp[8] = abs(x-0.125);
            if(temp[8] < temp[ans]) ans = 8;
            temp[9] = abs(x-0.25);
            if(temp[9] < temp[ans]) ans = 9;
            temp[10] = abs(x-0.5);
            if(temp[10] < temp[ans]) ans = 10;
            temp[11] = abs(x-1);
            if(temp[11] < temp[ans]) ans = 11;
            temp[12] = abs(x-2);
            if(temp[12] < temp[ans]) ans = 12;
            temp[13] = abs(x-4);
            if(temp[13] < temp[ans]) ans = 13;
        //    switch(ans){
        //         case 0 :
        //             cout << "-0.0625" << endl;
        //             break;
        //         case 1 :
        //             cout << "-0.125" << endl;
        //             break;
        //         case 2 :
        //             cout << "-0.25" << endl;
        //             break;
        //         case 3 :
        //             cout << "-0.5" << endl;
        //             break;
        //         case 4 :
        //             cout << "-1" << endl;
        //             break;
        //         case 5 :
        //             cout << "-2" << endl;
        //             break;
        //         case 6 :
        //             cout << "-4" << endl;
        //             break;
        //         case 7 :
        //             cout << "0.0625" << endl;
        //             break;
        //         case 8 :
        //             cout << "0.125" << endl;
        //             break;
        //         case 9 :
        //             cout << "0.25" << endl;
        //             break;
        //         case 10 :
        //             cout << "0.5" << endl;
        //             break;
        //         case 11 :
        //             cout << "1" << endl;
        //             break;
        //         case 12 :
        //             cout << "2" << endl;
        //             break;
        //         case 13 :
        //             cout << "4" << endl;
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