var len = 32;
if (self.player == 1)
{
    if (keyboard_check(ord("D")))
    {
        direction-= 4;
    }
    if (keyboard_check(ord("A")))
    {
        direction += 4;
    }
    if (keyboard_check(ord("W")))
    {
        speed = 1;
    }
    if (keyboard_check(ord("S")))
    {
        speed = -1;
    }
    if (keyboard_check_released(ord("W")) || keyboard_check_released(ord("S")))
    {
        speed = 0;
    }
    if (keyboard_check_pressed(vk_space))
    {
        if (!self.firedisabled)
        {
            firedisabled = true;            
            p1_bullet = instance_create(x+lengthdir_x(len,direction),y+lengthdir_y(len,direction), obj_bullet);
            p1_bullet.direction = global.p1.direction;
            p1_bullet.player = 1;
        }
    }
}
else if (self.player == 2)
{
    if (keyboard_check(vk_right))
    {
        direction -= 4;
    }
    if (keyboard_check(vk_left))
    {
       direction  += 4;
    }
    if (keyboard_check(vk_up))
    {
        speed = 1;
    }
    if (keyboard_check(vk_down))
    {
        speed = -1;
    }
    if (keyboard_check_released(vk_up) || keyboard_check_released(vk_down))
    {
        speed = 0;
    }
    if (keyboard_check_pressed(vk_enter))
    {
        if (!self.firedisabled)
        {
            firedisabled = true;
            p2_bullet = instance_create(x+lengthdir_x(len,direction),y+lengthdir_y(len,direction), obj_bullet);
            p2_bullet.direction = global.p2.direction;
            p2_bullet.player = 2;
        }
    }
}
