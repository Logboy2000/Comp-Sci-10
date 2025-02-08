var __b__;
__b__ = action_if_next_room();
if __b__
{
{
action_sound(sndExit, 0);
action_next_room();
}
}
else
{
{
action_message("YOU WIN!!");
action_restart_game();
}
}
