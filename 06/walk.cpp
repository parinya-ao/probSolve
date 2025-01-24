/**
 *  Author: Parinya Aobaun
 *  Status: ส่งไม่ผ่าน
 **/
//#include <bits/stdc++.h>
#include <algorithm>
#include <climits>
#include <iostream>
#include <queue>
#include <string>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

void _print()
{
  cerr << "]\n";
}
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
signed main()
{
  fastio;
  int num, target, d, walk;
  cin >> num >> target >> d >> walk;
  vector<int> gass(num); // gass is gassation
  for (int i = 0; i < num; i++)
  {
    cin >> gass[i];
  }
  // algorithm zone
  int now = 0; // start from zero
  int ans = 0; // answer
  while (1)
  {
    // case now + distance more than target
    if (now + d >= target)
    {
      break;
    }
    // case now +distance + walk more than target
    if (now + d + walk >= target)
    {
      break;
    }
    // find station can goto and walk
    auto itr = upper_bound(all(gass), now + d + walk);
    if (itr == gass.begin()) // if (cannot go to nexstation)
    {
      cout << -1 << "\n";
      return 0;
    }
    --itr;
    int next_station = *itr;
    if (next_station <= now || next_station > now + d + walk)
    {
      cout << -1 << "\n";
      return 0;
    }
    now = next_station;
    ans++;
  }
  cout << ans << "\n";

  return 0;
}