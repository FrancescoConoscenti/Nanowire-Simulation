// Nanowire all-around-gate

// Mesh refinement
lc1 =3;
lc2 = 3;
lc3 = 15;

// Points, Lines, Surfaces, Volumes
Point(1) = {2, 2, 0, lc1};
Point(2) = {0, 0, 0, lc1};
Point(3) = {4, 0, 0, lc1};
Point(4) = {2, -2, 0, lc1};
Point(5) = {2, -2.32, 0, lc1};
Point(6) = {2, 2.32, 0, lc2};
Point(7) = {-0.32, 0, 0, lc2};
Point(8) = {4.32, 0, 0, lc2};
Point(9) = {2, 0, 0, lc3};
Circle(1) = {5, 9, 8};
Circle(2) = {8, 9, 6};
Circle(3) = {6, 9, 7};
Circle(4) = {7, 9, 5};
Circle(5) = {4, 9, 3};
Circle(6) = {3, 9, 1};
Circle(7) = {1, 9, 2};
Circle(8) = {2, 9, 4};
Extrude {0, 0, 12} {
  Point{3, 8, 9};
}
Extrude {0, 0, 12} {
  Point{1, 6, 7, 2};
}
Extrude {0, 0, 12} {
  Point{5, 4};
}
Extrude {0, 0, 12} {
  Line{2, 6, 7, 3, 4, 8, 5, 1};
}
Line(50) = {6, 1};
Line(51) = {4, 5};
Extrude {0, 0, 12} {
  Line{50, 51};
}
Line Loop(60) = {2, 50, -6, -5, 51, 1};
Plane Surface(61) = {60};
Line Loop(62) = {3, 4, -51, -8, -7, -50};
Plane Surface(63) = {62};
Line Loop(64) = {8, 5, 6, 7};
Plane Surface(65) = {64};
Extrude {0, 0, 12} {
  Surface{65};
}
Extrude {0, 0, 12} {
  Surface{61, 63};
}
Extrude {0, 0, -4} {
  Point{1, 3, 4, 2};
}
Extrude {0, 0, -4} {
  Line{6, 5, 8, 7};
}
Extrude {0, 0, -4} {
  Surface{65};
}
Extrude {0, 0, -4} {
  Point{9};
}
Extrude {0, 0, -6} {
  Point{24, 21, 20, 19, 22};
}
Extrude {0, 0, -6} {
  Line{156, 160, 164, 168};
}
Extrude {0, 0, -6} {
  Surface{193};
}
Extrude {0, 0, 4} {
  Point{16, 18, 10, 13, 12};
}
Extrude {0, 0, 4} {
  Line{38, 26, 22, 42};
}
Extrude {0, 0, 4} {
  Surface{87};
}
Extrude {0, 0, 6} {
  Point{31, 32, 33, 34, 30};
}
Extrude {0, 0, 6} {
  Line{247, 243, 255, 251};
}
Extrude {0, 0, 6} {
  Surface{280};
}



Characteristic Length {20, 21, 22, 23, 24} = lc1 / 3;
//Characteristic Length {30, 31, 32, 33, 34} = lc1 / 3;

// Definition physical entities
Physical Surface("drain") = {323};
Physical Surface("gate") = {49, 21, 33, 37};
Physical Surface("source") = {237};

Physical Volume("oxide") = {3, 2};
Physical Volume("channel") = {1, 4, 6};
Physical Volume("drain_region") = {7};
Physical Volume("source_region") = {5};
//+
Hide "*";
//+
Show {
Point{1,2,3,4,10,13,16,18,19,20,21,22,30,31,32,33};
Curve{5,6,7,8,9,12,15,17,22,26,38,42,152,153,154,155,156,160,164,168,238,239,240,241,243,247,251,255};
Surface{25,29,41,45,65,87,159,163,167,171,193,246,250,254,258,280};
Volume{1,4,6};
}

//+
Show "*";
//+
Hide {
  Point{9}; Point{12}; Point{24}; Point{25}; Point{34}; Point{38}; Curve{11}; Curve{194}; Curve{195}; Curve{242}; Curve{284};
}
