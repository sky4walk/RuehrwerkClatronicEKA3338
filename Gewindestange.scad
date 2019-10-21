// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>


module Gewindestange()
{
    Laenge = 225;
    DurchmesserAussen = 10;
    DurchmesserInnen  = 8;
    AusschnittHoehe   = 50;
    
    difference() 
    {
        cylinder(Laenge,DurchmesserAussen/2,DurchmesserAussen/2,false);
        translate([0,0,-1])
            cylinder(Laenge+2,DurchmesserInnen/2,DurchmesserInnen/2,false);
        
        translate([-DurchmesserAussen,-BlechDicke/2,-1])
            cube([DurchmesserAussen*2,BlechDicke,AusschnittHoehe+1]);
        
        
        rotate([0,90,90])
            translate([-Laenge+10,0,-DurchmesserAussen*1.5])
                Bohrloch(SchraubeM3,0,0,DurchmesserAussen*3);
        rotate([0,90,90])
            translate([-10,0,-DurchmesserAussen*1.5])
                Bohrloch(SchraubeM4,0,0,DurchmesserAussen*3);
        rotate([0,90,90])
            translate([-40,0,-DurchmesserAussen*1.5])
                Bohrloch(SchraubeM4,0,0,DurchmesserAussen*3);
    }
}

Gewindestange();