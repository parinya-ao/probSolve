/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-20 20:04
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

int dx[4] = {-1, 1, 0, 0};
int dy[4] = {0, 0, -1, 1};

bool solve(vector<string> &maze, int N, int x, int y, int destX, int destY, bool useKey, vector<vector<vector<bool>>> &visited)
{
  if (x < 0 || x >= N || y < 0 || y >= N)
  {
    return false;
  }
  if (maze[x][y] == '#')
  {
    return false;
  }
  if (visited[x][y][useKey])
  {
    return false;
  }
  visited[x][y][useKey] = true;
  if (x == destX && y == destY)
  {
    return true;
  }

  for (int i = 0; i < 4; ++i)
  {
    int nx = x + dx[i];
    int ny = y + dy[i];

    if (nx < 0 || nx >= N || ny < 0 || ny >= N || maze[nx][ny] == '#')
    {
      continue;
    }
    if (maze[nx][ny] == 'O')
    {
      if (!useKey)
      {
        if (solve(maze, N, nx, ny, destX, destY, true, visited))
        {
          return true;
        }
      }
      continue;
    }
    if (solve(maze, N, nx, ny, destX, destY, useKey, visited))
    {
      return true;
    }
  }
  return false;
}

signed main()
{
  fastio;
  int N, Q;
  cin >> N >> Q;
  cin.ignore();

  vector<string> maze(N);
  for (int i = 0; i < N; i++)
  {
    getline(cin, maze[i]);
  }

  while (Q--)
  {
    int R, C, A, B;
    cin >> R >> C >> A >> B;
    R--;
    C--;
    A--;
    B--;

    // create graph store x, y, bool
    vector<vector<vector<bool>>> visited(N, vector<vector<bool>>(N, vector<bool>(2, false)));
    if (solve(maze, N, R, C, A, B, false, visited))
    {
      cout << "yes\n";
    }
    else
    {
      cout << "no\n";
    }
  }

  return 0;
}