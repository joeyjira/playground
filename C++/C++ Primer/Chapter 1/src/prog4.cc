#include <iostream>

int main() {
  std::cout << "Enter Two Numbers:" << std::endl;
  int x = 0, y = 0;
  std::cin >> x >> y;
  while (x < y) {
    std::cout << ++x << std::endl;
  }

  return 0;
}
