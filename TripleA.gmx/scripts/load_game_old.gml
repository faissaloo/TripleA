///load_game()
/*
//Unfortunately some of the stuff is returning "Not Found" when they shouldn't be
//load_game_key("[Dummy]Dummy")//Since the first item isn't there, we'll be needing a dummy
global.code=real(load_game_key("Mgcode"))
global.art=real(load_game_key("Mgart"))
//load_game_key("[Dummy]Dummy")//Why is it that every few variables there are things not being found?
global.world=real(load_game_key("Mgworld"))
global.game_speed=real(load_game_key("Mggame_speed"))
global.day=real(load_game_key("Mgday"))
global.exposure=real(load_game_key("Mgexposure"))
global.quality=real(load_game_key("Mgquality"))
global.hunger=real(load_game_key("Mghunger"))
global.thirst=real(load_game_key("Mgthirst"))
global.servers[0]=real(load_game_key("Mgservers0"))
global.servers[1]=real(load_game_key("Mgservers1"))
global.servers[2]=real(load_game_key("Mgservers2"))
global.xplacement=real(load_game_key("Mgxplacement"))
global.yplacement=real(load_game_key("Mglobalyplacement"))
Game.buys=real(load_game_key("MGbuys"))
global.money=real(load_game_key("Mgmoney"))
ModemBasic_obj.level=real(load_game_key("MModemBasiclevel"))

//
global.loaded=false //This is so that the worker instance knows if it's being loaded or if it's a new instance

//Programmers
exists=true
iiiiii=0
xx=""
while exists=true
{
    xx=load_game_key("P"+string(iiiiii)+"x")
    if xx="Not Found"
    {
        show_message(iiiiii)
        exists=false
    }
    else
    {
        var inst;
        global.loaded=true
        //Load all of the variables associated with programmers into some sort of global buffer
        //global.level=
        //global.pc_level=
        
        //show_message(load_game_key("[Programmers]"+string(ii)+".x")+","+load_game_key("[Programmers]"+string(ii)+".y"))//Here we can see an issue with both these keys not being found, this is also an issue with the other workers too
        //Create a programmer instance, which will see that there is something in the buffer and set the associated variables in itself
        inst=instance_create(real(xx),real(load_game_key("P"+string(iiiiii)+"y")),Programmer_obj)
        inst.level=real(load_game_key("P"+string(iiiiii)+"l"))
        inst.pc_level=real(load_game_key("P"+string(iiiiii)+"pcl"))
        //inst.x=real(load_game_key("[Programmers]"+string(ii)+".x"))
        //inst.y=real(load_game_key("[Programmers]"+string(ii)+".y"))
        global.loaded=false
        //Clear buffers
        //ii+=1
    }
    iiiiii+=1
}
//Programmers
exists=true
iiiiiii=0
xxx="" //Lenny face
while exists=true
{
    xxx=load_game_key("S"+string(iiiiiii)+"x")
    if xxx="Not Found"
    {
        exists=false
    }
    else
    {
        var inst;
        global.loaded=true
        //Load all of the variables associated with programmers into some sort of global buffer
        //global.level=
        //global.pc_level=
        
        //show_message(load_game_key("[Programmers]"+string(ii)+".x")+","+load_game_key("[Programmers]"+string(ii)+".y"))//Here we can see an issue with both these keys not being found, this is also an issue with the other workers too
        //Create a programmer instance, which will see that there is something in the buffer and set the associated variables in itself
        inst=instance_create(real(xxx),real(load_game_key("S"+string(iiiiiii)+"y")),Spriter_obj)
        inst.level=real(load_game_key("S"+string(iiiiiii)+"l"))
        inst.pc_level=real(load_game_key("S"+string(iiiiiii)+"pcl"))
        //inst.x=real(load_game_key("[Programmers]"+string(ii)+".x"))
        //inst.y=real(load_game_key("[Programmers]"+string(ii)+".y"))
        global.loaded=false
        //Clear buffers
        //ii+=1
    }
    iiiiiii+=1
}
//Programmers
exists=true
iiiiiiii=0 //This insanity was brought to you by Game Maker Inc
xxxx=""
while exists=true
{
    xxxx=load_game_key("L"+string(iiiiiiii)+"x")
    if xxxx="Not Found"
    {
        exists=false
    }
    else
    {
        var inst;
        global.loaded=true
        //Load all of the variables associated with programmers into some sort of global buffer
        //global.level=
        //global.pc_level=
        
        //show_message(load_game_key("[Programmers]"+string(ii)+".x")+","+load_game_key("[Programmers]"+string(ii)+".y"))//Here we can see an issue with both these keys not being found, this is also an issue with the other workers too
        //Create a programmer instance, which will see that there is something in the buffer and set the associated variables in itself
        inst=instance_create(real(xxxx),real(load_game_key("L"+string(iiiiiiii)+"y")),Leveldev_obj)
        inst.level=real(load_game_key("L"+string(iiiiiiii)+"l"))
        inst.pc_level=real(load_game_key("L"+string(iiiiiiii)+"pcl"))
        //inst.x=real(load_game_key("[Programmers]"+string(ii)+".x"))
        //inst.y=real(load_game_key("[Programmers]"+string(ii)+".y"))
        global.loaded=false
        //Clear buffers
        //ii+=1
    }
    iiiiiiii+=1
}
