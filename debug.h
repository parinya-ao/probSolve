/**
 * debug.h - Advanced Debugging Utilities for Competitive Programming
 * Author: Parinya Aobaun
 *
 * วิธีใช้:
 * 1. #include "debug.h" ในโค้ดของคุณ
 * 2. ใช้ debug(x) เพื่อแสดงค่าของตัวแปร x
 * 3. ใช้ debug(x, y, z) เพื่อแสดงค่าของหลายตัวแปรในคราวเดียว
 */

#ifndef DEBUG_H
#define DEBUG_H

#include <bits/stdc++.h>
#include <iostream>

// ปิดการแสดงผลดีบั๊กในโหมด ONLINE_JUDGE หรือเมื่อส่งโค้ดไปยัง platform การแข่งขัน
#ifdef ONLINE_JUDGE
#define debug(...) 42
#else
#define debug(...)                        \
  cerr << "[" << #__VA_ARGS__ << "] = ["; \
  _print(__VA_ARGS__)
#endif

// ฟังก์ชันพื้นฐานสำหรับการพิมพ์ค่าต่างๆ
void _print() { cerr << "]\n"; }

template <typename T, typename... V>
void _print(T t, V... v)
{
  print(t);
  if (sizeof...(v))
    cerr << ", ";
  _print(v...);
}

// ฟังก์ชันพิมพ์สำหรับประเภทข้อมูลพื้นฐาน
void print(int x) { cerr << x; }
void print(long long x) { cerr << x; }
void print(unsigned int x) { cerr << x; }
void print(unsigned long long x) { cerr << x; }
void print(float x) { cerr << x; }
void print(double x) { cerr << x; }
void print(long double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const char *x) { cerr << '\"' << x << '\"'; }
void print(const std::string &x) { cerr << '\"' << x << '\"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

// ฟังก์ชันพิมพ์สำหรับ pair
template <typename T, typename V>
void print(const std::pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

// ฟังก์ชันพิมพ์สำหรับ vector
template <typename T>
void print(const std::vector<T> &v)
{
  cerr << "vec[";
  for (int i = 0; i < v.size(); i++)
  {
    print(v[i]);
    if (i != v.size() - 1)
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชันพิมพ์สำหรับ set
template <typename T>
void print(const std::set<T> &s)
{
  cerr << "set{";
  int i = 0;
  for (const auto &x : s)
  {
    print(x);
    if (++i != s.size())
      cerr << ", ";
  }
  cerr << "}";
}

// ฟังก์ชันพิมพ์สำหรับ multiset
template <typename T>
void print(const std::multiset<T> &s)
{
  cerr << "mset{";
  int i = 0;
  for (const auto &x : s)
  {
    print(x);
    if (++i != s.size())
      cerr << ", ";
  }
  cerr << "}";
}

// ฟังก์ชันพิมพ์สำหรับ map
template <typename T, typename V>
void print(const std::map<T, V> &m)
{
  cerr << "map{";
  int i = 0;
  for (const auto &x : m)
  {
    print(x);
    if (++i != m.size())
      cerr << ", ";
  }
  cerr << "}";
}

// ฟังก์ชันพิมพ์สำหรับ unordered_map
template <typename T, typename V>
void print(const std::unordered_map<T, V> &m)
{
  cerr << "umap{";
  int i = 0;
  for (const auto &x : m)
  {
    print(x);
    if (++i != m.size())
      cerr << ", ";
  }
  cerr << "}";
}

// ฟังก์ชันพิมพ์สำหรับ queue
template <typename T>
void print(std::queue<T> q)
{
  cerr << "queue[";
  int size = q.size();
  for (int i = 0; i < size; i++)
  {
    print(q.front());
    q.pop();
    if (i != size - 1)
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชันพิมพ์สำหรับ priority_queue
template <typename T>
void print(std::priority_queue<T> pq)
{
  cerr << "pq[";
  int size = pq.size();
  for (int i = 0; i < size; i++)
  {
    print(pq.top());
    pq.pop();
    if (i != size - 1)
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชันพิมพ์สำหรับ stack
template <typename T>
void print(std::stack<T> s)
{
  std::vector<T> v;
  while (!s.empty())
  {
    v.push_back(s.top());
    s.pop();
  }
  std::reverse(v.begin(), v.end());

  cerr << "stack[";
  for (int i = 0; i < v.size(); i++)
  {
    print(v[i]);
    if (i != v.size() - 1)
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชันพิมพ์สำหรับ array
template <typename T, size_t N>
void print(const std::array<T, N> &arr)
{
  cerr << "array[";
  for (size_t i = 0; i < N; i++)
  {
    print(arr[i]);
    if (i != N - 1)
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชันพิมพ์ทั่วไปสำหรับ container ที่ไม่ได้ระบุเฉพาะข้างต้น
template <typename T>
void print(const T &container)
{
  cerr << "[";
  int i = 0;
  for (const auto &x : container)
  {
    print(x);
    if (++i != container.size())
      cerr << ", ";
  }
  cerr << "]";
}

// ฟังก์ชัน debug ที่รองรับหลายบรรทัด (สำหรับการแสดงผลที่ซับซ้อน)
#define debugln(x)             \
  cerr << "[" << #x << "] = "; \
  print(x);                    \
  cerr << "\n"

// ฟังก์ชันสำหรับแสดง array ขนาดคงที่
template <typename T>
void debugArray(T arr[], int n, const char *name)
{
  cerr << "[" << name << "] = [";
  for (int i = 0; i < n; i++)
  {
    print(arr[i]);
    if (i != n - 1)
      cerr << ", ";
  }
  cerr << "]\n";
}

// ฟังก์ชันสำหรับแสดงเวลาที่ใช้
#define TIME_IT(func)                                       \
  {                                                         \
    auto start = std::chrono::high_resolution_clock::now(); \
    func;                                                   \
    auto end = std::chrono::high_resolution_clock::now();   \
    std::chrono::duration<double> diff = end - start;       \
    cerr << "Time: " << diff.count() << " s\n";             \
  }

#endif // DEBUG_H