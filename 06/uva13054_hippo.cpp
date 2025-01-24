/**
 *  Author: Parinya Aobaun
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

void solve(int i)
{
  int num, height, T1, T2;
  cin >> num >> height >> T1 >> T2;
  vector<int> hippo(num);
  for (int i = 0; i < num; i++)
  {
    cin >> hippo[i];
  }
  sort(all(hippo));
  int left = 0, right = num - 1;
  int ans = 0;
  while (left < right)
  {
    if (hippo[left] + hippo[right] < height)
    {
      ans += T2;
      left++;
      right--;
    }
    else
    {
      ans += T1;
      right--;
    }
    // เอาตัวมากออก
  }

  if (left == right)
  {
    ans += T1;
    // cout << "Case " << i << ": " << ans << "\n";
  }
  cout << "Case " << i << ": " << ans << "\n";
}

signed main()
{
  fastio;
  int n;
  cin >> n;
  for (int i = 1; i <= n; i++)
  {
    solve(i);
  }

  return 0;
}