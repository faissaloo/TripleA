///recieve_email(sender,subject,body)
//Adds a new email to the 'email' thingy
ds_list_add(mail_obj.email_list_sender,argument0)
ds_list_add(mail_obj.email_list_title,argument1)
ds_list_add(mail_obj.email_list_body,argument2)
return ds_list_size(mail_obj.email_list_sender)//Returns the index of the new message because it will always be appended to the end
