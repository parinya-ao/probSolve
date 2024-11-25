#include <iostream>

using namespace std;

int main()
{
  int n;
  cin >> n;
  int s = 0;
  int num;
  while (n--)
  {
    cin >> num;
    if (num >= 0)
    {
      s += num;
    }
  }
  cout << s;

  return 0;
}