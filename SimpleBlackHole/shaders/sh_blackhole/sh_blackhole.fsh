
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    uniform vec4 tex_transform;
    uniform sampler2D tex_back;
    
    vec2 distort(vec2 T) {
        vec2 B = T - 0.5;
        float d = min( 0.25, dot( B,B ) );
        return T + B.xy * ( 0.2 - 0.05 / d );   
    }    
    
    vec2 surf_coords( vec2 T) { return ( T * tex_transform.xy + tex_transform.zw ); }
    
    void main() {
        vec3 mask = texture2D( gm_BaseTexture, v_vTexcoord ).rgb; //sprite colour
        gl_FragColor = vec4( texture2D( tex_back, surf_coords( distort( v_vTexcoord ) ) ).rgb * mask, 1.0 );
    }
