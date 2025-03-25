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
#define INF 1e18
#define MAX_N 100005
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

int n, m;

int sum_col(int row_index, int col_index, vector<vector<int>> &vec)
{
  int col_s = 0;
  int current = vec[row_index][col_index];
  for (int i = 0; i < n; i++)
  {
    if (i == row_index)
    {
      continue;
    }
    else
    {
      col_s += abs(vec[i][col_index] - current);
    }
  }
  return col_s;
}

int sum_row(int row_index, int col_index, vector<vector<int>> &vec)
{
  int row_s = 0;
  int current = vec[row_index][col_index];
  for (int j = 0; j < m; j++)
  {
    if (j == col_index)
    {
      continue;
    }
    else
    {
      row_s += abs(vec[row_index][j] - current);
    }
  }
  return row_s;
}

void solve(vector<vector<int>> &vec)
{
  int min_val = INF;
  pair<int, int> index_x_y = make_pair(0, 0);
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < m; j++)
    {
      int sum_r = sum_col(i, j, vec);
      int sum_c = sum_row(i, j, vec);
      if (sum_r + sum_c < min_val)
      {
        min_val = sum_r + sum_c;
        index_x_y = make_pair(i, j);
      }
    }
  }
  auto [r, c] = index_x_y;
  cout << vec[r][c] << "\n";
}

signed main()
{
  fastio;
  cin >> n >> m;
  vector<vector<int>> vec(n, vector<int>(m, 0));
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < m; j++)
    {
      cin >> vec[i][j];
    }
  }
  solve(vec);

  return 0;
}