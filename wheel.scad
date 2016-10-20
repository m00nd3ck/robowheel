$fn=32;

//wheel by moondeck
//MIT license

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
		cylinder(h=30,d=60);
		translate([0,0,25])
		cylinder(h=5,d=50);

		for (i=[0,60,120,180,240,300,360]) 
		rotate(i)	
		translate([15,0,0])
		cylinder(h=30,d=10);
	}


	for (i=[0,20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360]) 
		rotate(i)	
		translate([28,-2.5,0])
		cube([5,5,30]);
}