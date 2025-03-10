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
#define INF 1e9
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

// คลาสหลักสำหรับแก้ปัญหาสะพานข้ามแม่น้ำ
class BridgeProblem
{
private:
  int n, m, s, t;                 // จำนวนแยก ถนน จุดเริ่มต้น และจุดปลายทาง
  vector<int> side;               // ฝั่งของแต่ละแยก (1 หรือ 2)
  vector<vector<int>> graph1;     // กราฟของฝั่งที่ 1
  vector<vector<int>> graph2;     // กราฟของฝั่งที่ 2
  vector<pair<int, int>> bridges; // สะพานทั้งหมด (คู่ของแยก)

  // ฟังก์ชันค้นหาระยะทางสั้นสุดด้วย BFS
  vector<int> bfs(const vector<vector<int>> &graph, int start, int n)
  {
    vector<int> dist(n + 1, -1);
    queue<int> q;
    q.push(start);
    dist[start] = 0;

    while (!q.empty())
    {
      int u = q.front();
      q.pop();

      for (int v : graph[u])
      {
        if (dist[v] == -1)
        {
          dist[v] = dist[u] + 1;
          q.push(v);
        }
      }
    }

    return dist;
  }

public:
  // คอนสตรักเตอร์
  BridgeProblem(int _n, int _m, int _s, int _t, vector<int> &_side) : n(_n), m(_m), s(_s), t(_t), side(_side)
  {
    // จัดสรรพื้นที่หน่วยความจำ
    graph1.resize(n + 1);
    graph2.resize(n + 1);
  }

  // เพิ่มถนนเข้าไปในกราฟ
  void addRoad(int u, int v)
  {
    // ตรวจสอบว่าเป็นสะพานหรือไม่ (เชื่อมระหว่างสองฝั่ง)
    if (side[u] != side[v])
    {
      bridges.push_back({u, v});
    }
    else
    {
      // ถนนปกติ เพิ่มเข้าไปในกราฟฝั่งที่เหมาะสม
      if (side[u] == 1)
      {
        graph1[u].push_back(v);
        graph1[v].push_back(u);
      }
      else
      {
        graph2[u].push_back(v);
        graph2[v].push_back(u);
      }
    }
  }

  // แก้ปัญหาหลัก
  int solve()
  {
    // ตรวจสอบว่ามีสะพานอย่างน้อย 2 เส้นหรือไม่
    if (bridges.size() < 2)
    {
      return -1;
    }

    // คำนวณระยะทางสั้นสุดจากจุดเริ่มต้นไปยังทุกแยกบนฝั่งเดียวกัน
    vector<int> dist_from_s = bfs(graph1, s, n);
    vector<int> dist_from_t = bfs(graph2, t, n);

    // เตรียมเก็บระยะทางจากปลายสะพานทั้งหมด
    vector<vector<int>> bridge_endpoints_dist1(n + 1); // ระยะทางจากทุกแยกบนฝั่ง 1 ไปยังทุกแยก
    vector<vector<int>> bridge_endpoints_dist2(n + 1); // ระยะทางจากทุกแยกบนฝั่ง 2 ไปยังทุกแยก

    // สร้างเซตของแยกที่เป็นปลายสะพานบนแต่ละฝั่ง
    set<int> bridge_ends_side1;
    set<int> bridge_ends_side2;

    for (auto &bridge : bridges)
    {
      int u = bridge.first;
      int v = bridge.second;

      if (side[u] == 1)
      {
        bridge_ends_side1.insert(u);
        bridge_ends_side2.insert(v);
      }
      else
      {
        bridge_ends_side1.insert(v);
        bridge_ends_side2.insert(u);
      }
    }

    // คำนวณระยะทางจากทุกปลายสะพานบนฝั่ง 1
    for (int node : bridge_ends_side1)
    {
      bridge_endpoints_dist1[node] = bfs(graph1, node, n);
    }

    // คำนวณระยะทางจากทุกปลายสะพานบนฝั่ง 2
    for (int node : bridge_ends_side2)
    {
      bridge_endpoints_dist2[node] = bfs(graph2, node, n);
    }

    // หาเส้นทางที่สั้นที่สุด
    int min_total_dist = INF;

    // ลองทุกคู่ของสะพานที่แตกต่างกัน
    for (int i = 0; i < bridges.size(); i++)
    {
      for (int j = 0; j < bridges.size(); j++)
      {
        if (i == j)
          continue; // ต้องเป็นสะพานคนละเส้น

        int u1 = bridges[i].first;
        int v1 = bridges[i].second;
        int u2 = bridges[j].first;
        int v2 = bridges[j].second;

        // ปรับให้ u อยู่ฝั่ง 1 และ v อยู่ฝั่ง 2
        if (side[u1] == 2)
          swap(u1, v1);
        if (side[u2] == 2)
          swap(u2, v2);

        // ตรวจสอบว่าสามารถเดินทางได้หรือไม่
        if (dist_from_s[u1] == -1 || dist_from_t[v1] == -1 ||
            dist_from_t[u2] == -1 || bridge_endpoints_dist1[v2][s] == -1)
        {
          continue;
        }

        // คำนวณระยะทางรวม (ไป + กลับ)
        int forward_dist = dist_from_s[u1] + 1 + dist_from_t[v1];                // บ้าน -> สะพาน 1 -> โรงเรียน
        int backward_dist = dist_from_t[u2] + 1 + bridge_endpoints_dist1[v2][s]; // โรงเรียน -> สะพาน 2 -> บ้าน

        int total_dist = forward_dist + backward_dist;
        min_total_dist = min(min_total_dist, total_dist);
      }
    }

    return (min_total_dist == INF) ? -1 : min_total_dist;
  }
};

signed main()
{
  fastio;

  int n, m, s, t;
  cin >> n >> m >> s >> t;

  // อ่านข้อมูลฝั่งของแต่ละแยก
  vector<int> side(n + 1);
  for (int i = 1; i <= n; i++)
  {
    cin >> side[i];
  }

  // สร้างอ็อบเจกต์ของคลาส BridgeProblem
  BridgeProblem solver(n, m, s, t, side);

  // อ่านข้อมูลถนนและเพิ่มเข้าไปในกราฟ
  for (int i = 0; i < m; i++)
  {
    int u, v;
    cin >> u >> v;
    solver.addRoad(u, v);
  }

  // แก้ปัญหาและแสดงผลลัพธ์
  cout << solver.solve() << endl;

  return 0;
}