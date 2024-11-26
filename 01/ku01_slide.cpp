/**
 *  Author: Parinya Aobaun
 *  Created: 2024-11-26 08:19
 */

#pragma GCC optimize("Ofast,unroll-loops")
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,avx,avx2,fma")

#include <bits/stdc++.h>
using namespace std;

// Fast I/O
inline void fast_io()
{
  ios::sync_with_stdio(false);
  cin.tie(nullptr);
  cout.tie(nullptr);
}

// Type aliases
using ll = long long;
using pii = pair<int, int>;
using vi = vector<int>;
using vll = vector<long long>;

// Constants
constexpr int MOD = 1000000007;
constexpr int INF = 1000000000;
constexpr long long LINF = 1000000000000000000;
constexpr double EPS = 1e-9;

// Utility functions
template <typename T>
bool chmin(T &a, const T &b)
{
  if (b < a)
  {
    a = b;
    return true;
  }
  return false;
}

template <typename T>
bool chmax(T &a, const T &b)
{
  if (b > a)
  {
    a = b;
    return true;
  }
  return false;
}

// GCD and LCM
long long gcd_custom(long long a, long long b)
{
  return b ? gcd_custom(b, a % b) : a;
}

long long lcm_custom(long long a, long long b)
{
  return a / gcd_custom(a, b) * b;
}

// Modular Arithmetic
long long mod_add(long long a, long long b, long long m = MOD) { return (a + b) % m; }
long long mod_sub(long long a, long long b, long long m = MOD) { return (a - b + m) % m; }
long long mod_mul(long long a, long long b, long long m = MOD) { return (a * b) % m; }
long long mod_pow(long long base, long long exp, long long m = MOD)
{
  long long res = 1;
  base %= m;
  while (exp > 0)
  {
    if (exp & 1)
      res = mod_mul(res, base, m);
    base = mod_mul(base, base, m);
    exp >>= 1;
  }
  return res;
}

int main()
{
  fast_io();

  int n;
  cin >> n;
  int arr[n];
  for (int i = 0; i < n; i++)
  {
    cin >> arr[i];
  }

  int count = 0;
  for (int i = 0; i < n; i++)
  {
    for (int j = i + 1; j < n; j++)
    {
      if (arr[i] < arr[j])
      {
        count++;
      }
    }
  }
  cout << count << "\n";

  return 0;
}