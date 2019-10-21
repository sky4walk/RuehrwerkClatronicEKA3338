// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>

module Seitenhalter()
{
    Laenge = 30;
    Breite = 100;
    
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,BlechDicke]);        
        Bohrloch(SchraubeM4,0,0,BlechDicke*3);
    }
    translate([Laenge*2,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,BlechDicke]);        
        Bohrloch(SchraubeM4,0,0,BlechDicke*3);
    }
    translate([Laenge*4,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,BlechDicke]);        
        Bohrloch(SchraubeM4,0,0,BlechDicke*3);
    }
    translate([Laenge*6,0,0])
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,BlechDicke]);        
        Bohrloch(SchraubeM4,0,0,BlechDicke*3);
    }
}
projection()
{
    Seitenhalter();
}