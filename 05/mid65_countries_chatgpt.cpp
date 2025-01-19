#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

// Directions: Right, Down, Left, Up
vector<pair<int, int>> directions = {
    {0, 1},
    {1, 0},
    {0, -1},
    {-1, 0}};

// Function to perform BFS and find minimum visas
int solve(vector<vector<int>> &map, int startx, int starty, int endx, int endy)
{
  int R = map.size();
  int C = map[0].size();

  // Visited array to keep track of visited cells
  // Each cell stores the minimum number of visas required to reach it
  vector<vector<int>> visited(R, vector<int>(C, INT32_MAX));

  // Priority queue to process cells with the least visas first
  // (visas, (x, y))
  priority_queue<pair<int, pair<int, int>>, vector<pair<int, pair<int, int>>>, std::greater<pair<int, pair<int, int>>>> pq;

  // Starting position: no visa needed
  pq.push({0, {startx, starty}});
  visited[startx][starty] = 0;

  while (!pq.empty())
  {
    auto current = pq.top();
    pq.pop();

    int visas = current.first;
    int x = current.second.first;
    int y = current.second.second;

    // If reached destination, return the number of visas
    if (x == endx && y == endy)
      return visas;

    // Explore all 4 directions
    for (auto &dir : directions)
    {
      int nx = x + dir.first;
      int ny = y + dir.second;

      // Check boundaries
      if (nx >= 0 && nx < R && ny >= 0 && ny < C)
      {
        // Calculate new visa count
        int new_visas = visas;
        if (map[nx][ny] != map[x][y])
          new_visas += 1; // Crossing to a different country

        // If this path offers fewer visas, update and push to queue
        if (new_visas < visited[nx][ny])
        {
          visited[nx][ny] = new_visas;
          pq.push({new_visas, {nx, ny}});
        }
      }
    }
  }

  // If destination is unreachable
  return -1;
}

signed main()
{
  fastio;
  int R, C, A, B, X, Y;
  cin >> R >> C >> A >> B >> X >> Y;

  // Adjust indices to 0-based
  A -= 1;
  B -= 1;
  X -= 1;
  Y -= 1;

  vector<vector<int>> vec(R, vector<int>(C, 0));
  for (int i = 0; i < R; i++)
  {
    for (int j = 0; j < C; j++)
    {
      cin >> vec[i][j];
    }
  }

  int result = solve(vec, A, B, X, Y);
  cout << result;

  return 0;
}