function draw_outline(argument0) {
	upixelH= shader_get_uniform(shader_outline, "pixelH");
	upixelW= shader_get_uniform(shader_outline, "pixelW");
	texelW=argument0* texture_get_texel_width(sprite_get_texture(sprite_index,0));
	texelH=argument0* texture_get_texel_height(sprite_get_texture(sprite_index,0));

	if (shader_is_compiled(shader_outline))
	   {

			shader_set(shader_outline);

			shader_set_uniform_f(upixelH, texelH);
			shader_set_uniform_f(upixelW, texelW);
			draw_self();

			shader_reset();
	   }
	else show_debug_message("Shader failed");


}
