#include <bits/stdc++.h>
using namespace std;
#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long

signed main()
{
  fastio;
  int n;
  cin >> n;

  map<int, int> likes;                // status ID -> จำนวน likes
  map<pair<int, int>, int> last_time; // (status ID, จำนวน like) -> เวลาล่าสุด

  for (int i = 0; i < n; ++i)
  {
    int op, status;
    cin >> op >> status;

    if (op == 1)
    {
      // กด Like
      likes[status]++;
    }
    else
    {
      // กด Unlike
      likes[status]--;
      if (likes[status] == 0)
      {
        // ถ้าไม่มี like เหลือ ให้ลบออกจาก map
        likes.erase(status);
      }
    }

    // ถ้าเจอ
    if (likes.find(status) != likes.end())
    {
      last_time[{status, likes[status]}] = i;
    }

    int max_likes = 0;
    for (const auto &[id, count] : likes)
    {
      max_likes = max(max_likes, count);
    }

    int max_status = -1;
    int latest_time = -1;

    for (const auto &[id, count] : likes)
    {
      if (count == max_likes)
      {
        int time = last_time[{id, count}];
        if (time > latest_time)
        {
          latest_time = time;
          max_status = id;
        }
      }
    }

    cout << max_status << "\n";
  }

  return 0;
}