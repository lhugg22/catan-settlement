//Auhtor: Louis Huggins
//Project: Coin Holder
//Part: Coin Holder
//Date Start: 11/25/18

// notes on the measurements for the catan pieces
// -14.75mm diameter
// -2mm deep



module settlement() {
	//vars
	radBase = 7.35;
	hBase = 2;



	difference(){
		//additions
		union(){
			//base to fit in the pre-built hole
			cylinder(h=hBase, r=radBase, center=true, $fn=50);
			translate([0,0,hBase]) cylinder(h=hBase, r=15, center=true, $fn=50);
			//tents
			rotate([0,45,82]) translate([0,7,2*hBase]) cube(size=[5,8,5], center=true);
			rotate([0,45,100]) translate([0,-7,2*hBase]) cube(size=[5,9,5], center=true);
			translate([8,-13,0]) rotate([0,45,55]) translate([0,7,2*hBase]) cube(size=[5,8,5], center=true);

			translate([-13, -5,2*hBase]) rotate(-45) linear_extrude(height=1, center=true, convexity=10, scale=1)
			text("+1", size=8, font="Times New Roman");
		}

		//subtractions
		union(){
			translate([0,0,-1]) rotate([0,45,82]) translate([0,7,2*hBase]) cube(size=[5,10,5], center=true);
			translate([0,0,-1]) rotate([0,45,100]) translate([0,-7,2*hBase]) cube(size=[5,10,5], center=true);
			translate([8,-13,-1]) rotate([0,45,55]) translate([0,7,2*hBase]) cube(size=[5,10,5], center=true);
		}
	}
	cylinder(h=hBase, r=radBase, center=true, $fn=50);
	translate([0,0,hBase]) cylinder(h=hBase, r=15, center=true, $fn=50);
}


settlement();