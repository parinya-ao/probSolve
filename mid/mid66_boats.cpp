/**
 *  Author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define INF 1e9
#define MAX_N 10010
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

int n, m;
vector<int> boats;
vector<int> human;

signed main()
{
  fastio;
  cin >> n >> m;
  boats.assign(n, INF);
  human.assign(m, INF);
  for (int i = 0; i < n; i++)
  {
    cin >> boats[i];
  }
  for (int i = 0; i < m; i++)
  {
    cin >> human[i];
  }

  print(boats);
  sort(boats.begin(), boats.end());
  // print(human);
  int ans = 0;
  for (int i = 0; i < m; i++)
  {
    auto itr = lower_bound(boats.begin(), boats.end(), human[i]);
    if (itr == boats.end())
    {
      break;
    }
    int give_boat = *itr;
    boats.erase(itr);
    ++ans;
  }
  cout << ans;

  return 0;
}