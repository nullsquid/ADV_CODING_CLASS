size(640, 486);
//define colors
color sunColor = color(255, 204, 0);
color sunHalo = color(255, 130, 0);
color groundColor = color(0, 204, 0);
color houseColor = color(200, 0, 0);
color skyColor = color(30, 50, 120);
color skyColor2 = color(30, 70, 110);
color skyColor3 = color(30, 100, 200);
color skyColor4 = color(30, 140, 200);
//sky
fill(skyColor);
noStroke();
rect(0, 0, 640, 480);
fill(skyColor2);
rect(0, 100, 640, 480);
fill(skyColor3);
rect(0, 200, 640, 480);
fill(skyColor4);
rect(0, 300, 640, 480);

//sun
fill(sunHalo);
ellipse((640/2) + 100, (486/2) - 150, 185 , 185);
fill(sunColor);
noStroke();
ellipse((640/2) + 100, (486/2) - 150, 150 , 150);


//ground
fill(groundColor);
rect(0, 486 - 100, 640, 100);
//house
fill(houseColor);
rect(100, 486 - 160, 100, 100);
rect(100, (486 - 160) - 50, 25, 50);
triangle(80, 486 - 160, 200/2 + 50, 486/2 + 40, 200 + 20, 486 -160);