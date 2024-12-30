/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-26 16:20
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
  cerr << "}\n";
}

template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << "\n[";
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

int N = 0;

// arr[row][col]
int normal[4][2] = {
    {0, 1},
    {0, -1},
    {1, 0},
    {-1, 0},
};

int kight[8][2] = {
    {-2, 1},
    {-1, 2},
    {1, 2},
    {2, 1},
    {2, -1},
    {1, -2},
    {-1, -2},
    {-2, -1},
};

bool canMove(vector<string> &map, int row, int col)
{
  if (row < 0 || col < 0 || row >= N || col >= N)
  {
    return false;
  }
  return (map[row][col] == '.');
}

int solve(vector<string> &map)
{
  queue<tuple<int, int, bool>> q;
  vector<vector<vector<int>>> dist(N, vector<vector<int>>(N, vector<int>(2, -1)));
  // start from (0,0)
  q.push(make_tuple(0, 0, false));
  dist[0][0][0] = 0;
  while (!q.empty())
  {
    // print(dist);
    auto [y, x, k] = q.front();
    q.pop();
    if (x == N - 1 && y == N - 1)
    {
      return dist[y][x][k];
    }
    // normal
    for (int iIndex = 0; iIndex < 4; ++iIndex)
    {
      int new_x = x + normal[iIndex][0];
      int new_y = y + normal[iIndex][1];
      if (canMove(map, new_x, new_y) && dist[new_y][new_x][k] == -1)
      {
        dist[new_y][new_x][k] = dist[y][x][k] + 1;
        q.push(make_tuple(new_y, new_x, k));
      }
    }

    // use kight
    if (!k)
    {
      for (int iIndex = 0; iIndex < 8; ++iIndex)
      {
        int new_x = x + kight[iIndex][0];
        int new_y = y + kight[iIndex][1];
        // โดดแล้วครับ
        if (canMove(map, new_x, new_y) && dist[new_y][new_x][k] == -1)
        {
          dist[new_y][new_x][1] = dist[y][x][0] + 1;
          q.push(make_tuple(new_y, new_x, true));
        }
      }
    }
  }
  return LLONG_MAX;
}

signed main()
{
  fastio;
  cin >> N;
  cin.ignore();
  vector<string> maze(N);
  for (int iCount = 0; iCount < N; iCount++)
  {
    getline(cin, maze[iCount]);
  }
  cout << solve(maze) << "\n";

  return 0;
}