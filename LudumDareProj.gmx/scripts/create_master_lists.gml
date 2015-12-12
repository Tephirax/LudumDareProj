// Create master item list array

// All possible items should have an entry in this list, with 'number carried' set to 0 if player does not start with the item
// When player encounters item, code in User Event 0 of the item object defines interaction
// eg. A simple 'pick up item' interaction:
//      global.master_item_list[0, 2] = 1;
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

// #1 - Tomato
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Tomato';
master_item_list[item_count,2] = obj_item1_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;

// #2 - Lettuce
item_count += 1;
master_item_list[item_count,0] = item_count;
master_item_list[item_count,1] = 'Lettuce';
master_item_list[item_count,2] = obj_item2_menu; 
master_item_list[item_count,3] = 1; 
master_item_list[item_count,4] = 8;
master_item_list[item_count,5] = 20;
master_item_list[item_count,6] = 10;
/*
// #3 - Flower 1
global.item_count = 0;
global.master_item_list[global.item_count,0] = global.item_count;
global.master_item_list[global.item_count,1] = 'Flower 1';
global.master_item_list[global.item_count,2] = obj_item3_menu; 
global.master_item_list[global.item_count,3] = 1; 
global.master_item_list[global.item_count,4] = 8;
global.master_item_list[global.item_count,5] = 20;
global.master_item_list[global.item_count,6] = 10;

// #4 - Flower 2
global.item_count += 1;
global.master_item_list[global.item_count,0] = global.item_count;
global.master_item_list[global.item_count,1] = 'Flower 2';
global.master_item_list[global.item_count,2] = obj_item4_menu; 
global.master_item_list[global.item_count,3] = 1; 
global.master_item_list[global.item_count,4] = 8;
global.master_item_list[global.item_count,5] = 20;
global.master_item_list[global.item_count,6] = 10;

// #5 - Flower 3
global.item_count += 1;
global.master_item_list[global.item_count,0] = global.item_count;
global.master_item_list[global.item_count,1] = 'Flower 3';
global.master_item_list[global.item_count,2] = obj_item5_menu; 
global.master_item_list[global.item_count,3] = 1; 
global.master_item_list[global.item_count,4] = 8;
global.master_item_list[global.item_count,5] = 20;
global.master_item_list[global.item_count,6] = 10;
*/
/*
// Create master option list array (if required)
// i) option name
// ii) related object
// iii) option available (0 for no, 1 for yes)

// Status
global.option_count = 0;
global.master_option_list[0,0] = 'Status';
global.master_option_list[0,1] = o_option_a;
global.master_option_list[0,2] = 1;

// Weapon Levels
global.option_count += 1;
global.master_option_list[1,0] = 'Equipment';
global.master_option_list[1,1] = o_option_b;
global.master_option_list[1,2] = 1;
*/
