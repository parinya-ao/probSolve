/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-10 17:48
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define pb push_back
#define mp make_pair
#define ff first
#define ss second

const int MOD = 1e9 + 7;
const int INF = 1e18;

void print(int x) { cerr << x; }
void print(double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &x)
{
  cerr << '{';
  print(x.first);
  cerr << ',';
  print(x.second);
  cerr << '}';
}
template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << '{';
  for (auto &i : x)
    cerr << (f++ ? "," : ""), print(i);
  cerr << "}";
}

signed main()
{
  fastio;
  // ซื้อหนังสือที่ติดกันใช้ slideing windows
  // ซื้อได้สูงสุดกี่เล่ม
  int n = 0, k = 0, i = 0, j = 0;
  cin >> n >> k;
  vector<int> vec(n, 0);
  int num;
  // จำนวนหนังสือที่ซื้อได้
  for (i; i < n; ++i)
  {
    cin >> num;
    vec[i] = num;
  }
  // print ราคาจำนวนหนังสือ
  // print(vec);

  while (k--)
  {
    // num = เงินของลูกค้า
    cin >> num;
    int l = 0, r = 0;
    int SUM = 0;
    int MAX = 0;
    for (r = 0; r < n; ++r)
    {
      SUM += vec[r];
      while (SUM > num && l <= r)
      {
        // ถ้าเกิดลบตัวซ้ายออก
        SUM -= vec[l];
        ++l;
      }
      MAX = max(MAX, r - l + 1);
    }
    cout << MAX << "\n";
  }

  return 0;
}