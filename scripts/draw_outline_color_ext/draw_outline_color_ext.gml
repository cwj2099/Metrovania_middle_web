function draw_outline_color_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12) {
	upixelH= shader_get_uniform(shader_outline_color, "pixelH");
	upixelW= shader_get_uniform(shader_outline_color, "pixelW");
	tr= shader_get_uniform(shader_outline_color, "tr");
	tg= shader_get_uniform(shader_outline_color, "tg");
	tb= shader_get_uniform(shader_outline_color, "tb");

	texelW=argument0* texture_get_texel_width(sprite_get_texture(sprite_index,0));
	texelH=argument0* texture_get_texel_height(sprite_get_texture(sprite_index,0));

	if (shader_is_compiled(shader_outline_color))
	   {

			shader_set(shader_outline_color);

			shader_set_uniform_f(upixelH, texelH);
			shader_set_uniform_f(upixelW, texelW);
			shader_set_uniform_f(tr, argument1);
			shader_set_uniform_f(tg, argument2);
			shader_set_uniform_f(tb, argument3);
			draw_sprite_ext(argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12);

			shader_reset();
	   }
	else show_debug_message("Shader failed");


}
