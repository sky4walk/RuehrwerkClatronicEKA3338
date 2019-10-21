// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>


module MotorHalterung()
{
    Laenge = 225;
    DurchmesserAussen = 10;
    DurchmesserInnen  = 8;
    
    difference() 
    {
        cylinder(Laenge,DurchmesserAussen,DurchmesserAussen,        true);
        cylinder(Laenge+1,DurchmesserInnen,DurchmesserInnen,        true);
        
    }
}

MotorHalterung();