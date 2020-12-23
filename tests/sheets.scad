//
// NopSCADlib Copyright Chris Palmer 2018
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// This file is part of NopSCADlib.
//
// NopSCADlib is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// NopSCADlib is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with NopSCADlib.
// If not, see <https://www.gnu.org/licenses/>.
//
include <../utils/core/core.scad>
use <../utils/layout.scad>

include <../vitamins/sheets.scad>

width = 30;

module sheets()
    layout([for(s = sheets) width], 5)
        render_sheet(sheets[$i]) sheet(sheets[$i], width, width, 2);

module test2() {
    render_sheet(CF3) sheet(CF3, width, width, 2);
    translate([40,0,0])
        render_2D_sheet(CF3) sheet_2D(CF3, width, width, 2);
    translate([80,0,0])
        sheet(CF3, width, width, 2);
    translate([120,0,0])
        sheet_2D(CF3, width, width, 2);

    translate([160,0,0])
        render_sheet(MDF6) sheet(MDF6, width, width, 2);
    translate([200,0,0])
        render_2D_sheet(MDF6) sheet_2D(MDF6, width, width, 2);
    translate([240,0,0])
        sheet(MDF6, width, width, 2);
    translate([280,0,0])
        sheet_2D(MDF6, width, width, 2);
}

if($preview)
    sheets();
    //test2();
