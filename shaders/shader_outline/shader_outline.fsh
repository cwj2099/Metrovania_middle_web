//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetx;
	offsetx.x=pixelW;
	vec2 offsety;
	offsety.y=pixelH;
	vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	if(texColor.a == 0.0){
		float alpha= texColor.a;
		alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord+offsetx).a);
		alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord-offsetx).a);
		alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord+offsety).a);
		alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord-offsety).a);
	
		if (alpha > 0.0){alpha = 1.0;}
		gl_FragColor = texColor;
		gl_FragColor.a=alpha;
	}
	
}
