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

// code from geek for geek
// https://www.geeksforgeeks.org/program-to-find-prime-numbers-between-given-interval/

bool isPrime(int n)
{

  if (n <= 1)
    return false;

  for (int i = 2; i < n; i++)
  {
    if (n % i == 0)
      return false;
  }

  return true;
}

// Function to find all prime numbers in the range [m, n]
vector<int> primeRange(int m, int n)
{

  // Initialize a vector to store prime numbers
  vector<int> ans;

  // Iterate over each number in the range [m, n]
  for (int i = m; i <= n; i++)
  {
    // Check if the current number is prime
    if (isPrime(i))

      ans.push_back(i);
  }

  return ans;
}

signed main()
{
  fastio;
  int l, r;
  cin >> l >> r;
  vector<int> primeNumber = primeRange(l, r);

  // print(primeNumber);
  // cout << "\n";

  int sizeofPrime = primeNumber.size();
  int count = 0;
  for (int i = 0; i < sizeofPrime - 1; i++)
  {
    if ((primeNumber[i + 1] - primeNumber[i]) == 2)
    {
      count++;
      // cout << primeNumber[i] << " " << primeNumber[i + 1] << "\n";
    }
  }
  cout << count;

  return 0;
}