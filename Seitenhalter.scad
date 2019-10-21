// Andre Betz
// github@AndreBetz.de
SchraubeM3 = 3;

module Bohrloch(Durchmesser,posX,posY,Hoehe) 
{
    translate([posX,posY,-1])
        cylinder(
            Hoehe,
            Durchmesser/2,
            Durchmesser/2,
            center = false);
}

module Seitenhalter()
{
    Laenge = 30;
    Breite = 100;
    Hoehe  = 2;
    
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

Seitenhalter();