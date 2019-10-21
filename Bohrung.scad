// Andre Betz
// github@AndreBetz.de
LochSpiel = 0.1;
SchraubeM3 = 3+LochSpiel;
SchraubeM4 = 4+LochSpiel;
BlechDicke = 3;
$fn=100;

module Bohrloch(Durchmesser,posX,posY,Hoehe) 
{
    translate([posX,posY,-1])
        cylinder(
            Hoehe,
            Durchmesser/2,
            Durchmesser/2,
            center = false);
}