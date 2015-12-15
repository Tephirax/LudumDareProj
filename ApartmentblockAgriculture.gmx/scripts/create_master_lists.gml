// Create master item list array

// All possible items should have an entry in this list, with 'number carried' set to 0 if player does not start with the item
// When player encounters item, code in User Event 0 of the item object defines interaction
// eg. A simple 'pick up item' interaction:
//      master_item_list[0, 2] = 1;
//      show_debug_message("Item 1 added to inventory.");
//      instance_destroy();

// Array values are mapped as follows:
// 0) item number
// 1) item name
// 2) related object
// 3) number carried
// 4) max number which can be carried
// 5) buy price of item
// 6) sell price of item

// #0 - Onion
item_count = 0;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Onion';
master_item_list[item_count,2] = obj_item0_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_onion;

// #1 - Tomato
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Tomato';
master_item_list[item_count,2] = obj_item1_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_tomato;

// #2 - Lettuce
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Lettuce';
master_item_list[item_count,2] = obj_item2_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_lettuce;
/*
// #3 - Flower 1
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Flower 1';
master_item_list[item_count,2] = obj_item3_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_flower1;

// #4 - Flower 2
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Flower 2';
master_item_list[item_count,2] = obj_item4_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_flower2;

// #5 - Flower 3
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Flower 3';
master_item_list[item_count,2] = obj_item5_menu; 
master_item_list[item_count,3] = 1;
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
master_item_list[item_count,7] = spr_menu_flower3;
*/

// Create master achievement list array
// i) achievement name
// ii) # onion required 
// iii) # tomato required 
// iv) # lettuce required
// v) achievement met? ( 0 = no, 1 = yes )

ach_count = 0;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = 'Om-noms';
master_achievement_list[ach_count,2] = 1; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = 'Vegetable or Fruit?';
master_achievement_list[ach_count,2] = 0; // Onions
master_achievement_list[ach_count,3] = 1; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = 'Side-salad';
master_achievement_list[ach_count,2] = 0; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 1; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "French onion soup";
master_achievement_list[ach_count,2] = 2; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Let's call the whole thing off";
master_achievement_list[ach_count,2] = 0; // Onions
master_achievement_list[ach_count,3] = 2; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Onion marmalade";
master_achievement_list[ach_count,2] = 3; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Ketchup";
master_achievement_list[ach_count,2] = 0; // Onions
master_achievement_list[ach_count,3] = 3; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "One-note salad";
master_achievement_list[ach_count,2] = 0; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 3; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Salsa";
master_achievement_list[ach_count,2] = 1; // Onions
master_achievement_list[ach_count,3] = 1; // Tomato
master_achievement_list[ach_count,4] = 0; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Greek salad";
master_achievement_list[ach_count,2] = 1; // Onions
master_achievement_list[ach_count,3] = 0; // Tomato
master_achievement_list[ach_count,4] = 1; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met

ach_count += 1;
master_achievement_list[ach_count,0] = ach_count;
master_achievement_list[ach_count,1] = "Burger";
master_achievement_list[ach_count,2] = 1; // Onions
master_achievement_list[ach_count,3] = 1; // Tomato
master_achievement_list[ach_count,4] = 1; // Lettuce
master_achievement_list[ach_count,5] = 0; // Achievement met
