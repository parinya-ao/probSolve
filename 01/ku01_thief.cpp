/**
 *   author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                      \
  ios_base::sync_with_stdio(false); \
  cin.tie(NULL);                    \
  cout.tie(NULL);
#define ll long long
#define ull unsigned long long
#define pb push_back
#define all(v) v.begin(), v.end()
#define rall(v) v.rbegin(), v.rend()
#define pii pair<int, int>
#define vi vector<int>
#define vll vector<long long>
// Constants
const int MOD = 1e9 + 7;
const int INF = 1e9;

int main()
{
  fastio;
  int N, K, T;
  cin >> N >> K >> T;
  unordered_set<int> visited;
  int current = 1, count = 0;

  while (1)
  {
    if (visited.count(current))
      break;
    visited.insert(current);
    count++;
    if (current == T)
      break;
    current = (current + K - 1) % N + 1;
  }
  cout << count << "\n";

  return 0;
}