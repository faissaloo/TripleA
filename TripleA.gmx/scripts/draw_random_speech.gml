///draw_random_speech()
draw_set_alpha(text_alpha)
draw_set_color(make_colour_rgb(245,241,222))
draw_rectangle(x-3,y-16,x+string_width(textlog)+1,y+1,false)
draw_set_color(c_black)
draw_rectangle(x-3,y-16,x+string_width(textlog)+1,y+1,true)
draw_text(x,y-15,textlog)

draw_set_alpha(1)

//text_alpha=0
//textlog=""
//oldtextlog=""
