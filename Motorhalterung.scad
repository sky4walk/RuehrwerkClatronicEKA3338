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

module MotorHalterung()
{
    Laenge = 470;
    Breite = 100;
    Hoehe  = 2;
    MotorWelle = 30;
    MotorBefAbstand = 40;
    TempSensorD = 20;
    
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,Hoehe]);
        
        Bohrloch(SchraubeM3,-Laenge/2+40,0,Hoehe*3);
        Bohrloch(SchraubeM3, Laenge/2-40,0,Hoehe*3);
        
        Bohrloch(TempSensorD, Laenge/4,0,Hoehe*3);

        Bohrloch(MotorWelle, 0,0,Hoehe*3);
        Bohrloch(SchraubeM3,  MotorBefAbstand/2, MotorBefAbstand/2,Hoehe*3);
        Bohrloch(SchraubeM3,  MotorBefAbstand/2,-MotorBefAbstand/2,Hoehe*3);
        Bohrloch(SchraubeM3, -MotorBefAbstand/2, MotorBefAbstand/2,Hoehe*3);
        Bohrloch(SchraubeM3, -MotorBefAbstand/2,-MotorBefAbstand/2,Hoehe*3);
    }
}

MotorHalterung();