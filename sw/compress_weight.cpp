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
    string weight[31];
    string number[31];
    map<string, string> compress_map;
    map<string, int> compress_length;
    for(int i=0; i<28; i++){
        cin >> weight[i];
    }
    char temp[35];
    int j;
    for(int i=0; i<28; i++){
        for(j=0; j<i ; j++){
            temp[j] = '1';
        }
        if(i<27)
            temp[j++] = '0';
        temp[j] = '\0';
        number[i] = temp;
    }
    for(int i=0; i<28; i++){
        int t_length;
        if(i<27) t_length = i+1;
        else t_length = 27;
        compress_map[weight[i]] = number[i] ;
        compress_length[weight[i]] = t_length;
    }
    string str;
    int sum = 0;
    for(int i=0 ; i<30; i++){
        cin >> str;
        vector<string> ret = split(str, '_');
        for (auto& s : ret) {
            cout << compress_map[s] ;
            sum += compress_length[s];
        }
    }
    cout << endl << sum << endl;
    return 0;
}