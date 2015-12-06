///employee_track_text()
if textlog!=oldtextlog
{text_alpha=1
oldtextlog=textlog}

text_alpha-=0.01

if text_alpha<0.01
{
oldtextlog=""
textlog=""

}
