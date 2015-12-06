///load_game_key(key)
_file=file_text_open_read(working_directory+"TripleA.sav")
//
var current_string,value,mode;
//show_message(_file)
current_string=""
value=""
mode=0
//This is having an issue loading the first item, the first 2 characters are incorrect
for(iii=1;iii<string_length(file_text_read_string(_file));iii+=1)
{
    //string_length(file_text_read_string(_file))
    //show_message(string_length(file_text_read_string(_file)))
    //show_message(iii)
    //show_message(current_string)
    if string_char_at(file_text_read_string(_file),iii)=";"
    {
        //clipboard_set_text(current_string)
        //show_message(current_string)//Debug
        //
        if current_string=argument0
        {
            //file_text_close(_file)
            //show_message(current_string+"="+value)//Debug
            iii=0
            file_text_close(_file)
            //_file=0
            return value
            
        }
        current_string=""
        value=""
        mode=0
    }
    else if string_char_at(file_text_read_string(_file),iii)="="
    {
        mode=1
    }
    else
    {
        if mode=0
        {
            //show_message(current_string)
            current_string+=string_char_at(file_text_read_string(_file),iii)
            //show_message(string_char_at(file_text_read_string(_file),iii)) //show_message(file_text_readln(_file))//show_message(file_text_read_string(_file))
        }
        else if mode=1
        {
            value+=string_char_at(file_text_read_string(_file),iii)
        }
    }
}
file_text_close(_file)
//_file=0
//current_string=""
//value=""
//mode=0
//show_message("Error finding "+current_string)//Debug
show_message(iii)
return "Not Found"
