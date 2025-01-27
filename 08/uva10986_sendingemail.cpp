/**
 *  Author: Parinya Aobaun
 **/
//#include <bits/stdc++.h>
#include <algorithm>
#include <climits>
#include <iostream>
#include <queue>
#include <set>
#include <string>
#include <vector>
using namespace std;

#define int long long
#define all(v) v.begin(), v.end()

static const int MAX_N = 1000010;
static const int INF = 1000000000;

int n, m, S = 0, T = 0;
vector<int> adj[MAX_N];
vector<int> weights[MAX_N];
int deg[MAX_N];

bool visited[MAX_N];
int distArr[MAX_N];

void readInput()
{
  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  cin >> n >> m >> S >> T;

  for (int i = 0; i < n; i++)
  {
    adj[i].clear();
    weights[i].clear();
    deg[i] = 0;
  }

  for (int i = 0; i < m; i++)
  {
    int a, b, w;
    cin >> a >> b >> w;
    adj[a].push_back(b);
    weights[a].push_back(w);
    deg[a]++;

    adj[b].push_back(a);
    weights[b].push_back(w);
    deg[b]++;
  }
}

void dijkstra(int start)
{
  for (int i = 0; i < n; i++)
  {
    visited[i] = false;
    distArr[i] = INF;
  }
  distArr[start] = 0;

  set<pair<int, int>> pq;
  pq.insert({0, start});

  for (int i = 0; i < n; i++)
  {
    if (pq.empty())
      return;

    int u;
    do
    {
      if (pq.empty())
        return;
      auto it = pq.begin();
      u = it->second;
      pq.erase(it);
    } while (visited[u]);

    visited[u] = true;

    for (int j = 0; j < deg[u]; j++)
    {
      int v = adj[u][j];
      int w = weights[u][j];

      if (distArr[u] + w < distArr[v])
      {
        distArr[v] = distArr[u] + w;
        pq.insert({distArr[v], v});
      }
    }
  }
}

void solve(int count)
{
  readInput();
  dijkstra(S);
  if (distArr[T] == INF)
  {
    cout << "Case #" << count << ": unreachable\n";
    return;
  }
  cout << "Case #" << count << ": " << distArr[T] << "\n";
}

signed main()
{
  int aaaa = 0;
  cin >> aaaa;
  for (int i = 1; i <= aaaa; i++)
  {
    solve(i);
  }
  return 0;
}