// Andre Betz
// github@AndreBetz.de
include <Bohrung.scad>

module MotorHalterung()
{
    Laenge = 470;
    Breite = 100;
    MotorWelle = 18;
    MotorBefAbstand = 40;
    TempSensorD = 22;
    
    difference() 
    {
        translate([-Laenge/2,-Breite/2,0])
            cube([Laenge,Breite,BlechDicke]);
        
        Bohrloch(SchraubeM4,-Laenge/2+40,0,BlechDicke*3);
        Bohrloch(SchraubeM4, Laenge/2-40,0,BlechDicke*3);
        
        Bohrloch(TempSensorD, Laenge/4,0,BlechDicke*3);

        Bohrloch(MotorWelle, 0,0,BlechDicke*3);
        Bohrloch(SchraubeM4,  MotorBefAbstand/2, MotorBefAbstand/2,BlechDicke*3);
        Bohrloch(SchraubeM4,  MotorBefAbstand/2,-MotorBefAbstand/2,BlechDicke*3);
        Bohrloch(SchraubeM4, -MotorBefAbstand/2, MotorBefAbstand/2,BlechDicke*3);
        Bohrloch(SchraubeM4, -MotorBefAbstand/2,-MotorBefAbstand/2,BlechDicke*3);
    }
}

projection()
{
    MotorHalterung();
}