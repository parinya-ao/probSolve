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

// using dynamic programing
/*
recurrence relation
// Ai = taro
// Bi = tera
นิยาม dp[i][j] คือ taro สู้ไป j ตัวและ tera สู้ไป i-j ตัว
dp[i][j] = min(dp[i-1][j-1] + A[i], d[i-1][j] + B[i]) แต่ abs(select A- B <= k)
*/
class solve
{
private:
  vector<vector<int>> dp;
  vector<int> A, B;
  int n;
  int k;

public:
  solve(vector<int> A, vector<int> B, int n, int k) : A(A), B(B), n(n), k(k)
  {
    dp.resize(MAX_N, vector<int>(MAX_N, -1));
  }
  int run(int i, int j)
  {
    if (i == 0 and j == 0)
      return 0;
    if (dp[i][j] != -1)
    {
      return dp[i][j];
    }

    int diff = j - (i - j);
    if (abs(diff) > k)
    {
      return INF;
    }

    int res = INF;
    if (j > 0)
    {
      res = min(run(i - 1, j - 1) + A[i - 1], res);
    }
    if (i - j > 0)
    {
      res = min(run(i - 1, j) + B[i - 1], res);
    }
    dp[i][j] = res;
    return res;
  }

  int answer()
  {
    int min_energy = INF;
    for (int j = 0; j <= n; j++)
    {
      if (abs(2 * j - n) <= k)
      {
        min_energy = min(min_energy, run(n, j));
      }
    }
    return min_energy;
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  for (int i = 0; i < n; i++)
  {
    int q, k;
    cin >> q >> k;
    vector<int> A(q, -1), B(q, -0);
    for (int j = 0; j < q; ++j)
    {
      cin >> A[j] >> B[j];
    }
    solve Solve(A, B, q, k);
    cout << Solve.answer() << "\n";
  }

  return 0;
}