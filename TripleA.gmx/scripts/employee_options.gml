///employee_options()
if _show_menu=true
{
    menu_val=draw_menu(" |nTrain: £50 |nUpgrade PC £"+string(pc_level*300)+" |nFire",make_color_rgb(245,241,222),c_black,spawnx,spawny,5,5,35,mb_left)
    if menu_val!=-1 //If an item was clicked
    {
        if menu_val=1 //If the user has chosen to train the player
        {
            if level!=4 //Check that the worker isn't already max level
            {
                level+=1
                global.money-=50 //Take away £50 from the amount of money
                global.moneylog="-£50 upgrade" //Show a message in the log
                
                repeat(irandom(15)) //Show a random number of sparkles
                {
                    audio_play_sound(upgrade_snd,1,false)
                    instance_create(x-20+irandom(40),y-20+irandom(40),Sparkle_handler) //Crappy particle effect
                }
            }
            else
            {
                global.moneylog="Cannot upgrade further"
            }
        }
        else if menu_val=2 //If they chose to fire the character
        {
            //Upgrade the computer
            if global.money>=300*pc_level and pc_level<=3 //Check if there is both enough money and have not reached the max level
            {
                global.money-=300*pc_level
                pc_level+=1
                global.moneylog="-£"+string(300*pc_level)+" Bought a new PC for employee"
            }
            else
            {
                global.moneylog="Can not upgrade"
            }
        }
        else if menu_val=3 //If they chose to fire the character
        {
            global.moneylog="Employee fired"
            move_towards_point(-100,-100,10)//The character leaves
        }
        _show_menu=false //Hide the menu again
        menu_val=0 //And reset the variable we use to store the choice
    }
}
