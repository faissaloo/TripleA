///random_speech(type)
//To be placed in the alarm event
type=argument0

if type=0 //0 is a programmer
{
switch(irandom(12))
{
    case 0:
        textlog="This is annoying..."
        break;
    case 1:
        textlog="Your code is broken..."
        break;
    case 2:
        textlog="Thanks for breaking EVERYTHING!"
        break;
    case 3:
        textlog="Why does this work?"
        break;
    case 4:
        textlog="But it's right there!"
        break;
    case 5:
        textlog="Ohh..."
        break;
    case 6:
        textlog="STOP REVERTING MY CHANGES!"
        break;
    case 7:
        textlog="WHO THINKS THIS IS A GOOD IDEA!?"
        break;
    case 8:
        textlog="Someone kill me already..."
        break;
    case 9:
        textlog="Is this your first day programming ever?"
        break;
    case 10:
        textlog="But it was just working!"
        break;
    case 11:
        textlog="*mumbles*"
        break;
    case 12:
        textlog="Will you guys shutup already?"
        break;
}
}
else if type=1 //1 is sprite artists
{
switch(irandom(4))
{
    case 0:
        textlog="Why does my hand keep slipping!"
        break;
    case 1:
        textlog="Someone get me a decent graphics tablet!"
        break;
    case 2:
        textlog="The mice here are horrid!"
        break;
    case 3:
        textlog="This looks horrible!"
        break;
    case 4:
        textlog="I want to take a whisk to my eyes..."
        break;
    case 5:
        textlog="If that one pixel could look right..."
        break;
}
}
else if type=2 //2 is a level designer
{
switch(irandom(3))
{
    case 0:
        textlog="Nope, that's too hard"
        break;
    case 1:
        textlog="How's this?"
        break;
    case 2:
        textlog="I seem to be the happiest person here."
        break;
    case 3:
        textlog="This is all I can work with..."
        break;
}
}

alarm[1]=200+irandom(1000)
