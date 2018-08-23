#include <iostream>
#include "Sales_item.h"

int main() {
  Sales_item item1, item2;
  // Read ISBN, number of copies sold, and sales price
  std::cin >> item1 >> item2;
  // Write ISBN, number of copies sold, total revenue, and average price
  std::cout << item1 + item2 << std::endl;
  return 0;
}
