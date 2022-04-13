shader_type spatial;
render_mode unshaded;

uniform sampler2D pip_tex : hint_albedo;

void fragment() {
	ALBEDO = texture(pip_tex, vec2(SCREEN_UV)).rgb;
//	vec2 base_uv = SCREEN_UV;
//	vec4 albedo_tex = texture(pip_tex, base_uv);
//	ALBEDO = albedo_tex.rgb;
}