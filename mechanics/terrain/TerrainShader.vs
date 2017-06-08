#version 130

attribute vec3 position;
attribute vec2 textureCoordinates;
attribute vec3 normal;

varying vec3 pass_normal;
varying vec2 pass_textureCoordinates;

uniform mat4 pr_matrix;
uniform mat4 view_matrix;
uniform mat4 ml_matrix;

void main(void){

	vec4 worldPosition = ml_matrix * vec4(position, 1.0);
	gl_Position = pr_matrix * view_matrix * worldPosition;

	pass_textureCoordinates = textureCoordinates;
	pass_normal = normal;
}




