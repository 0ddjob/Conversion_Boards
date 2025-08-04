// Soviet to MX key cap converter
// Brett Hallen, Aug 2025
// NOT FINISHED

// Define the MX & Soviet dimensions
mx_cross_height = 4;
mx_cross_length = 4;
mx_cross_width = 1.3;
mx_outer_radius = 8;
soviet_height = 11;
soviet_radius = 2.5;

// Create the main cylinder
// Subtract the inner cylinder for the Soviet key stem
// Subtract the MX cross 
difference() 
{
  cylinder(h=soviet_height+mx_cross_height, r=mx_outer_radius);

  // Define the inner cylinder (to be subtracted)
  translate([0, 0, 0]) 
  { // Center the inner cylinder
    cylinder(h=soviet_height, r=soviet_radius);
  }

    cube([mx_cross_length,mx_cross_width,mx_cross_height],center=true);
    
    rotate([90,0,0])
    {
        cube([mx_cross_width,mx_cross_length,mx_cross_height],center=true);
    }
}