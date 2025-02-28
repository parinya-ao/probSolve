/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-11 08:00
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
  int n, k;
  cin >> n >> k;
  vector<int> vec(n);
  for (auto &i : vec)
  {
    cin >> i;
  }

  int num;
  while (k--)
  {
    cin >> num;
    int left = 0, right = 0, SUM = 0, MAX = 0;
    for (right = 0; right < n; ++right)
    {
      SUM += vec[right];
      while (left <= right && SUM > num)
      {
        SUM -= vec[left];
        left++;
      }
      MAX = max(right - left + 1, MAX);
    }
    cout << MAX << "\n";
  }

  return 0;
}