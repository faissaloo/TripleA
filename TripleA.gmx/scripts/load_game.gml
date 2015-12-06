///load_game
var file_r;
if file_exists("games.ds") and file_exists("email_list_title.ds") and file_exists("email_list_sender.ds") and file_exists("email_list_body.ds") and file_exists("AAA.sav")
{
    game_load("AAA.sav")//game_load does not exist in Enigma
    file_r=file_text_open_read("games.ds")
    ds_list_read(games_list,file_text_read_string(file_r))
    file_text_close(file_r)
    
    global.loaded=true
}
else
{
    room_goto(main_menu_room)
}
