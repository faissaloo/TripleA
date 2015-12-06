///choose_placement()
if global.xplacement>644/32
{
    global.xplacement=0
    global.yplacement+=1
}
else
{
    if global.yplacement>464/32
    {
        global.yplacement=0
    }
    global.xplacement+=1
}


placex=320+(global.xplacement*32)
placey=128+(global.yplacement*32)
