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
list<int> vec;
signed main()
{
  fastio;
  cin >> n >> m;
  vec.assign(n, -INF);
  auto it = vec.begin();
  for (int i = 0; i < n; i++, ++it)
  {
    cin >> *it;
  }

  auto itr = vec.begin();
  for (int i = 1; i <= m; i++)
  {
    int op;
    cin >> op;
    if (op == 1)
    {
      itr = vec.begin();
    }
    else if (op == 2)
    {
      ++itr;
      if (itr == vec.end())
      {
        itr = vec.begin();
      }
    }
    else if (op == 3)
    {
      int num;
      cin >> num;
      vec.insert(itr, num);
    }
    else if (op == 4)
    {
      int num;
      cin >> num;
      auto next_pos = itr;
      ++next_pos;
      vec.insert(next_pos, num);
    }
  }
  for (auto val : vec)
  {
    cout << val << "\n";
  }

  return 0;
}