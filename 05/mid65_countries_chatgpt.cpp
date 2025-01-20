/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-19 20:28
 **/
#include <bits/stdc++.h>
using namespace std;

// Fast I/O for better performance
#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);

// Define 'int' as 'long long' for larger integer support
#define int long long
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

// Template function to print pairs
template <typename T, typename V>
void print(const pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

// Template function to print containers
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

// Global variables for map dimensions and coordinates
int Row, Col, A, B, X, Y;

// Directions: Right, Down, Left, Up (y: row, x: column)
vector<pair<int, int>> directions = {
    {0, 1},   // Right
    {1, 0},   // Down
    {0, -1},  // Left
    {-1, 0}}; // Up

/**
 * Function to check if the new position is within the map boundaries
 * @param map 2D vector representing the map with country IDs
 * @param ROW New row index
 * @param COL New column index
 * @return True if the new position is within bounds, else False
 */
bool canMove(vector<vector<int>> &map, int ROW, int COL)
{
  int R = map.size();
  int C = map[0].size();
  // Corrected boundary checks
  if (ROW >= 0 && ROW < R && COL >= 0 && COL < C)
  {
    return true;
  }
  return false;
}

/**
 * Function to perform BFS and find the minimum number of visas required
 * @param map 2D vector representing the map with country IDs
 * @param starty Starting row index
 * @param startx Starting column index
 * @param endy Destination row index
 * @param endx Destination column index
 * @return Minimum number of visas required to reach destination
 */
int solve(vector<vector<int>> &map, int starty, int startx, int endy, int endx)
{
  int R = map.size();
  int C = map[0].size();

  // Initialize visited matrix with a large number indicating not visited
  vector<vector<int>> visited(R, vector<int>(C, LLONG_MAX));

  // Queue for BFS: each element is a pair (y, x)
  queue<pair<int, int>> q;

  // Starting position: no visa needed
  q.push({starty, startx});
  visited[starty][startx] = 0;

  while (!q.empty())
  {
    auto [y, x] = q.front();
    q.pop();
    int visas = visited[y][x];

    // If reached destination, return the number of visas
    if (x == endx && y == endy)
    {
      return visas;
    }

    // Explore all 4 directions
    for (auto &dir : directions)
    {
      int newY = y + dir.first;  // New row
      int newX = x + dir.second; // New column

      // Check if the new position is within bounds
      if (canMove(map, newY, newX))
      {
        int new_visa = visas;
        // If moving to a different country, increment visa count
        if (map[newY][newX] != map[y][x])
        {
          new_visa += 1;
        }
        // If this path offers fewer visas, update and enqueue
        if (new_visa < visited[newY][newX])
        {
          visited[newY][newX] = new_visa;
          q.push({newY, newX});
        }
      }
    }
  }

  // If destination is unreachable, return -1
  return -1;
}

signed main()
{
  fastio;
  // Read map dimensions and coordinates
  cin >> Row >> Col >> A >> B >> X >> Y;

  // Adjust indices to 0-based (since array indices start at 0)
  A -= 1;
  B -= 1;
  X -= 1;
  Y -= 1;

  // Initialize the map with country IDs
  vector<vector<int>> vec(Row, vector<int>(Col, 0));
  for (int i = 0; i < Row; i++)
  {
    for (int j = 0; j < Col; j++)
    {
      cin >> vec[i][j]; // Read country ID for each cell
    }
  }

  // Calculate and output the minimum number of visas required
  int ans = solve(vec, A, B, X, Y);
  cout << ans;

  return 0;
}