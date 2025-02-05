/**
 *  Author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                  \
   ios::sync_with_stdio(false); \
   cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define INF LLONG_MAX
#define Pii pair<int, int>
#define MAX_N 10010
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
#define debug(x...)              \
   cerr << "[" << #x << "] = ["; \
   _print(x)
class mst
{
private:
   int Vertex = 0, Edge = 0;
   int Va = 0, Vb = 0, Wight = 0, Status = 0;
   // graph
   vector<vector<pair<pair<int, int>, bool>>> adj;
   vector<int> parent;
   int ans = 0;
   priority_queue<tuple<int, int, int>, vector<tuple<int, int, int>>, greater<tuple<int, int, int>>> heap;

public:
   mst(int Vertex, int Edge)
   {
      this->Vertex = Vertex;
      this->Edge = Edge;
      this->adj.resize(Vertex);
      this->parent.resize(Vertex, -1);
   }
   void init_input()
   {
      for (int i = 0; i < Edge; i++)
      {
         cin >> Va >> Vb >> Wight >> Status;
         Va--;
         Vb--;
         addEdge(Va, Vb, Wight, Status);
      }
   }
   void addEdge(int Va, int Vb, int Wight, int Status)
   {
      adj[Va].push_back({{Vb, Wight}, Status});
      adj[Vb].push_back({{Va, Wight}, Status});
      if (Status == 0)
      {
         heap.push({Wight, Va, Vb});
      }
   }

   int findSet(int x)
   {
      if (parent[x] < 0)
         return x;
      return parent[x] = findSet(parent[x]);
   }

   void unionSet(int x, int y)
   {
      int rx = findSet(x);
      int ry = findSet(y);
      if (rx == ry)
         return;
      if (parent[rx] < parent[ry])
      {
         parent[ry] = rx;
      }
      else if (parent[ry] < parent[rx])
      {
         parent[rx] = ry;
      }
      else
      {
         parent[ry] = rx;
         parent[rx]--;
      }
   }
   bool AllConnected()
   {
      int main_vertex = parent[0];
      for (int v = 1; v < Vertex; v++)
      {
         if (findSet(v) != main_vertex)
            return false;
      }
      return true;
   }

   int kruskal()
   {
      for (auto u = 0; u < Vertex; u++)
      {
         for (auto edge : adj[u])
         {
            auto [v, w] = edge.first;
            auto status = edge.second;

            if (status == 1)
            {
               unionSet(u, v);
            }
         }
      }

      if (AllConnected())
         return 0;

      vector<pair<int, int>> path_mst;
      while (!heap.empty() && path_mst.size() < Vertex - 1)
      {
         auto [wight, a, b] = heap.top();
         heap.pop();

         if (findSet(a) != findSet(b))
         {
            path_mst.push_back({a, b});
            unionSet(a, b);
            ans += wight;
         }
      }
      return ans;
   }
};

signed main()
{
   fastio;
   int N, M;
   cin >> N >> M;
   mst solve(N, M);
   solve.init_input();
   cout << solve.kruskal() << "\n";

   return 0;
}
/*
ถ้าเถนนไม่พัง Status = 1 และ พัง Status = 0
A, B, Wight, Status
ถ้าถนนพังจะเป็น unionset กัน
ถ้าไม่พังให้นำไปใส่ใน min heap แล้วทำ krukal
*/