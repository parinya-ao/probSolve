#include <bits/stdc++.h>
//#include <iostream>
//#include <vector>
//#include <set>
//#include <algorithm>
//#include <climits>

using namespace std;

const int INF = 1e9;

class Graph
{
private:
  int H, W;

  vector<string> path;
  vector<pair<int, int>> move = {
      {-1, 0}, // N
      {1, 0},  // S
      {0, -1}, // E
      {0, 1},  // W
  };
  const vector<int> moveCost = {5, 0, 1, 1};

  bool canMove(int r, int c)
  {
    return (r >= 0 && r < H && c >= 0 && c < W && path[r][c] == '.' and path[r][c] != 'X');
  }

public:
  Graph(int _height, int _width) : H(_height), W(_width)
  {
    path.resize(H);
  }

  void readPath()
  {
    for (int r = 0; r < H; r++)
    {
      cin >> path[r];
    }
  }

  int dijkstra()
  {
    vector<vector<int>> dist(H, vector<int>(W, INF));
    set<pair<int, int>> pq; // {distance, vertex}

    dist[H - 1][0] = 0;
    pq.insert({0, W * (H - 1) + 0});

    while (!pq.empty())
    {
      int cost = pq.begin()->first;
      int pos = pq.begin()->second;
      pq.erase(pq.begin());

      int curRow = pos / W;
      int curCol = pos % W;

      if (curRow == 0 && curCol == W - 1)
      {
        return cost;
      }
      if (cost > dist[curRow][curCol])
        continue;

      for (int i = 0; i < move.size(); i++)
      {
        int newRow = curRow + move[i].first;
        int newCol = curCol + move[i].second;
        if (canMove(newRow, newCol))
        {
          int newcost = cost + moveCost[i];
          if (newcost < dist[newRow][newCol])
          {
            dist[newRow][newCol] = newcost;
            pq.insert({newcost, newRow * W + newCol});
          }
        }
      }
    }
    return -1;
  }
};

int H, W;

int main()
{
  ios_base::sync_with_stdio(false);
  cin.tie(0);

  cin >> H >> W;
  Graph graph(H, W);
  graph.readPath();
  cout << graph.dijkstra() << "\n";

  return 0;
}