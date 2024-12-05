#include <iostream>
#include <queue>
using namespace std;

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(NULL);

  int n;
  while (cin >> n && n)
  {
    queue<int> cards;

    for (int i = 1; i <= n; i++)
    {
      cards.push(i);
    }

    cout << "Discarded cards:";
    bool first = true;

    while (cards.size() > 1)
    {
      if (!first)
        cout << ",";
      cout << " " << cards.front();
      cards.pop();

      int next = cards.front();
      cards.pop();
      cards.push(next);

      first = false;
    }

    cout << "\nRemaining card: " << cards.front() << "\n";
  }

  return 0;
}