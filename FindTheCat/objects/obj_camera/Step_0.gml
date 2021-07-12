/// @description Insert description here
// You can write your code in this editor
if (instance_exists(follow))
{
xTo = follow.x; // You can mess with +500 to make you object further and closer to the left
yTo = follow.y - 100;
}

x += (xTo - x);
y += (yTo - y);

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);