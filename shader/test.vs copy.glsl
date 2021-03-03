#version 330 core
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aNormal;
layout(location = 2) in vec2 aTexCoords;

// declare an interface block; see 'Advanced GLSL' for what these are.
out VsOut
{
    vec3 FragPos;
    vec3 Normal;
    vec2 TexCoords;
} vsOut;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    vsOut.FragPos = aPos;
    vsOut.Normal = aNormal;
    vsOut.TexCoords = aTexCoords;
    gl_Position = projection * view * vec4(aPos, 1.0);
}