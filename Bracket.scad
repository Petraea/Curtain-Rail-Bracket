//Made for zarya to replace a broken roller curtain bracket.
//Upgraded to have curved edges.
use <MCAD/boxes.scad>

union() {
cube([35,32,5]);
translate([0,16,0]) cylinder(r=16,h=5);
difference() {
	translate([-3.5,16-(7/2),0]) cube([7,7,8+5]);
	translate([0,16,5]) cylinder(r=2,h=8);
}

difference() {
	translate([26,0,0]) cube([14,32,20]);
	translate([20,16,15]) roundedBox([20,50,20],5,false);
	translate([25,16,20]) roundedBox([20,32-8,30],2,false);
	translate([33,10,10]) slot();
	translate([33,22.5,10]) slot();
}
}

module slot(){
 translate([0,-2.5,0]) cube([10,5,20]);
 rotate([0,90,0]) cylinder(r=2.5,h=10);
}