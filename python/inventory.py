player_inventory = {
    'rope': 1,
    'torch': 6,
    'gold coin': 42,
    'dagger': 1,
    'arrow': 12
}

dragon_loot = [
    'gold coin',
    'dagger',
    'gold coin',
    'gold coin',
    'ruby'
]

def display_inventory(inventory):
    total_items = 0
    print('Inventory:')
    for item, number in inventory.items():
        total_items += number
        print(str(number) + ' ' + item)
    print('Total number of items: ' + str(total_items))

def add_to_inventory(inventory, added_items):
    for item in added_items:
        inventory.setdefault(item, 0)
        inventory[item] += 1

display_inventory(player_inventory)
add_to_inventory(player_inventory, dragon_loot)
display_inventory(player_inventory)