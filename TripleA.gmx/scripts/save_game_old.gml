///save_game()
file_delete(working_directory+"TripleA.sav")//Remove the old save
_file=file_text_open_write(working_directory+"TripleA.sav")
//
//file_text_write_string(_file,"DDummy=1337;") //No longer needed thanks to Mercerenies
file_text_write_string(_file,"Mgcode="+string(global.code)+";")
file_text_write_string(_file,"Mgart="+string(global.art)+";")
file_text_write_string(_file,"Mgworld="+string(global.world)+";")
file_text_write_string(_file,"Mggame_speed="+string(global.game_speed)+";")
file_text_write_string(_file,"Mgday="+string(global.day)+";")
file_text_write_string(_file,"Mgexposure="+string(global.exposure)+";")
file_text_write_string(_file,"Mgquality="+string(global.quality)+";")
file_text_write_string(_file,"Mghunger="+string(global.hunger)+";")
file_text_write_string(_file,"Mgthirst="+string(global.thirst)+";")
file_text_write_string(_file,"Mgservers0="+string(global.servers[0])+";")
file_text_write_string(_file,"Mgservers1="+string(global.servers[1])+";")
file_text_write_string(_file,"Mgservers2="+string(global.servers[2])+";")
file_text_write_string(_file,"Mgxplacement="+string(global.xplacement)+";")
file_text_write_string(_file,"Mgyplacement="+string(global.yplacement)+";")
file_text_write_string(_file,"MGbuys="+string(control_obj.buys)+";")
file_text_write_string(_file,"Mgmoney="+string(global.money)+";")
file_text_write_string(_file,"MModemlevel="+string(ModemBasic_obj.level)+";")
/*
servers=instance_number(server_obj)+1 //Might need this one too
*/
var n; //Temporary variable for storing the instance
//show_message(instance_number(Programmer_obj))
for (i=0;i<(instance_number(Programmer_obj));i+=1)//For the programmer objects
{//If this is the second save over, for some reason only this will be saved, the other objects get ignored
n=instance_find(Programmer_obj,i)
//save all the variables
file_text_write_string(_file,"P"+string(i)+"x="+string(n.x)+";")
file_text_write_string(_file,"P"+string(i)+"y="+string(n.y)+";")
file_text_write_string(_file,"P"+string(i)+"l="+string(n.level)+";")
file_text_write_string(_file,"P"+string(i)+"pcl="+string(n.pc_level)+";")
/*
file_text_write_string(_file,"[Programmers]"+string(i)+".spawnon="+string(n.spawnon) //Might need this, I can't remember what spawnon is for
*/
}

for (i=0;i<(instance_number(Spriter_obj));i+=1)//For the spriter objects
{
n=instance_find(Spriter_obj,i)
//save all the variables
file_text_write_string(_file,"S"+string(i)+"x="+string(n.x)+";")
file_text_write_string(_file,"S"+string(i)+"y="+string(n.y)+";")
file_text_write_string(_file,"S"+string(i)+"l="+string(n.level)+";")
file_text_write_string(_file,"S"+string(i)+"pcl="+string(n.pc_level)+";")
/*
file_text_write_string(_file,"[Spriter]"+string(i)+".spawnon="+string(n.spawnon) //Might need this, I can't remember what spawnon is for
*/
}


for (i=0;i<(instance_number(Leveldev_obj));i+=1)//For the spriter objects
{
n=instance_find(Leveldev_obj,i)
//save all the variables
file_text_write_string(_file,"L"+string(i)+"x="+string(n.x)+";")
file_text_write_string(_file,"L"+string(i)+"y="+string(n.y)+";")
file_text_write_string(_file,"L"+string(i)+"l="+string(n.level)+";")
file_text_write_string(_file,"L"+string(i)+"pcl="+string(n.pc_level)+";")
/*
file_text_write_string(_file,"[Spriter]"+string(i)+".spawnon="+string(n.spawnon) //Might need this, I can't remember what spawnon is for
*/
}

for (i=0;i<(ds_list_size(mail_obj.email_list_title));i+=1)//Each email's title
{
file_text_write_string(_file,"EN"+string(i)+"="+ds_list_find_value(mail_obj.email_list_title,i)+";") //Email title
}

for (i=0;i<(ds_list_size(mail_obj.email_list_sender));i+=1)//Each email's sender
{
file_text_write_string(_file,"ES"+string(i)+"="+ds_list_find_value(mail_obj.email_list_title,i)+";") //Email sender
}

for (i=0;i<(ds_list_size(mail_obj.email_list_body));i+=1)//Each email's body
{
file_text_write_string(_file,"EB"+string(i)+"="+ds_list_find_value(mail_obj.email_list_body,i)+";") //Email body
}

file_text_close(_file)
//show_message(string(file_exists(working_directory+"TripleA.sav"))) //Debug
//clipboard_set_text(working_directory+"TripleA.sav")
//show_message(load_game("[Main]global.code"))
/*Still need to save:
Modem
NAS
Servers
Games(ds_list)*/
//After this you can remove this stuff

