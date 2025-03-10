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

int solve(int n, string s)
{
  int count = 0;
  vector<bool> cover;
  cover.resize(s.length());
  for (int i = 0; i < s.length(); i++)
  {
    if (s[i] == '.' && !cover[i])
    {
      count++;
      cover[i] = true;
      if (i + 1 < n)
      {
        cover[i + 1] = true;
      }
      if (i + 2 < n)
      {
        cover[i + 2] = true;
      }
    }
  }
  return count;
}

signed main()
{
  fastio;
  int n;
  cin >> n;
  for (int i = 1; i <= n; i++)
  {
    int u = 0;
    string s;
    cin >> u;
    cin >> s;
    int ans = solve(u, s);
    if (i == n)
    {
      cout << "Count " << i << ": " << ans;
    }
    else
    {
      cout << "Count " << i << ": " << ans << "\n";
    }
  }

  return 0;
}