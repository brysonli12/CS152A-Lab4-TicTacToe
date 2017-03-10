
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <cstdlib>
#include <string>


using namespace std;
string arrName = "arr";
int arr[50][50] = {0};

void displayPicture(int i, int j);
void displayArray(int i, int j);
int main(int argc, char* argv[]) {
  int offset = 0;     // border around the X
  int thickness = 2;  // how thick do you want the x to be?
  int thickTemp = thickness - 1;
  bool displayPic = false;

  if (argc == 1) {
    cout << "USAGE: ./m152a nameOfArray (outputs an array for X)\n./m152a "
            "picture (outputs a picture corresponding to the array for X)";
    exit(1);             // arrName = "arr";
  } else if (argc == 2)  // display picture or display array
  {
    //      cout << "ARGV[1]" << argv[1]<< endl;
    if (strcmp(argv[1], "picture") == 0)
      displayPic = true;
    else
      arrName = argv[1];

  } else
    arrName = argv[1];
  // int arr[50][50]={0};
  for (int i = 0; i < 50; i++)
    for (int j = 0; j < 50; j++)
      if ((i >= j - thickTemp && i <= j ||
           (i >= (50 - j - thickTemp) && i <= 50 - j)) &&
          (i > offset && j > offset && i < 50 - offset && j < 50 - offset))
        arr[i][j] = 1;

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
