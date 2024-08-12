#include <iostream>
#include <map>
#include <vector>
#include <algorithm>

using namespace std;

bool cmp(pair<float, int>& a, 
        pair<float, int>& b) 
{ 
    return a.second > b.second; 
} 
 
void sort_v(map<float, int>& M) 
{ 
 
    vector<pair<float, int> > A; 
 
    for (auto& it : M) { 
        A.push_back(it); 
    } 
 
    sort(A.begin(), A.end(), cmp); 

    for (auto& it : A) { 

        float a = it.first;
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
    } 
 
} 

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
    sort_v(compress_map);
    return 0;
}