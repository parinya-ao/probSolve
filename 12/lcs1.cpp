/**
 *  Author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define INF LLONG_MAX
#define MAX_N 10010
void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

void print(int x) { cerr << x; }
void print(long x) { cerr << x; }
void print(unsigned x) { cerr << x; }
void print(unsigned long x) { cerr << x; }
void print(unsigned long long x) { cerr << x; }
void print(float x) { cerr << x; }
void print(double x) { cerr << x; }
void print(long double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const char *x) { cerr << '"' << x << '"'; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << "[";
  for (auto &i : x)
  {
    if (f++)
      cerr << ", ";
    print(i);
  }
  cerr << "]";
}
#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)

// geek for geek
// https://www.geeksforgeks.org/longest-common-subsequence-dp-4/
int solve(string &string1, string &string2, int m, int n, vector<vector<int>> &memo)
{
  if (m == 0 || n == 0)
  {
    return 0;
  }
  if (memo[m][n] != -1)
  {
    return memo[m][n];
  }
  if (string1[m - 1] == string2[n - 1])
  {
    return memo[m][n] = 1 + solve(string1, string2, m - 1, n - 1, memo);
  }
  else
  {
    return memo[m][n] = max(solve(string1, string2, m, n - 1, memo), solve(string1, string2, m - 1, n, memo));
  }
}

signed main()
{
  fastio;
  string string1, string2;
  cin >> string1;
  cin >> string2;

  vector<vector<int>> memo(1 + string1.size(), vector<int>(1 + string2.length(), -1));

  cout << solve(string1, string2, string1.size(), string2.size(), memo);

  return 0;
}