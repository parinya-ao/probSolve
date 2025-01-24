/**
 *  Author: Parinya Aobaun
 **/
// #include <bits/stdc++.h>
#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <string>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

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
int N, M, L;

bool cmp(pair<int, int> &a, pair<int, int> &b)
{
  if (a.second != b.second)
    return a.second > b.second;
  return a.first < b.first;
}

signed main()
{
  fastio;
  cin >> N >> M >> L;
  vector<int> vec(N);
  vector<map<int, int>> ans;
  int l = 0, r = 0;
  for (int i = 0; i < N; i++)
  {
    cin >> vec[i];
  }
  while (r != N)
  {
    map<int, int> mp;
    r++;
    if (r - l == M)
    {
      for (int i = l; i < r; i++)
      {
        mp[vec[i]]++;
      }
      l++;
    }
    ans.emplace_back(mp);
  }
  // vector<pair<int, int>> sol(ans.begin(), ans.end());
  vector<pair<int, int>> sol;
  for (auto &val : ans)
  {
    for (auto [a, b] : val)
    {
      sol.push_back({a, b});
    }
  }
  sort(all(sol), cmp);
  cout << sol[0].first << " " << sol[0].second;

  return 0;
}