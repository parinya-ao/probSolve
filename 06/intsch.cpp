/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-06 12:44
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define uint unsiged long long
#define all(v) v.begin(), v.end()

void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

void print(int x) { cerr << x; }
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

bool compa(const pair<int, int> &a, const pair<int, int> &b)
{
  if (a.second == b.second)
  {
    return a.first < b.first;
  }
  return a.second < b.second;
}

signed main()
{
  fastio;
  int n;
  vector<pair<int, int>> vec;
  cin >> n;
  for (int iCount = 0; iCount < n; iCount++)
  {
    int s, t;
    cin >> s >> t;
    vec.emplace_back(make_pair(s, t));
  }
  sort(all(vec), compa);
  // algortihm
  int ans = 0;
  // select first
  int end = -1;
  for (int iCount = 0; iCount < n; iCount++)
  {
    if (vec[iCount].first >= end)
    {
      ans++;
      end = vec[iCount].second;
    }
  }
  cout << ans << "\n";
  return 0;
}