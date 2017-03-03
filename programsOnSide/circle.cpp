
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <cstdlib>
#include <string>

//#def true 1/
//#def false 0

using namespace std;
string arrName = "arr";
int arr[50][50] = {0};

void displayPicture(int i, int j);
void displayArray(int i, int j);
int main(int argc, char* argv[]) {
  int offset = 0;  // border around the O (currently NOT functional

  int centerI = 24;
  int centerJ = 24;
  int thickness = 2;  // how thick do you want the O to be?

  int thickTemp = thickness - 1;  // currently not used
  bool displayPic = false;
  int radius = 15;
  if (argc == 1) {
    arrName = "arr";
  } else if (argc == 2)  // display picture or display array
  {
    //      cout << "ARGV[1]" << argv[1]<< endl;
    if (strcmp(argv[1], "picture") == 0)
      displayPic = true;
    else
      arrName = argv[1];

  } else
    arrName = argv[1];

  for (int i = 0; i < 50; i++)
    for (int j = 0; j < 50; j++) {
      int iOffset = i - centerI;
      int jOffset = j - centerJ;
      int product = iOffset * iOffset + jOffset * jOffset;
      int radsq = radius * radius;
      int newRadSq = (radius + thickness) * (radius + thickness);
      if (product > radsq && product < newRadSq)
        //      && (i>offset && j > offset && i < 50-offset && j <
        //50-offset))
        arr[i][j] = 1;
    }

  for (int i = 0; i < 50; i++) {
    for (int j = 0; j < 50; j++) {
      if (displayPic == true)
        displayPicture(i, j);
      else if (displayPic == false)
        displayArray(i, j);

      //     if(j%10 ==0)
      //  cout << endl;
    }
    //      if(i%10 == 0)
    cout << endl;
  }

  return 0;
}

void displayPicture(int i, int j) {
  if (arr[i][j] == 1)
    cout << 1;
  else
    cout << " ";
}

void displayArray(int i, int j) {
  if (arr[i][j] == 1)
    cout << arrName << "[" << i << "][" << j << "]=" << arr[i][j] << ";  ";

  if (j % 10 == 0) cout << endl;
}
