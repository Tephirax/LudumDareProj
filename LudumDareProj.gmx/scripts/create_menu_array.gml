// Create menu arrays
// Builds item_array by checking global.master_item_list 
// menu_array is a 2d array; first value is the type of object (0 = items; allows for additional menus to be added if required)
// second value is the item information: 0 = item number, related obj, 1 = name, 2 = number owned (0 or 1 for non-consumables)

// item_array
itemn = 0;
for (i = 0; i <= GameState.item_count; i += 1)
{
    if (GameState.master_item_list[i, 3] > 0) // Includes only owned items from master_item_list in item_array
    {
        item_array[itemn, 0] = GameState.master_item_list[i, 0]; // Item number from master list 
        item_array[itemn, 1] = GameState.master_item_list[i, 1]; // Name
        item_array[itemn, 2] = GameState.master_item_list[i, 2]; // Associated GameMaker Object 
        item_array[itemn, 3] = GameState.master_item_list[i, 3]; // Owned
        itemn += 1;
    } 
}
