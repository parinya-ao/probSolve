#include <iostream>
using namespace std;

int main()
{
  int x = 0, y = 0;
  string a;
  cin >> a;
  int i = 0;
  while (i < a.length())
  {
    if (a[i] == 'N')
    {
      x++;
    }
    else if (a[i] == 'E')
    {
      y++;
    }
    else if (a[i] == 'S')
    {
      x--;
    }
    else if (a[i] == 'W')
    {
      y--;
    }
    else if (a[i] == 'Z')
    {
      x = 0;
      y = 0;
    }
    i++;
  }
  cout << y << " " << x << endl;
  return 0;
};