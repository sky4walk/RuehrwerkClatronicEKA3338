// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>

module Ruehrpaddel()
{
    Laenge = 300;
    Breite = 100;
    Ecke   = 30;
    
    difference() 
    {
        union() {
            
            translate([-Laenge/2,-Breite/2+Ecke,0])
                cube([Laenge,Breite-Ecke,BlechDicke]);
            
            translate([-Laenge/2+Ecke,-Breite/2,0])
                cube([Laenge-Ecke*2,Ecke,BlechDicke]);
        }
               
        Bohrloch(SchraubeM4,0,Breite/2-10,BlechDicke*3);
        Bohrloch(SchraubeM4,0,Breite/2-40,BlechDicke*3);
        
    }
}
projection()
{
    Ruehrpaddel();
}