//slows you down when you are about to hit a wall

while(place_meeting(x+hsp,y,obj_collide))
{

    hsp = hsp/4
}

while(place_meeting(x,y+vsp,obj_collide))
{
    vsp = vsp/4
}
