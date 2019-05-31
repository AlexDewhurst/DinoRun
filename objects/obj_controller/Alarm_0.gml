randomize();
var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
i.sprite_index = choose(spr_cactus_small, spr_cactus_large, spr_pterodactyl);
switch (i.sprite_index)
{
	case spr_cactus_small:
	case spr_cactus_large:
		i.image_speed = 0;
		
		if (global.speedModifier > 1.5)
		{
			if (count == 2)
			{
				var j = instance_create_layer(room_width + 100 + sprite_get_width(i.sprite_index), room_height - 75, "Instances", obj_obstacle);
				j.sprite_index = choose(spr_cactus_small, spr_cactus_large);
				j.image_speed = 0;
			}
		}
	break;
	
	default:
	i.image_speed = 1;
	i.y = choose(room_height - 85, room_height - 145, room_height - 180);
}

if (global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
