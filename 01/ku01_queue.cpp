/**
 *   author: Parinya Aobaun
 *   created: 2024-11-27 13:27
 **/
#pragma GCC optimize("Ofast,unroll-loops")
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,avx,avx2,fma")
#include <bits/stdc++.h>
using namespace std;

#define fastio                      \
  ios_base::sync_with_stdio(false); \
  cin.tie(NULL);                    \
  cout.tie(NULL);
#define int long long
#define ll long long
#define ull unsigned long long
#define ld long double
#define pb push_back
#define pf push_front
#define mp make_pair
#define all(v) v.begin(), v.end()
#define rall(v) v.rbegin(), v.rend()
#define pii pair<int, int>
#define pll pair<ll, ll>
#define vi vector<int>
#define vll vector<ll>
#define umap unordered_map
#define uset unordered_set
#define fi first
#define se second
// Debugging macros
#define debug(x) cerr << #x << " = " << (x) << endl;
#define debugv(v)      \
  cerr << #v << " = "; \
  for (auto &i : v)    \
    cerr << i << " ";  \
  cerr << endl;

// Constants
const int MOD = 1e9 + 7;
const int INF = 1e9;
const ll LINF = 1e18;
const ld EPS = 1e-9;

// Utility Functions
template <typename T>
bool chmin(T &a, T b) { return b < a ? a = b, true : false; }
template <typename T>
bool chmax(T &a, T b) { return b > a ? a = b, true : false; }

// GCD and LCM
ll gcd(ll a, ll b) { return b ? gcd(b, a % b) : a; }
ll lcm(ll a, ll b) { return a / gcd(a, b) * b; }

// Modular Arithmetic
ll mod_add(ll a, ll b, ll m = MOD) { return (a + b) % m; }
ll mod_sub(ll a, ll b, ll m = MOD) { return (a - b + m) % m; }
ll mod_mul(ll a, ll b, ll m = MOD) { return (a * b) % m; }
ll mod_pow(ll base, ll exp, ll m = MOD)
{
  ll res = 1;
  while (exp)
  {
    if (exp & 1)
      res = (res * base) % m;
    base = (base * base) % m;
    exp >>= 1;
  }
  return res;
}

signed main()
{
  fastio;

  int n, l;
  cin >> n >> l;
  vi N(n, 0), L(l, 0);
  for (int i = 0; i < n; ++i)
  {
    cin >> N[i];
  }
  for (int j = 0; j < l; ++j)
  {
    cin >> L[j];
  }

  vi prefix_max(n, 0);
  prefix_max[0] = N[0];
  for (int i = 1; i < n; ++i)
  {
    prefix_max[i] = max(prefix_max[i - 1], N[i]);
  }

  for (int i = 0; i < l; ++i)
  {
    int pos = L[i] - 1;
    if (pos < 0)
    {
      cout << "0\n";
      continue;
    }
    int max_before;
    if (pos == 0)
    {
      max_before = -INF;
    }
    else
    {
      max_before = prefix_max[pos - 1];
    }
    int current_height = N[pos];
    if (current_height > max_before)
    {
      cout << "0\n";
    }
    else if (current_height == max_before)
    {
      cout << "1\n";
    }
    else
    {
      cout << (max_before - current_height + 1) << "\n";
    }
    // debug(max_before)
  }

  return 0;
}
