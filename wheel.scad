$fn=32;

union() {
	translate([0,0,5])
	union() {
		translate([0,-2.325,17.6])
		cube([5,0.9,23],center=true);
		translate([0,2.325,17.6])
		cube([5,0.9,23],center=true);
		difference() {
			cylinder(h=30,d=14);
			translate([0,0,6])
			cylinder(h=24,d=5.3);
		}
	}
	difference() {
		cylinder(h=30,d=70);
		translate([0,0,25])
		cylinder(h=5,d=60);
	}
	for (i=[0,20,40,60,80,
				100,120,140,160,180,
				200,220,240,260,280,
				300,320,340,360]) 
		rotate(i)	
		translate([40,-5,0])
 		//rotate([0,0,-10]) 
		cube([15,5,30]);
}