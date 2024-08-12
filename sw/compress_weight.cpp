#include <bits/stdc++.h>
using namespace std;

 const vector<string> split(const string &str, const char &delimiter) {
        vector<string> result;
        stringstream ss(str);
        string tok;
        while (getline(ss, tok, delimiter)) {
            result.push_back(tok);
        }
        return result;
    }

int main() {
    map<string, string> compress_map
    = { {"11110001", "0000"}, {"11110111", "0001"}, {"11111001", "0010"}, {"11111010", "0011"}, 
    {"11111011", "0100"}, {"11111101", "0101"}, {"11111110", "0110"}, {"11111111", "0111"}, 
    {"00000000", "1000"}, {"00000011", "1001"}, {"00000100", "1010"}, {"00001000", "1011"}, 
    {"00001011", "1100"}, {"00001101", "1101"}, {"00001111", "1110"}};
    
    string str;
    int sum = 0;
    for(int i=0 ; i<30; i++){
        cin >> str;
        vector<string> ret = split(str, '_');
        for (auto& s : ret) {
            if(compress_map.count(s) > 0){
               cout << "1" << compress_map[s];
               sum += 5;
            }else{
                cout << "0" << s;
                sum += 9;
            }
        }
    }
    cout << endl << sum << endl;
    return 0;
}