# Top of the file stolen and adapted from default vmdrc
# turn on lights 0 and 1
light 0 on
light 1 on
light 2 off
light 3 off

# position the stage and axes
# axes location lowerleft
stage location off

# position and turn on menus
menu main     move 5   225
menu display  move 395 30
menu graphics move 395 500
menu color    move 125 225
menu files    move 125 325
menu labels   move 125 525
menu render   move 125 525

menu main      on
#menu display  on
menu graphics on
#menu color    on
#menu labels   on
#menu render   on
#menu files    on

# My stuff!

axes location Off
display projection Orthographic
display backgroundgradient on
color change rgb 23 0.840000 0.860000 1.000000
color Display BackgroundTop white
display rendermode GLSL
# 16:10 ratio
display resize 1280 800

