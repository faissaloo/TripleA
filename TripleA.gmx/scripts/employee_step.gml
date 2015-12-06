///employee_step()
if global.money<0
{
    move_towards_point(-100,y,3)
}

if _show_menu=false //Reset the depth if the menu isn't being shown
{
    depth=-y
}

