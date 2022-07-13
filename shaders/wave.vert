
{{triadica_perspective}}
{{triadica_noises}}

attribute float a_idx;

varying float v_r;
varying float v_s;
varying float z_color;
varying vec3 original_position;

void main() {

  float r = 0.01 * a_idx;
  float angle = a_idx * 0.02;
  float x = r * cos(angle);
  float y = r * sin(angle);
  float scale_down = 0.002;
  vec3 a_position = vec3(
    x,
    60.0 * snoise(vec2(scale_down * x, scale_down * y)),
    y
  );

  PointResult result = transform_perspective(a_position);
  vec3 pos_next = result.point;

  original_position = a_position;

  v_r = result.r;
  v_s = result.s;

  gl_Position = vec4(pos_next * 0.001, 1.0);
}