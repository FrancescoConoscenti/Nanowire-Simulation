// Nanowire all-around-gate

// Mesh refinement
lc1 =3;
lc2 = 3;
lc3 = 15;

// Points, Lines, Surfaces, Volumes
Point(1) = {10, 10, 0, lc1};
Point(2) = {0, 0, 0, lc1};
Point(3) = {20, 0, 0, lc1};
Point(4) = {10, -10, 0, lc1};
Point(5) = {10, -11.6, 0, lc1};
Point(6) = {10, 11.6, 0, lc2};
Point(7) = {-1.6, 0, 0, lc2};
Point(8) = {21.6, 0, 0, lc2};
Point(9) = {10, 0, 0, lc3};
Circle(1) = {5, 9, 8};
Circle(2) = {8, 9, 6};
Circle(3) = {6, 9, 7};
Circle(4) = {7, 9, 5};
Circle(5) = {4, 9, 3};
Circle(6) = {3, 9, 1};
Circle(7) = {1, 9, 2};
Circle(8) = {2, 9, 4};
Extrude {0, 0, 60} {
  Point{3, 8, 9};
}
Extrude {0, 0, 60} {
  Point{1, 6, 7, 2};
}
Extrude {0, 0, 60} {
  Point{5, 4};
}
Extrude {0, 0, 60} {
  Line{2, 6, 7, 3, 4, 8, 5, 1};
}
Line(50) = {6, 1};
Line(51) = {4, 5};
Extrude {0, 0, 60} {
  Line{50, 51};
}
Line Loop(60) = {2, 50, -6, -5, 51, 1};
Plane Surface(61) = {60};
Line Loop(62) = {3, 4, -51, -8, -7, -50};
Plane Surface(63) = {62};
Line Loop(64) = {8, 5, 6, 7};
Plane Surface(65) = {64};
Extrude {0, 0, 60} {
  Surface{65};
}
Extrude {0, 0, 60} {
  Surface{61, 63};
}
Extrude {0, 0, -20} {
  Point{1, 3, 4, 2};
}
Extrude {0, 0, -20} {
  Line{6, 5, 8, 7};
}
Extrude {0, 0, -20} {
  Surface{65};
}
Extrude {0, 0, -20} {
  Point{9};
}
Extrude {0, 0, -30} {
  Point{24, 21, 20, 19, 22};
}
Extrude {0, 0, -30} {
  Line{156, 160, 164, 168};
}
Extrude {0, 0, -30} {
  Surface{193};
}
Extrude {0, 0, 20} {
  Point{16, 18, 10, 13, 12};
}
Extrude {0, 0, 20} {
  Line{38, 26, 22, 42};
}
Extrude {0, 0, 20} {
  Surface{87};
}
Extrude {0, 0, 30} {
  Point{31, 32, 33, 34, 30};
}
Extrude {0, 0, 30} {
  Line{247, 243, 255, 251};
}
Extrude {0, 0, 30} {
  Surface{280};
}

//Characteristic Length {20, 21, 22, 23, 24} = lc1 / 3;
Characteristic Length {30, 31, 32, 33, 34} = lc1 / 3;

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
Hide "*";
//+
Show {
  Point{1}; Point{2}; Point{3}; Point{4}; Point{10}; Point{13}; Point{16}; Point{18}; Point{19}; Point{20}; Point{21}; Point{22}; Point{30}; Point{31}; Point{32}; Point{33}; Curve{5}; Curve{6}; Curve{7}; Curve{8}; Curve{9}; Curve{12}; Curve{15}; Curve{17}; Curve{22}; Curve{26}; Curve{38}; Curve{42}; Curve{152}; Curve{153}; Curve{154}; Curve{155}; Curve{156}; Curve{160}; Curve{164}; Curve{168}; Curve{238}; Curve{239}; Curve{240}; Curve{241}; Curve{243}; Curve{247}; Curve{251}; Curve{255}; Surface{25}; Surface{29}; Surface{41}; Surface{45}; Surface{65}; Surface{87}; Surface{159}; Surface{163}; Surface{167}; Surface{171}; Surface{193}; Surface{246}; Surface{250}; Surface{254}; Surface{258}; Surface{280}; Volume{1}; Volume{4}; Volume{6}; 
}
