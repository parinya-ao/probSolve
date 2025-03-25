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
#define INF 1e9
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

/*
idea คือ precalculate ทั้งแนวตั้งและแนวนอนมาแล้ว
หลังจากนั้นใช้ math now *((row + col) - 2) ลบตัวเองทั้งแนวตั้งแนวนอน
 */

// using 1 base index
int n, m;

signed main()
{
  fastio;
  cin >> n >> m;
  // init
  vector<int> row_sum(n + 1, 0);
  vector<int> col_sum(m + 1, 0);
  vector<vector<int>> dp(n + 1, vector<int>(m + 1, 0));
  for (int i = 1; i <= n; i++)
  {
    for (int j = 1; j <= m; j++)
    {
      cin >> dp[i][j];
    }
  }
  // end zone init

  // solve zone
  // prerow_sum
  for (int i = 1; i <= n; i++)
  {
    for (int j = 1; j <= m; j++)
    {
      row_sum[i] += dp[i][j];
    }
  }
  // pre col _sum
  for (int j = 1; j <= m; j++)
  {
    for (int i = 1; i <= n; i++)
    {
      col_sum[j] += dp[i][j];
    }
  }
  // print(col_sum);
  // print(row_sum);

  // end precalculate
  // solve

  // end solve

  return 0;
}