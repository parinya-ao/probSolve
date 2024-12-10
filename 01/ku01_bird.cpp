/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-10 18:42
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

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)
template <typename T>
void _print(T t)
{
  print(t);
  cerr << "]\n";
}
template <typename T, typename... V>
void _print(T t, V... v)
{
  print(t);
  cerr << ", ";
  _print(v...);
}

signed main()
{
  fastio;
  int n;
  cin >> n;
  vector<int> vec;
  int num;
  while (n--)
  {
    cin >> num;
    vec.emplace_back(num);
  }
  int iCOUNT = 0;
  for (int i = 0; i < vec.size(); ++i)
  {
    // first index right check
    if (i - 1 < 0 && i + 1 > vec.size() - 1)
    {
      iCOUNT++;
    }
    else if (i - 1 < 0 && vec[i + 1] < vec[i])
    {
      iCOUNT++;
    }
    // สุดท้าย
    else if (i + 1 > vec.size() - 1)
    {
      if (vec[i - 1] < vec[i])
        iCOUNT++;
    }
    else
    {
      if (vec[i - 1] < vec[i] && vec[i + 1] < vec[i])
      {
        iCOUNT++;
      }
    }
  }
  cout << iCOUNT;

  return 0;
}