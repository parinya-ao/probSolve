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
#define INF LLONG_MAX
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

int n;

int k;
vector<int> vec;
vector<int> min_vec;

void fn1(int num)
{
  cout << min_vec[num] << "\n";
}

void fn2(int num)
{
  int l = 1, r = n, pos = 0;
  while (l <= r)
  {
    int mid = (l + r) / 2;
    if (min_vec[mid] >= num)
    {
      pos = mid;
      l = mid + 1;
    }
    else
    {
      r = mid - 1;
    }
  }
  cout << pos << "\n";
}

signed main()
{
  fastio;
  cin >> n >> k;
  vec.assign((n + 1), -1);
  min_vec.assign((n + 1), 100000000);
  for (int i = 1; i <= n; i++)
  {
    cin >> vec[i];
    min_vec[i] = min(vec[i], min_vec[i - 1]);
  }

  int op = 0, num;
  for (int i = 1; i <= k; i++)
  {
    cin >> op >> num;
    if (op == 1)
    {
      fn1(num);
    }
    else if (op == 2)
    {
      fn2(num);
    }
  }

  return 0;
}