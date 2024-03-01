Shader "Custom/waveTexturre_"
{
     Properties
    {
        WaveTexture_Scale("Scale", float) = 5.0
        WaveTexture_Distortion("Distortion", float) = 5.0
        WaveTexture_Detail("Detail", float) = 5.0
        WaveTexture_DetailScale("DetailScale", float) = 5.0
        WaveTexture_DetailRoughness("DetailRoughness", float) = 5.0
        WaveTexture_PhaseOffset("PhaseOffset", float) = 5.0
    }

    SubShader
    {

        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalRenderPipeline" }
        LOD 100

        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            //Aqui importamos el archivo donde tenemos las funciones que 
            //queremos usar para evitar calcular nosotras la iluminacion
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"            

            //Datos de entrada en el vertex shader
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float4 normal : NORMAL;
                float4 texcoord1 : TEXCOORD1; //Coordenadas para el baking de iluminación
            };
            //Datos que se calculan en el vertex shader y se usan en el fragment shader
            struct v2f
            {
                float4 vertex : SV_POSITION;
                float2 uv : TEXCOORD0;
                float3 positionWS : TEXCOORD1;
                float3 normal : TEXCOORD2;
                float3 viewDir : TEXCOORD3;
                float3 worldPos : TEXCOORD4;
                DECLARE_LIGHTMAP_OR_SH(lightmapUV, vertexSH, 5);
            };
            float WaveTexture_Scale;
            float WaveTexture_Distortion;
            float WaveTexture_Detail;
            float WaveTexture_DetailScale;
            float WaveTexture_DetailRoughness;
            float WaveTexture_PhaseOffset;

            v2f vert(appdata v)
            {
                v2f o;
                o.worldPos = v.vertex.xyz;
                o.positionWS = TransformObjectToWorld(v.vertex.xyz);
                o.normal = TransformObjectToWorldNormal(v.normal.xyz);
                o.viewDir = normalize(_WorldSpaceCameraPos - o.positionWS);
                o.uv = v.uv;
                o.vertex = TransformWorldToHClip(o.positionWS);

                OUTPUT_LIGHTMAP_UV(v.texcoord1, unity_LightmapST, o.lightmapUV);
                OUTPUT_SH(o.normal.xyz, o.vertexSH);

                return o;
            }
            // float safe_noise(float3 p)
            // {
            //     float f = noise("noise", p);
            //     if (isinf(f))
            //         return 0.5;
            //     return f;
            // }
            // float fractal_noise(float3 p, float details, float roughness)
            // {
            //     float fscale = 1.0;
            //     float amp = 1.0;
            //     float maxamp = 0.0;
            //     float sum = 0.0;
            //     float octaves = clamp(details, 0.0, 15.0);
            //     int n = (int)octaves;
            //     for (int i = 0; i <= n; i++) {
            //         float t = safe_noise(fscale * p);
            //         sum += t * amp;
            //         maxamp += amp;
            //         amp *= clamp(roughness, 0.0, 1.0);
            //         fscale *= 2.0;
            //     }
            //     float rmd = octaves - floor(octaves);
            //     if (rmd != 0.0) {
            //         float t = safe_noise(fscale * p);
            //         float sum2 = sum + t * amp;
            //         sum /= maxamp;
            //         sum2 /= maxamp + amp;
            //         return (1.0 - rmd) * sum + rmd * sum2;
            //     }
            //     else {
            //         return sum / maxamp;
            //     }
            // }
           
            float4 waveTexture(float3 p_input,float scale,float distortion,float detail,float dscale,float droughness,float phase){
                p_input*=scale;
                float3 p = (p_input + 0.000001) * 0.999999;
                float n = 0.0;
                n = p[0] * 20.0;
                n += phase;
                // if (distortion != 0.0) {
                //     n = n + (distortion * (fractal_noise(p * dscale, detail, droughness) * 2.0 - 1.0));
                // }
                
                return 0.5 + 0.5 * sin(n - 3.14);
            }
           
			// Add methods
            float4 frag (v2f i) : SV_Target
            {
               
                return waveTexture(i.worldPos, WaveTexture_Scale, WaveTexture_Distortion, WaveTexture_Detail, WaveTexture_DetailScale, WaveTexture_DetailRoughness, WaveTexture_PhaseOffset);
                
            }
            ENDHLSL
        }
        UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
    }
}
