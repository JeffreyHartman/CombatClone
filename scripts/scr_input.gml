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
}
