all_guests = {
    'Alice': {'apples': 5, 'pretzels': 12},
    'Bob': {'hame sandwiches': 3, 'apples': 2},
    'Carol': {'cups': 3, 'apple pies': 1}
}

def total_brought(guests, item):
    num_brought = 0
    for k, v in guests.items():
        num_brought += v.get(item, 0)
    return num_brought

print('- Apples: ' + str(total_brought(all_guests, 'apples')))