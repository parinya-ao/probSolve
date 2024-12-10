/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 19:38
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define pb push_back
#define mp make_pair
#define ff first
#define ss second

const int MOD = 1e9 + 7;
const int INF = 1e18;

void __print(int x) { cerr << x; }
void __print(double x) { cerr << x; }
void __print(char x) { cerr << '\'' << x << '\''; }
void __print(const string &x) { cerr << '"' << x << '"'; }
void __print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void __print(const pair<T, V> &x)
{
  cerr << '{';
  __print(x.first);
  cerr << ',';
  __print(x.second);
  cerr << '}';
}
template <typename T>
void __print(const T &x)
{
  int f = 0;
  cerr << '{';
  for (auto &i : x)
    cerr << (f++ ? "," : ""), __print(i);
  cerr << "}";
}

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)
template <typename T>
void _print(T t)
{
  __print(t);
  cerr << "]\n";
}
template <typename T, typename... V>
void _print(T t, V... v)
{
  __print(t);
  cerr << ", ";
  _print(v...);
}

signed main()
{
  fastio;
  int n, m;
  cin >> n >> m;
  set<int> chache_page;
  map<int, int> page;
  int current_time = 0;
  int miss = 0;

  int id = 0;
  while (m--)
  {
    cin >> id;
    current_time++;
    if (chache_page.count(id))
    {
      continue;
    }
    else
    {
      miss++;
      if (chache_page.size() == n)
      {
        auto itr = page.begin();
        int old = itr->second;
        chache_page.erase(old);
        page.erase(itr);
      }
      chache_page.insert(id);
      page[current_time] = id;
    }
  }

  cout << miss << "\n";
  return 0;
}