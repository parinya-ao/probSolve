/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-10 18:57
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

void print(int x) { cerr << x; }
void print(double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &x)
{
  cerr << '{';
  print(x.first);
  cerr << ',';
  print(x.second);
  cerr << '}';
}
template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << '{';
  for (auto &i : x)
    cerr << (f++ ? "," : ""), print(i);
  cerr << "}";
}

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)
template <typename T>
void _print(T t)
{
  print(t);
  cerr << "]\n";
}
template <typename T, typename... V>
void _print(T t, V... v)
{
  print(t);
  cerr << ", ";
  _print(v...);
}

signed main()
{
  fastio;
  int w, h, m, n;
  cin >> w >> h >> m >> n;
  vector<int> W(m), H(n);
  for (int &x : W)
  {
    cin >> x;
  }
  vector<int> WCUT(m + 1), HCUT(n + 1);
  WCUT[0] = W[0] - 0;
  for (int i = 1; i < W.size(); ++i)
  {
    WCUT[i] = min(W[i], w) - W[i - 1];
  }
  WCUT[w] = w;
  sort(all(WCUT));
  for (int &x : H)
  {
    cin >> x;
  }
  HCUT[0] = H[0] - 0;
  for (int i = 1; i < H.size(); ++i)
  {
    HCUT[i] = min(H[i], h) - H[i - 1];
  }
  WCUT.emplace_back(H);
  sort(all(HCUT));

  debug(WCUT);
  debug(HCUT);

  return 0;
}