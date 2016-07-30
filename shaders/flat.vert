#version 420

in vec3 position;
in vec3 normal;
uniform mat4 projection;
uniform mat4 modelview;
uniform mat4 model;

out vec3 frag_normal;

void main(void)
{
    gl_Position = projection * modelview * vec4(position, 1.0);
    frag_normal = mat3(model) * normal;
}
