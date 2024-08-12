#include <bits/stdc++.h>
#define endl '\n'
using namespace std;

long long count_w=0;
//int counter = 0; //dictionary_base
int counter = 1; //huffman
map<float, long long> compress_map;

bool cmp(pair<float, long long>& a, 
        pair<float, long long>& b) 
{ 
    return a.second > b.second; 
} 
 
void sort_v(map<float, long long>& M) 
{ 
 
    vector<pair<float, long long> > A; 
 
    for (auto& it : M) { 
        A.push_back(it); 
    } 
 
    sort(A.begin(), A.end(), cmp); 
     for (auto& it : A){
        //if(counter < 15){ //dictionary_base
        if(counter < 6){
            cout << "counter" << counter << " key: " << it.first << " value: " << it.second << "\n";
            //count_w += it.second; //dictionary_base
            count_w += it.second * counter; //huffman
            counter ++;
        }
        else{
            //huffman
            count_w += it.second * counter; //huffman
            cout << "counter" << counter << " key: " << it.first << " value: " << it.second << "\n";
        }
    }
    //cout << A.size() << endl;
    count_w += 3136; //if need padding 0
    cout << count_w << endl;

} 

int main(){
    float x;
    while(cin >> x){
        if(compress_map.count(x) > 0){
            compress_map[x] ++ ;
        }else{
            compress_map[x] = 1 ;
        }
    }
     sort_v(compress_map);
    return 0;
}