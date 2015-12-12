/// Controls menu in Menu Controller object
var t; // time
t = argument1;
switch(argument0)
{
    case 0: // Action to be performed upon state initialisation
        show_debug_message("obj_MenuController begins state st_menu");
        GameState.isMenu = true; // Pause game action & switch to menu controls
        InputController.menu = false;
        InputController.menuButtonPressed = false;
        menuItemSelected = -1;
        InputController.menuButtonConfirmed = false;
        // Set up ring menu & initialise variables
        create_menu_array(); // Script to check master item list and create item_array containing items to display; 
        if ( itemn > 0 ) { // If there are any items in the inventory
            // Darken screen
            /*if ( instance_exists(obj_screenfade) ) { 
                obj_screenfade.screen_alpha = 0.4;
            }
            // Raise player sprite above screenfade
            obj_player_fsm.depth -= 11000;
            */
            menu_layer = 0; // Starting layer of menu (first value in item_array)
            menu_layer_max = 0; // Since we're only having one level of ring menu in this game
            if (menu_layer == 0)
            {
                for (i = 0; i < itemn; i += 1) // Copy item_array[] to menu_array[]
                {
                    for (j = 0; j <= 3; j += 1)
                    {
                        menu_array[i, j] = item_array[i, j];
                    }
                }
                menu_n = itemn;
            }
            angle = 360 / menu_n;
            orbit_size = 50; // Final distance from centre to orbit
            max_orbit = 360; // Total orbit (for expansion)
            orbit = max_orbit; // Current distance from centre to orbit
            contract_speed = 10; // Speed of contraction
            spiral_offset = (360 - orbit_size)/2; // Angle offset of start of spiral 
            spiral_speed = 5; // Speed of rotation
            for (i = 0; i < menu_n; i += 1) // Space items around ring
            {
                target_angle[i] = (angle*i) + 90;
                current_angle[i] = target_angle[i] + spiral_offset;
                ringmenu[i] = instance_create(x + lengthdir_x(orbit, current_angle[i]), y + lengthdir_y(orbit, current_angle[i]), menu_array[i, 2]);
            }
            spiral = 1; // Set flag to finish animation in case 2 (Step event)
            
        } 
        break;
    case 1: // Action to be performed before state is replaced
        show_debug_message("state st_menu is now closing");
        InputController.menuButtonConfirmed = false; // Reset menuButtonConfirmed flag
        GameState.isMenu = false; // Unpause game action & switch back to normal controls
        if ( itemn > 0 ) {
            // Lighten screen
            /*if ( instance_exists(obj_screenfade) ) {
                obj_screenfade.screen_alpha = 0;
            }*/
            for (i = 0; i < menu_n; i += 1) // Destroy all items in menu
            {
                with ringmenu[i]
                {
                    instance_destroy();
                }
            }
            //        with textbox instance_destroy(); TODO: Probably need to replace this with call to the Window_Base object
            if ( instance_exists(obj_selector) ) {
                with selector instance_destroy();
            }
        }
        instance_destroy(); // Destroy menu controller object
        break;
    case 2: // Action 0 to be performed in Step event
        // If item has been selected, close menu
        if ( InputController.menuButtonConfirmed == true ) {
            show_debug_message("menuButtonConfirmed is true, so state st_menu will be closed.")
            statestop();
        }
        
        if ( itemn > 0 ) {
            if (spiral == 1) // If in process of opening, iterate to next step of opening animation
            {
                if (orbit >= orbit_size)
                {
                    for (i = 0; i < menu_n; i += 1)
                    {
                        ringmenu[i].x = x + lengthdir_x(orbit, current_angle[i]);
                        ringmenu[i].y = y + lengthdir_y(orbit, current_angle[i]);
                        current_angle[i] = current_angle[i] - spiral_speed; 
                    }
                    orbit -= contract_speed;
                }
                else // If menu has finished opening, create selector & text box
                { 
                    selector = instance_create(ringmenu[0].x, ringmenu[0].y, obj_selector);
                    id_tag = 0;// Tag selected weapon/item/option (so can be uniquely described by menu_layer + id_tag)
                    // textbox = instance_create(0, 0, o_windowcontroller); TODO: Update textbox to use Window_Base object.
                    // textbox.item_name = weapon_array[id_tag, 1];
                    // textbox.num_of_items = weapon_array[id_tag, 2];
                    // textbox.menu_layer = menu_layer;
                    spiral = 0; // Flag that ring menu is no longer opening
                }
            }
            else if (close == 1) // If in process of closing, iterate to next step of closing animation
            {
                if (orbit > 0)
                {
                    for (i = 0; i < menu_n; i += 1)
                    {
                        ringmenu[i].x = x + lengthdir_x(orbit, target_angle[i]);
                        ringmenu[i].y = y + lengthdir_y(orbit, target_angle[i]);
                        target_angle[i] = target_angle[i] - spiral_speed;
                    }
                    orbit -= contract_speed;
                }
                else // If menu has finished closing, stop st_ch_menu state
                {
                    close = 0;
                    statestop();
                }
            }
            else if (left_rot = 1) // Perform left rotation
            {
                if (targ_set = 1)
                {
                    if (target_angle[0] < target_angle_new[0])
                    {
                        for (i = 0; i < menu_n; i +=1)
                        {
                            target_angle[i] += 10;
                            ringmenu[i].x = x + lengthdir_x(orbit_size, target_angle[i]);
                            ringmenu[i].y = y + lengthdir_y(orbit_size, target_angle[i]);
                        }
                    }
                    else 
                    {
                        id_tag -= 1;
                        show_debug_message("id_tag = " + string(id_tag));
                        if (id_tag < 0) { id_tag = menu_n - 1; }                
                        if (menu_layer == 0)
                        {
                            //textbox.item_name = item_array[id_tag, 1];
                            show_debug_message("item_name = " + item_array[id_tag, 1]);
                            show_debug_message("item_number = " + string(item_array[id_tag, 0]));
                        }
                        targ_set = 0;
                        left_rot = 0;    
                    }
                }
                else
                {
                    // Initialise rotation
                    for (i = 0; i < menu_n; i += 1)
                    {
                        // Set target angle
                        target_angle_new[i] = target_angle[i] + angle;  
                        targ_set = 1; 
                    }
                }
            }
            else if (right_rot = 1)
            {
                if (targ_set = 1)
                {
                    if (target_angle[0] > target_angle_new[0])
                    {
                        for (i = 0; i < menu_n; i +=1)
                        {
                            target_angle[i] -= 10;
                            ringmenu[i].x = x + lengthdir_x(orbit_size, target_angle[i]);
                            ringmenu[i].y = y + lengthdir_y(orbit_size, target_angle[i]);
                        }
                    }
                    else 
                    {
                        id_tag += 1;
                        show_debug_message("id_tag = " + string(id_tag));
                        if (id_tag == menu_n) { id_tag = 0; }
                        if (menu_layer == 0)
                        {
                            if (id_tag < 0) { id_tag = itemn; } // If item id is rotated below zero, set it to max item id number in the list
                            //                      textbox.item_name = item_array[id_tag, 1];
                            show_debug_message("item_name = " + item_array[id_tag, 1]);
                            show_debug_message("item_number = " + string(item_array[id_tag, 0]));
                        }
                        targ_set = 0;
                        right_rot = 0;    
                    }
                }
                else
                {
                    // Initialise rotation
                    for (i = 0; i < menu_n; i += 1)
                    {
                        // Set target angle
                        target_angle_new[i] = target_angle[i] - angle;  
                        targ_set = 1; 
                    }
                }
            }
        }
        
        else {
            show_debug_message("No items in menu_array. Exiting st_menu");
            statestop();
        }
        
        break;
}
