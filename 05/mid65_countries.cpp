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

bool canMove(vector<vector<int>> &map, int &ROW, int &COL)
{
  int R = map.size();
  int C = map[0].size();
  if (ROW >= 0 && ROW < R && COL >= 0 && COL < C)
  {
    return true;
  }
  return false;
}

int solve(vector<vector<int>> &map, int starty, int startx, int endy, int endx)
{
  int R = map.size();
  int C = map[0].size();

  vector<vector<int>> visted(R, vector<int>(C, LLONG_MAX));
  queue<pair<int, int>> q;
  q.push({starty, startx});
  visted[starty][startx] = 0; // not visited

  while (!q.empty())
  {
    auto [y, x] = q.front();
    q.pop();
    int visas = visted[y][x];
    if (x == endx && y == endy)
    {
      return visas;
    }
    for (auto &i : arr)
    {
      int newY = y + i.first;
      int newX = x + i.second;

      if (canMove(map, newY, newX))
      {
        int new_visa = visas;
        // diff
        if (map[newY][newX] != map[y][x])
        {
          ++new_visa;
        }
        // same
        if (new_visa < visted[newY][newX])
        {
          visted[newY][newX] = new_visa;
          q.push({newY, newX});
        }
      }
    }
  }
}

signed main()
{
  fastio;
  cin >> Row >> Col >> A >> B >> X >> Y;
  A--;
  B--;
  X--;
  Y--;
  vector<vector<int>> vec(Row, vector<int>(Col, 0));
  for (int i = 0; i < Row; i++)
  {
    for (int j = 0; j < Col; j++)
    {
      cin >> vec[i][j];
    }
  }
  int ans = solve(vec, A, B, X, Y);
  cout << ans;

  return 0;
}