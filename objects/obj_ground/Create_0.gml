randomize();
var n = irandom(10);

// 20% of the time, create a special type
if (n <= 1)
{
	image_index = choose(1, 2);
}
else
{
	image_index = choose(0, 3);	
}

image_speed = 0;