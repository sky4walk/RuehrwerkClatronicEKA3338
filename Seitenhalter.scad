// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>

module Seitenhalter()
{
    Laenge = 30;
    Breite = 100;
    Hoehe  = 4;
    
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,Hoehe]);        
        Bohrloch(SchraubeM3,0,0,Hoehe*3);
    }
    translate([Laenge*2,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,Hoehe]);        
        Bohrloch(SchraubeM3,0,0,Hoehe*3);
    }
    translate([Laenge*4,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,Hoehe]);        
        Bohrloch(SchraubeM3,0,0,Hoehe*3);
    }
    translate([Laenge*6,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,Hoehe]);        
        Bohrloch(SchraubeM3,0,0,Hoehe*3);
    }
}
projection()
{
    Seitenhalter();
}