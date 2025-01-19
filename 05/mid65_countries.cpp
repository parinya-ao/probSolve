/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-19 20:28
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

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
int Row, Col, A, B, X, Y;

vector<pair<int, int>> arr = {
    {0, 1},
    {1, 0},
    {-1, 0},
    {0, -1}};

int solve(vector<vector<int>> &map, int startx, int starty, int endx, int endy)
{
  int startC = map[startx][starty - 1];
}

signed main()
{
  fastio;
  cin >> Row >> Col >> A >> B >> X >> Y;
  vector<vector<int>> vec(Row, vector<int>(Col, 0));
  int num;
  for (int i = 0; i < Row; i++)
  {
    for (int j = 0; j < Col; j++)
    {
      cin >> num;
      cin >> vec[i][j];
    }
  }
  print(vec);

  return 0;
}