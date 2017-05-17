#version 130

varying vec2 pass_textureCoordinates;
varying vec3 pass_normal;

uniform sampler2D modelTexture;

void main(void){
	gl_FragColor = vec4(texture2D(modelTexture, pass_textureCoordinates).xyz + pass_normal, 1);
}
