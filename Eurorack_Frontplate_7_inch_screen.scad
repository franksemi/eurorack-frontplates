
/*
eurorack frontplate for 7 inch screen
standard capacitive touch 7 inch 1024x600 hdmi display v.2.03
*/

$fn=60;

// fixed variables
hpwidthmm=5.08;
1u=42.83;
3u=128.5;

// size variables
heightmm=3u;
widthhp=51.28;
spacingmm=5;
amount=1;

// hole size variables
holeDiameter=3.2;
holeToEdgemm=1.5+3.2/2;
oblongHoleWidth=9.4;


/*
code
*/

difference() {
translate([0,0])rotate([0,0,0])frontplate();
#translate([0,0])rotate([0,0,0])screenhole();
#translate([0,0])rotate([0,0,0])minijack();
#translate([0,0])rotate([0,0,0])pots();
#translate([0,0])rotate([0,0,0])switch();
}

// frontplate
module frontplate()
{

widthmm=widthhp*hpwidthmm;
translate([widthmm/2,heightmm/2])
for (i = [0:amount-1])
{  
translate([i*(widthmm+spacingmm),0])
difference()
{
square([widthmm,heightmm],center=true);

hull(){
translate([widthmm/2-holeToEdgemm-(oblongHoleWidth-holeDiameter),heightmm/2-holeToEdgemm])circle(r=holeDiameter/2);
translate([widthmm/2-holeToEdgemm,heightmm/2-holeToEdgemm])circle(r=holeDiameter/2);
}

hull(){
translate([-(widthmm/2-holeToEdgemm),heightmm/2-holeToEdgemm])circle(r=holeDiameter/2);
translate([-(widthmm/2-holeToEdgemm-(oblongHoleWidth-holeDiameter)),heightmm/2-holeToEdgemm])circle(r=holeDiameter/2);
}

hull(){
translate([-(widthmm/2-holeToEdgemm),-(heightmm/2-holeToEdgemm)])circle(r=holeDiameter/2);
translate([-(widthmm/2-holeToEdgemm-(oblongHoleWidth-holeDiameter)),-(heightmm/2-holeToEdgemm)])circle(r=holeDiameter/2);
}

hull(){
translate([widthmm/2-holeToEdgemm-(oblongHoleWidth-holeDiameter),-(heightmm/2-holeToEdgemm)])circle(r=holeDiameter/2);
translate([widthmm/2-holeToEdgemm,-(heightmm/2-holeToEdgemm)])circle(r=holeDiameter/2);
        }
        }
        }
}

// square hole for screen
module screenhole()
{
    translate([50,12.5]) square([160.5,99.8]);
}

// minijack
module minijack()
{
    translate([34,24,0]) circle(d=5.9);
    translate([34,44,0]) circle(d=5.9);
    translate([34,64,0]) circle(d=5.9);
    translate([34,84,0]) circle(d=5.9);
    translate([34,104,0]) circle(d=5.9);
    translate([16,24,0]) circle(d=5.9);
    translate([16,44,0]) circle(d=5.9);
    translate([16,64,0]) circle(d=5.9);
    translate([16,84,0]) circle(d=5.9);
    translate([16,104,0]) circle(d=5.9);
}

// potentiometers
module pots()
{
    translate([226,24,0]) circle(d=7);
    translate([226,44,0]) circle(d=7);
    translate([226,64,0]) circle(d=7);
    translate([226,84,0]) circle(d=7);
    translate([226,104,0]) circle(d=7);
    translate([244,24,0]) circle(d=7);
    translate([244,44,0]) circle(d=7);
    translate([244,64,0]) circle(d=7);
}

// switchs
module switch()
{
    translate([244,84,0]) circle(d=6.3);
    translate([244,104,0]) circle(d=6.3);   
}






