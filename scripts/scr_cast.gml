// firespell
if(argument0 == "firespell")
{
    show_debug_message("here")
    //if(ds_list_find_index(spellsout, "firespell") = -1)
    if(!instance_exists(obj_firespell) or obj_firespell.caster != self)
    {
        ds_list_add(spellsout, "firespell" )
        if(!global.targetting)
        {
            if(!instance_exists(obj_firespell) or obj_firespell.caster != self)
            instance_create(self.x, self.y, obj_firespell)
            return(0)
        }
    }   
    if(obj_firespell.caster = self)
    {
        ds_list_add(spellsout, "firespell" )
        return(obj_firespell.cooldown)
    }
}

//slash
if(argument0 = "slash")
{
    if(ds_list_find_index(spellsout, "slash") = -1)
    {
        ds_list_add(spellsout, "slash")
        instance_create(self.x, self.y, obj_slash)
        return(obj_slash.cooldown)
    }
}
