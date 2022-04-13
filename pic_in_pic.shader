shader_type spatial;
render_mode unshaded;

uniform sampler2D pip_tex : hint_albedo;

void fragment() {
	ALBEDO = texture(pip_tex, vec2(SCREEN_UV)).rgb;
}
