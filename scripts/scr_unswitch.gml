//same thing as scr_switch but backwards

var controlindex = ds_list_find_index(global.playerlist, global.controlled ) - 1
if(controlindex == -1)
{
    var controlindex = ds_list_size(global.playerlist) - 1
}
global.controlled = ds_list_find_value(global.playerlist, controlindex)

show_debug_message("reached")
