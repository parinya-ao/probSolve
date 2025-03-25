// STL implementation of Prim's algorithm for MST
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define all(v) v.begin(), v.end()
#define INF 1e18
#define MAX_N 100005
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
  _
#define INF 0x3f3f3f3f

// iPair ==> Integer Pair
typedef pair<int, int> iPair;

// To add an edge
void addEdge(vector<pair<int, int>> adj[], int u,
             int v, int wt)
{
  adj[u].push_back(make_pair(v, wt));
  adj[v].push_back(make_pair(u, wt));
}

// Prints shortest paths from src to all other vertices
void primMST(vector<pair<int, int>> adj[], int V)
{
  // Create a priority queue to store vertices that
  // are being primMST. This is weird syntax in C++.
  // Refer below link for details of this syntax
  // https://www.geeksforgeeks.org/implement-min-heap-using-stl/
  priority_queue<iPair, vector<iPair>, greater<iPair>> pq;

  int src = 0; // Taking vertex 0 as source

  // Create a vector for keys and initialize all
  // keys as infinite (INF)
  vector<int> key(V, INF);

  // To store parent array which in turn store MST
  vector<int> parent(V, -1);

  // To keep track of vertices included in MST
  vector<bool> inMST(V, false);

  // Insert source itself in priority queue and initialize
  // its key as 0.
  pq.push(make_pair(0, src));
  key[src] = 0;

  /* Looping till priority queue becomes empty */
  while (!pq.empty())
  {
    // The first vertex in pair is the minimum key
    // vertex, extract it from priority queue.
    // vertex label is stored in second of pair (it
    // has to be done this way to keep the vertices
    // sorted key (key must be first item
    // in pair)
    int u = pq.top().second;
    pq.pop();

    // Different key values for same vertex may exist in the priority queue.
    // The one with the least key value is always processed first.
    // Therefore, ignore the rest.
    if (inMST[u] == true)
    {
      continue;
    }

    inMST[u] = true; // Include vertex in MST

    // Traverse all adjacent of u
    for (auto x : adj[u])
    {
      // Get vertex label and weight of current adjacent
      // of u.
      int v = x.first;
      int weight = x.second;

      // If v is not in MST and weight of (u,v) is smaller
      // than current key of v
      if (inMST[v] == false && key[v] > weight)
      {
        // Updating key of v
        key[v] = weight;
        pq.push(make_pair(key[v], v));
        parent[v] = u;
      }
    }
  }

  // Print edges of MST using parent array
  // for (int i = 1; i < V; ++i)
  // {
  //   // printf("%d - %d\n", parent[i], i);
  //   cout << parent[i] + 1 << " - " << i + 1 << " --> " << key[i] << "\n";
  // }
  // print(*max_element(all(key)));
  cout << *max_element(all(key)) << "\n";
  cout << "Y";
}

// Driver program to test methods of graph class
int main()
{
  int n, m;
  cin >> n >> m;
  vector<iPair> adj[n];

  for (int i = 0; i < m; i++)
  {
    int a, b, w;
    cin >> a >> b >> w;
    a--;
    b--;
    addEdge(adj, a, b, w);
  }

  primMST(adj, n);

  return 0;
}
