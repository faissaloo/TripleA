///save_game()
var file_w;
file_w=file_text_open_write("games.ds")
file_text_write_string(file_w,ds_list_write(control_obj.games_list))
file_text_close(file_w)

file_w=file_text_open_write("email_list_title.ds")
file_text_write_string(file_w,ds_list_write(mail_obj.email_list_title))
file_text_close(file_w)

file_w=file_text_open_write("email_list_sender.ds")
file_text_write_string(file_w,ds_list_write(mail_obj.email_list_sender))
file_text_close(file_w)

file_w=file_text_open_write("email_list_body.ds")
file_text_write_string(file_w,ds_list_write(mail_obj.email_list_body))
file_text_close(file_w)
game_save("AAA.sav")//game_save does not exist in Enigma
