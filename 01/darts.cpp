#include <iostream>
#include <cmath>

using namespace std;

int main()

{
  ios::sync_with_stdio(false);
  cin.tie(NULL);
  int n;
  cin >> n;
  int scoure = 0;
  int x = 0, y = 0;
  while (n--)
  {
    cin >> x >> y;
    double distance = sqrt((x * x) + (y * y));
    if (distance <= 2)
    {
      scoure += 5;
    }
    else if (distance <= 4)
    {
      scoure += 4;
    }
    else if (distance <= 6)
    {
      scoure += 3;
    }
    else if (distance <= 8)
    {
      scoure += 2;
    }
    else if (distance <= 10)
    {
      scoure += 1;
    }
  }
  cout << scoure << endl;
  return 0;
}