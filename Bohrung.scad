// Andre Betz
// github@AndreBetz.de
SchraubeM2 = 2.4;
SchraubeM3 = 3.4;

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