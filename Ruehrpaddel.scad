// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>

module Ruehrpaddel()
{
    Laenge = 300;
    Breite = 100;
    Hoehe  = 2;
    Ecke   = 30;
    
    difference() 
    {
        union() {
            
            translate([-Laenge/2,-Breite/2+Ecke,0])
                cube([Laenge,Breite-Ecke,Hoehe]);
            
            translate([-Laenge/2+Ecke,-Breite/2,0])
                cube([Laenge-Ecke*2,Ecke,Hoehe]);
        }
               
        Bohrloch(SchraubeM3,0,Breite/2-10,Hoehe*3);
        Bohrloch(SchraubeM3,0,Breite/2-40,Hoehe*3);
        
    }
}

Ruehrpaddel();