///save_game_to_ini()
//This is the old method of saving based on inis that didn't work because inis can't store this much data
//It also has issues compiling in Enigma
/*
ini_open(working_directory+"TripleA.ini")
//
ini_write_real("Main","global.art",global.art)
ini_write_real("Main","global.code",global.code)
ini_write_real("Main","global.world",global.world)
ini_write_real("Main","global.game_speed",global.game_speed)
ini_write_real("Main","global.day",global.day)
ini_write_real("Main","global.exposure",global.exposure)
ini_write_real("Main","global.quality",global.quality)
ini_write_real("Main","global.hunger",global.hunger)
ini_write_real("Main","global.thirst",global.thirst)
ini_write_real("Main","global.servers0",global.servers[0])
ini_write_real("Main","global.servers1",global.servers[1])
ini_write_real("Main","global.servers2",global.servers[2])
ini_write_real("Main","global.xplacement",global.xplacement)
ini_write_real("Main","global.yplacement",global.yplacement)
ini_write_real("Main","Game.buys",Game.buys)
ini_write_real("Main","ModemBasic_obj.level",ModemBasic_obj.level)
*/
/*
servers=instance_number(server_obj)+1 //Might need this one too
*/
/*
var n; //Temporary variable for storing the instance
for (i=0;i<(instance_number(Programmer_obj));i+=1)//For the programmer objects
{
n=instance_find(Programmer_obj,i)
//save all the variables
ini_write_real("Programmers",string(i)+".x",n.x)
ini_write_real("Programmers",string(i)+".y",n.y)
ini_write_real("Programmers",string(i)+".level",n.level)
ini_write_real("Programmers",string(i)+".spawnx",n.spawnx)
ini_write_real("Programmers",string(i)+".spawny",n.spawny)
ini_write_real("Programmers",string(i)+".pc_level",n.pc_level)
*/
/*
ini_write_real("Programmers",string(i)+".spawnon",n.spawnon) //Might need this, I can't remember what spawnon is for
*/
/*
}

for (i=0;i<(instance_number(Spriter_obj));i+=1)//For the spriter objects
{
n=instance_find(Spriter_obj,i)
show_message(n)//Debug, because x and y aren't being saved
//save all the variables
ini_write_real("Spriter",string(i)+".x",n.x)
ini_write_real("Spriter",string(i)+".y",n.y)
ini_write_real("Spriter",string(i)+".level",n.level)
ini_write_real("Spriter",string(i)+".spawnx",n.spawnx)
ini_write_real("Spriter",string(i)+".spawny",n.spawny)
ini_write_real("Spriter",string(i)+".pc_level",n.pc_level)
/*
ini_write_real("Spriter",string(i)+".spawnon",n.spawnon) //Might need this, I can't remember what spawnon is for
*/
/*
}



for (i=0;i<(instance_number(Leveldev_obj));i+=1)//For the spriter objects
{
n=instance_find(Leveldev_obj,i)
//save all the variables
ini_write_real("Leveldev",string(i)+".x",n.x)
ini_write_real("Leveldev",string(i)+".y",n.y)
ini_write_real("Leveldev",string(i)+".level",n.level)
ini_write_real("Leveldev",string(i)+".spawnx",n.spawnx)
ini_write_real("Leveldev",string(i)+".spawny",n.spawny)
ini_write_real("Leveldev",string(i)+".pc_level",n.pc_level)
*/
/*
ini_write_real("Spriter",string(i)+".spawnon",n.spawnon) //Might need this, I can't remember what spawnon is for
*/
/*
}

for (i=0;i<(ds_list_size(mail_obj.email_list_title));i+=1)//Each email's title
{
ini_write_string("EmailName",string(i),ds_list_find_value(mail_obj.email_list_title,i))
}

for (i=0;i<(ds_list_size(mail_obj.email_list_sender));i+=1)//Each email's sender
{
ini_write_string("EmailSender",string(i),ds_list_find_value(mail_obj.email_list_title,i))
}

for (i=0;i<(ds_list_size(mail_obj.email_list_body));i+=1)//Each email's body
{
ini_write_string("EmailBody",string(i),ds_list_find_value(mail_obj.email_list_body,i))
}

ini_close()
show_message(string(file_exists(working_directory+"TripleA.ini")))
show_message(string(file_find_first("","")))
*/
/*Still need to save:
Modem
NAS
Servers
Games(ds_list)
*/
