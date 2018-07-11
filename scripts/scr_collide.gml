//slows you down when you are about to hit a wall

if(place_meeting(x+hsp,y,obj_collide))
{
    while(!place_meeting(x+sign(hsp),y,obj_collide))
    {
        do x += sign(hsp)
        until place_meeting(x+sign(hsp),y,obj_collide)
        break
    }
    x -= sign(hsp)
    hsp = 0
}

if(place_meeting(x,y+vsp,obj_collide))
{
    while(!place_meeting(x,y+vsp,obj_collide))
    {
        do y += sign(vsp)
        until place_meeting(x,y+vsp,obj_collide)
        break
    }
    y -= sign(vsp)
    vsp = 0
}
/*if(!place_free(x+hsp,y))
{
    if (hsp > 0)
    {
        move_contact_solid(0, hsp)
    }
    if (hsp < 0)
    {
        move_contact_solid(180, -hsp)
    }
    hsp = 0
}

if(place_meeting(x,y+vsp,obj_collide))
{
    while(!place_meeting(x,y+sign(vsp),obj_collide))
    {
        y += sign(vsp)
    }
    vsp = 0
    
}
