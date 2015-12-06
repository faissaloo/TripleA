///employee_create_event()
//Declare variables
alarm[0]=60
global.game_speed+=1
if global.loaded=true
{
    //show_message("Loaded#Level: "+string(global.level)+"#pc_level: "+string(global.pc_level))
    level=global.level
    pc_level=global.pc_level
    //Just incase, we'll make sure that everything gets reset to the defaults so that we don't a bunch of random employees at max level while loading
    global.level=1
    global.pc_level=1
}
else
{
    level=1
    pc_level=1
}
//For the menu
_show_menu=false
menu_val=0
spawnx=0
spawny=0
spawnon=false
//For the random text
text_alpha=0
textlog=""
oldtextlog=""

alarm[1]=200+irandom(1000)

depth=-y

//path_add_point(ethernet_cables_path,x,y,1)
