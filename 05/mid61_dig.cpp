/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-19 17:58
 **/
#include <bits/stdc++.h>
using namespace std;

// Fast I/O
#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);

// Define int as long long for larger integer support
#define int long long

// Shortcut for using all elements of a container
#define all(v) v.begin(), v.end()

// Debugging functions to print various data types
void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

// Overloaded print functions for different data types
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

// Template specialization for printing pairs
template <typename T, typename V>
void print(const pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

// Template for printing containers like vectors, sets, etc.
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

// Macro for debugging variables
#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)

// Global variables for grid dimensions
// x = Colmun (number of columns), y = Row (number of rows)
int Row, Colmun;

// Movement directions: Up, Right, Down, Left
vector<pair<int, int>> arr = {
    {-1, 0}, // Up
    {0, 1},  // Right
    {1, 0},  // Down
    {0, -1}  // Left
};

// Function to check if a move is within bounds and valid
bool canMove(vector<string> &map, int x, int y)
{
  if (x < 0 || x >= Row || y < 0 || y >= Colmun)
  {
    return false;
  }
  return (map[x][y] == '.' || map[x][y] == '*');
}

// Function to solve the problem using BFS
int solve(int startx, int starty, int endx, int endy, vector<string> &map)
{
  // 3D distance array: dist[r][c][usedDig]
  // usedig = 0  not use
  // usedig = 1 use
  vector<vector<vector<int>>> dist(Row, vector<vector<int>>(Colmun, vector<int>(2, 1e9)));

  // BFS queue: stores tuples of (row, column, usedDig)
  queue<tuple<int, int, int>> q;

  // Initialize starting position
  dist[startx][starty][0] = 0;
  q.push({startx, starty, 0});

  // BFS implementation
  while (!q.empty())
  {
    auto [r, c, dig] = q.front();
    q.pop();

    // If destination is reached, return the distance
    if (r == endx && c == endy)
    {
      return dist[r][c][dig];
    }

    // Explore all four directions
    for (auto &d : arr)
    {
      int newr = r + d.first;
      int newc = c + d.second;

      // Check if the new position is within bounds and valid
      if (canMove(map, newr, newc) && dist[newr][newc][dig] == 1e9)
      {
        // **Case 1: Normal Move to '.'**
        if (map[newr][newc] == '.')
        {
          dist[newr][newc][dig] = dist[r][c][dig] + 1; // Increment distance by 1 step
          q.push({newr, newc, dig});
        }
        // **Case 2: Encounter '*' and haven't used dig yet**
        else if (map[newr][newc] == '*' && dig == 0)
        {
          int rr = newr + d.first;
          int cc = newc + d.second;
          if (rr >= 0 && rr < Row && cc >= 0 && cc < Colmun && map[rr][cc] == '.' && dist[rr][cc][1] == 1e9)
          {
            dist[rr][cc][1] = dist[r][c][dig] + 2;
            q.push({rr, cc, 1});
          }
        }
      }
    }
  }

  int ans = min(dist[endx][endy][0], dist[endx][endy][1]);
  if (ans == 1e9)
  {
    return -1; // Destination is unreachable
  }
  return ans;
}

signed main()
{
  fastio;
  cin >> Colmun >> Row;
  vector<string> map(Row);
  int startX, StartY, EndX, EndY;
  cin >> startX >> StartY >> EndX >> EndY;
  startX--;
  StartY--;
  EndX--;
  EndY--;

  for (int i = 0; i < Row; ++i)
  {
    cin >> map[i];
  }

  int result = solve(startX, StartY, EndX, EndY, map);
  cout << result << "\n";

  return 0;
}

/*
Sample Inputs and Outputs:

Input 1:
6 5
2 2 4 2
#####
#...#
#**.#
#.*.#
#...#
#####
Output:
2

Explanation:
Starting at (2,2) and moving to (4,2) can be achieved in 2 steps by digging through one dirt wall.

Input 2:
6 5
2 2 5 2
#####
#...#
#***#
#***#
#...#
#####
Output:
-1

Explanation:
No possible path exists even after digging through one dirt wall.

Input 3:
6 5
2 2 5 4
#####
#...#
#.###
#*..#
###.#
#####
Output:
-1

Explanation:
Destination cannot be reached as all possible paths are blocked.
*/