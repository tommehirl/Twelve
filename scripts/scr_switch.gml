//pulls character number off list, increments and then changes controlled character
show_debug_message("initiate switch")
var controlindex = ds_list_find_index(global.playerlist, global.controlled ) + 1
if(controlindex == ds_list_size(global.playerlist))
{
    var controlindex = 0
}
global.controlled = ds_list_find_value(global.playerlist, controlindex)

show_debug_message("finished switch")
