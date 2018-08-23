#include <iostream>
#include "Sales_item.h"

int main() {
  Sales_item item1, item2;
  // Read ISBN, number of copies sold, and sales price
  std::cin >> item1 >> item2;
  // First check that item1 and item2 represent the same book
  if (item1.isbn() == item2.isbn()) {
    std::cout << item1 + item2 << std::endl;
    return 0;   // Indicate success
  } else {
    std::cerr << "Data must refer to same ISBN"
              << std::endl;
    return -1;  // Indicate failure
  }
}
