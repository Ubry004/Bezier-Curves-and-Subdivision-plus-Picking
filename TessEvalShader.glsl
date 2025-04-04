#version 400 core

layout(isolines, equal_spacing, cw) in;

uniform mat4 MVP;

void main() {
    float t = gl_TessCoord.x;
    
    vec4 p0 = gl_in[0].gl_Position;
    vec4 p1 = gl_in[1].gl_Position;
    vec4 p2 = gl_in[2].gl_Position;
    
    // Evaluate the quadratic Bézier curve at t.
    // Using the Bernstein polynomials: (1-t)^2, 2(1-t)t, t^2.
    vec4 pos = (1.0 - t) * (1.0 - t) * p0 +
               2.0 * (1.0 - t) * t * p1 +
               t * t * p2;
               
    gl_Position = MVP * pos;
}
