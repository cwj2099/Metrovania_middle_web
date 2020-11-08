function draw_solid_color(argument0, argument1, argument2) {
	var r=argument0;
	var g=argument1;
	var b=argument2;

	if (shader_is_compiled(shader_solid_color))
	   {

			shader_set(shader_solid_color);

			shader_set_uniform_f(shader_get_uniform(shader_solid_color, "targetColour"), r,g,b);
			draw_self();

			shader_reset();
	   }
	else show_debug_message("Shader failed");


}
