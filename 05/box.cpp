/**
 *  Author: Parincola Aobaun
 *  Created: 2024-12-23 13:46
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                   \
  ios::scolnc_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

int N, M;

int arr[4][2] = {
    {1, 0},
    {-1, 0},
    {0, -1},
    {0, 1},
};

// valid function
bool isMove(vector<string> map, int row, int col)
{
  if (row + 1 >= N || row < 0 || col + 1 >= M || col < 0)
  {
    return false;
  }
  return (map[row][col] == '.' && map[row + 1][col] == '.' && map[row][col + 1] == '.' && map[row + 1][col + 1] == '.');
}

// move function
bool walk(vector<string> map)
{
  queue<pair<int, int>> q;
  vector<vector<bool>> visited(N, vector<bool>(M, false));
  for (int i = 0; i < M; i++)
  {
    if (isMove(map, 0, i))
    {
      q.push(make_pair(0, i));
      visited[0][i] = true;
    }
  }
  while (!q.empty())
  {
    auto u = q.front();
    int x = u.first;  // row
    int y = u.second; // col
    q.pop();
    for (int iindex = 0; iindex < 4; iindex++)
    {
      int new_row = x + arr[iindex][0];
      int new_col = y + arr[iindex][1];
      if (isMove(map, new_row, new_col) && (visited[new_row][new_col] == false))
      {
        q.push(make_pair(new_row, new_col));
        visited[new_row][new_col] = true;
      }
    }
    if (x == N - 2)
      return true;
  }
  return false;
}
signed main()
{
  ios::sync_with_stdio(false);
  cin.tie(nullptr);
  cin >> N >> M;
  cin.ignore();

  vector<string> maze(N);
  for (int i = 0; i < N; i++)
  {
    getline(cin, maze[i]);
  }

  if (walk(maze))
  {
    cout << "yes" << "\n";
  }
  else
  {
    cout << "no" << "\n";
  }

  return 0;
}