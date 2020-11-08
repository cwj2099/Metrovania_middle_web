var txt = "Press Space to toggle FXAA, left/right to change the strength";
if(fxaa_on) {
    txt += "#FXAA: On";
} else {
    txt += "#FXAA: Off";
}
txt += "#Strength: " + string(fxaa_strength);
draw_set_colour(c_black);
draw_text(5, 5, string_hash_to_newline(txt));
draw_set_colour(c_white);
draw_text(4, 4, string_hash_to_newline(txt));

