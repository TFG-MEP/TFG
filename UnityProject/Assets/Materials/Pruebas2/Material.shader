Shader "Custom/ShaderMaterial_"
{
     Properties
    {
        _NormalTex("Normal Map", 2D) = "bump" {}
        Mapping_Location("Location", Vector) = (0.0, 0.0, 0.0)
		Mapping_Rotation("Rotation", Vector) = (0.0, 0.0, 0.0)
		Mapping_Scale("Scale", Vector) = (1.0, 1.0, 1.0)
		ImageTexture002_Image("Texture", 2D) = "white" {}
		RGB001_Color("Color", Color) = (0.428334236179345,0.11720257599211575,0.14593114466424678, 1.0)
		CheckerTexture_Scale("Scale", float) = 5.0
		PrincipledBSDF_Subsurface("Subsurface", float) = 0.0
		PrincipledBSDF_SubsurfaceRadius("SubsurfaceRadius", Vector) = (1.0, 0.20000000298023224, 0.10000000149011612)
		PrincipledBSDF_SubsurfaceColor("SubsurfaceColor", Color) = (0.9035454676387557,0.0,0.23575306785218694, 1.0)
		PrincipledBSDF_SubsurfaceIOR("SubsurfaceIOR", float) = 1.8159637451171875
		PrincipledBSDF_SubsurfaceAnisotropy("SubsurfaceAnisotropy", float) = 0.0
		PrincipledBSDF_Metallic("Metallic", float) = 0.3527272641658783
		PrincipledBSDF_Specular("Specular", float) = 1.0
		PrincipledBSDF_SpecularTint("SpecularTint", float) = 0.0
		PrincipledBSDF_Roughness("Roughness", float) = 0.14727279543876648
		PrincipledBSDF_Anisotropic("Anisotropic", float) = 0.0
		PrincipledBSDF_AnisotropicRotation("AnisotropicRotation", float) = 0.0
		PrincipledBSDF_Sheen("Sheen", float) = 0.0
		PrincipledBSDF_SheenTint("SheenTint", float) = 0.3509090840816498
		PrincipledBSDF_Clearcoat("Clearcoat", float) = 0.0
		PrincipledBSDF_ClearcoatRoughness("ClearcoatRoughness", float) = 0.029999999329447746
		PrincipledBSDF_IOR("IOR", float) = 1.4500000476837158
		PrincipledBSDF_Transmission("Transmission", float) = 0.0
		PrincipledBSDF_TransmissionRoughness("TransmissionRoughness", float) = 0.0
		PrincipledBSDF_Emission("Emission", Color) = (0.0,0.0,0.0, 1.0)
		PrincipledBSDF_EmissionStrength("EmissionStrength", float) = 0.5999984741210938
		PrincipledBSDF_Alpha("Alpha", float) = 1.0
		PrincipledBSDF_Normal("Normal", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF_ClearcoatNormal("ClearcoatNormal", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF_Tangent("Tangent", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF_Weight("Weight", float) = 0.0
		PrincipledBSDF001_BaseColor("BaseColor", Color) = (0.903545437039038,0.903545437039038,0.903545437039038, 1.0)
		PrincipledBSDF001_Subsurface("Subsurface", float) = 0.0
		PrincipledBSDF001_SubsurfaceRadius("SubsurfaceRadius", Vector) = (1.0, 0.20000000298023224, 0.10000000149011612)
		PrincipledBSDF001_SubsurfaceColor("SubsurfaceColor", Color) = (0.903545437039038,0.903545437039038,0.903545437039038, 1.0)
		PrincipledBSDF001_SubsurfaceIOR("SubsurfaceIOR", float) = 1.8159637451171875
		PrincipledBSDF001_SubsurfaceAnisotropy("SubsurfaceAnisotropy", float) = 0.0
		PrincipledBSDF001_Metallic("Metallic", float) = 0.3527272641658783
		PrincipledBSDF001_Specular("Specular", float) = 1.0
		PrincipledBSDF001_SpecularTint("SpecularTint", float) = 0.0
		PrincipledBSDF001_Roughness("Roughness", float) = 0.14727279543876648
		PrincipledBSDF001_Anisotropic("Anisotropic", float) = 0.0
		PrincipledBSDF001_AnisotropicRotation("AnisotropicRotation", float) = 0.0
		PrincipledBSDF001_Sheen("Sheen", float) = 0.0
		PrincipledBSDF001_SheenTint("SheenTint", float) = 0.3509090840816498
		PrincipledBSDF001_Clearcoat("Clearcoat", float) = 0.0
		PrincipledBSDF001_ClearcoatRoughness("ClearcoatRoughness", float) = 0.029999999329447746
		PrincipledBSDF001_IOR("IOR", float) = 1.4500000476837158
		PrincipledBSDF001_Transmission("Transmission", float) = 0.0
		PrincipledBSDF001_TransmissionRoughness("TransmissionRoughness", float) = 0.0
		PrincipledBSDF001_Emission("Emission", Color) = (0.0,0.0,0.0, 1.0)
		PrincipledBSDF001_EmissionStrength("EmissionStrength", float) = 0.2999984920024872
		PrincipledBSDF001_Alpha("Alpha", float) = 1.0
		PrincipledBSDF001_Normal("Normal", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF001_ClearcoatNormal("ClearcoatNormal", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF001_Tangent("Tangent", Vector) = (0.0, 0.0, 0.0)
		PrincipledBSDF001_Weight("Weight", float) = 0.0
		// Add properties
        _SrcFactor("SrcFactor", Float) = 5
        _DstFactor("DstFactor", Float) = 10
        _BlendOp("Blend Operation", Float) = 0
    }

    SubShader
    {

        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalRenderPipeline"}
        // Add tags

        LOD 100
        Blend [_SrcFactor] [_DstFactor]
        BlendOp [_BlendOp]
        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
          
            #include"Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			//Add includes 
            //Datos de entrada en el vertex shader
            struct appdata
            {
                float4 positionOS : POSITION;
                float2 uv : TEXCOORD0;
                float3 normalOS : NORMAL;
                float4 tangentOS : TANGENT;
                float2 staticLightmapUV : TEXCOORD1;
                float2 dynamicLightmapUV : TEXCOORD2;
            };
            //Datos que se calculan en el vertex shader y se usan en el fragment shader
            struct v2f
            {
                float4 positionCS : SV_POSITION;
                float2 uv : TEXCOORD0;
                float3 positionWS : TEXCOORD1;
                float3 normalWS : TEXCOORD2;
                float4 tangentWS : TEXCOORD3;
                float3 viewDirWS : TEXCOORD4;
                float4 shadowCoord : TEXCOORD5;
                DECLARE_LIGHTMAP_OR_SH(staticLightmapUV, vertexSH, 6);
                #ifdef DYNAMICLIGHTMAP_ON
                float2  dynamicLightmapUV : TEXCOORD7;
                #endif
                float3 worldPos : TEXCOORD8;
            };

            float3 Mapping_Location;
			float3 Mapping_Rotation;
			float3 Mapping_Scale;
			sampler2D ImageTexture002_Image;
			float4 RGB001_Color;
			float CheckerTexture_Scale;
			float PrincipledBSDF_Subsurface;
			float3 PrincipledBSDF_SubsurfaceRadius;
			float4 PrincipledBSDF_SubsurfaceColor;
			float PrincipledBSDF_SubsurfaceIOR;
			float PrincipledBSDF_SubsurfaceAnisotropy;
			float PrincipledBSDF_Metallic;
			float PrincipledBSDF_Specular;
			float PrincipledBSDF_SpecularTint;
			float PrincipledBSDF_Roughness;
			float PrincipledBSDF_Anisotropic;
			float PrincipledBSDF_AnisotropicRotation;
			float PrincipledBSDF_Sheen;
			float PrincipledBSDF_SheenTint;
			float PrincipledBSDF_Clearcoat;
			float PrincipledBSDF_ClearcoatRoughness;
			float PrincipledBSDF_IOR;
			float PrincipledBSDF_Transmission;
			float PrincipledBSDF_TransmissionRoughness;
			float4 PrincipledBSDF_Emission;
			float PrincipledBSDF_EmissionStrength;
			float PrincipledBSDF_Alpha;
			float3 PrincipledBSDF_Normal;
			float3 PrincipledBSDF_ClearcoatNormal;
			float3 PrincipledBSDF_Tangent;
			float PrincipledBSDF_Weight;
			float4 PrincipledBSDF001_BaseColor;
			float PrincipledBSDF001_Subsurface;
			float3 PrincipledBSDF001_SubsurfaceRadius;
			float4 PrincipledBSDF001_SubsurfaceColor;
			float PrincipledBSDF001_SubsurfaceIOR;
			float PrincipledBSDF001_SubsurfaceAnisotropy;
			float PrincipledBSDF001_Metallic;
			float PrincipledBSDF001_Specular;
			float PrincipledBSDF001_SpecularTint;
			float PrincipledBSDF001_Roughness;
			float PrincipledBSDF001_Anisotropic;
			float PrincipledBSDF001_AnisotropicRotation;
			float PrincipledBSDF001_Sheen;
			float PrincipledBSDF001_SheenTint;
			float PrincipledBSDF001_Clearcoat;
			float PrincipledBSDF001_ClearcoatRoughness;
			float PrincipledBSDF001_IOR;
			float PrincipledBSDF001_Transmission;
			float PrincipledBSDF001_TransmissionRoughness;
			float4 PrincipledBSDF001_Emission;
			float PrincipledBSDF001_EmissionStrength;
			float PrincipledBSDF001_Alpha;
			float3 PrincipledBSDF001_Normal;
			float3 PrincipledBSDF001_ClearcoatNormal;
			float3 PrincipledBSDF001_Tangent;
			float PrincipledBSDF001_Weight;
			// Add variables
    
            sampler2D _NormalTex;
            v2f vert(appdata v)
            {
                v2f o;
                o.worldPos = v.positionOS.xyz;
                VertexPositionInputs vertexInput = GetVertexPositionInputs(v.
                positionOS.xyz);
                VertexNormalInputs normalInput = GetVertexNormalInputs(v.normalOS, 
                v.tangentOS);
                o.positionWS = vertexInput.positionWS;
                o.positionCS = vertexInput.positionCS;
                o.uv = v.uv;
                o.normalWS = normalInput.normalWS;
                float sign = v.tangentOS.w;
                o.tangentWS = float4(normalInput.tangentWS.xyz, sign);
                o.viewDirWS = GetWorldSpaceNormalizeViewDir(vertexInput.positionWS);
                o.shadowCoord = GetShadowCoord(vertexInput);
                OUTPUT_LIGHTMAP_UV(v.staticLightmapUV, unity_LightmapST, 
                o.staticLightmapUV);

                #ifdef DYNAMICLIGHTMAP_ON
                v.dynamicLightmapUV = v.dynamicLightmapUV.xy * unity_
                DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                OUTPUT_SH(o.normalWS.xyz, o.vertexSH);
                return o;
            }
            
              float3 mapping( float3 vectore,float3 location, float3 rotation, float3 scale) {
    // Añade la ubicación para la traslación
    vectore += location;

    // Aplica la rotación (en radianes)
    float3 rotated_vector;
    rotated_vector.x = vectore.x * cos(rotation.y) * cos(rotation.z) - vectore.y * (sin(rotation.x) * sin(rotation.z) - cos(rotation.x) * cos(rotation.z) * sin(rotation.y)) + vectore.z * (cos(rotation.x) * sin(rotation.z) + cos(rotation.z) * sin(rotation.x) * sin(rotation.y));
    rotated_vector.y = vectore.x * sin(rotation.y) * cos(rotation.z) + vectore.y * (cos(rotation.x) * cos(rotation.z) + sin(rotation.x) * sin(rotation.y) * sin(rotation.z)) - vectore.z * (cos(rotation.y) * sin(rotation.x) - cos(rotation.x) * sin(rotation.y) * sin(rotation.z));
    rotated_vector.z = -vectore.x * sin(rotation.z) + vectore.y * cos(rotation.z) * sin(rotation.x) + vectore.z * cos(rotation.x) * cos(rotation.y);

    // Aplica la escala
    rotated_vector *= scale;

    return rotated_vector;
}
			// función que crea una textura a partir de un sampler2D
float4 image_texture( float2 texcoord,sampler2D textura){
	float4 colorImage=tex2D(textura, texcoord);
	return colorImage;
}

			float4 rgb(float4 input_color)
            {
                return input_color;
            }
			float4 checker(float3  ip, float4 color1, float4 color2,float Scale)
{
    ip *= Scale/2;
    float3 p;
    p[0] = (ip[0] + 0.000001) * 0.999999;
    p[1] = (ip[1] + 0.000001) * 0.999999;
    p[2] = (ip[2] + 0.000001) * 0.999999;

    int xi = (int)abs(floor(p[0]));
    int yi = (int)abs(floor(p[1]));
    int zi = (int)abs(floor(p[2]));
    //SI SON PARES
    if ((xi % 2 == yi % 2) == (zi % 2)) {
        return color2;
    }
    else {
        return color1;
    }
}

			float4 principled_bsdf(v2f i, float4 PrincipledBSDF_BaseColor,float PrincipledBSDF_Subsurface, float3 PrincipledBSDF_SubsurfaceRadius, float4 PrincipledBSDF_SubsurfaceColor,float PrincipledBSDF_SubsurfaceIOR,float PrincipledBSDF_SubsurfaceAnisotropy,
float PrincipledBSDF_Metallic, float PrincipledBSDF_Specular,float PrincipledBSDF_SpecularTint,float PrincipledBSDF_Roughness,float PrincipledBSDF_Anisotropic, float PrincipledBSDF_AnisotropicRotation,float PrincipledBSDF_Sheen, 
float PrincipledBSDF_SheenTint,float PrincipledBSDF_Clearcoat,float PrincipledBSDF_ClearcoatRoughness,float PrincipledBSDF_IOR,float PrincipledBSDF_Transmission,float PrincipledBSDF_TransmissionRoughness,float4 PrincipledBSDF_Emission,
float PrincipledBSDF_EmissionStrength,float PrincipledBSDF_Alpha, float3 PrincipledBSDF_Normal,float3 PrincipledBSDF_ClearcoatNormal, float3 PrincipledBSDF_Tangent, float PrincipledBSDF_Weight)
            { 
                SurfaceData surfacedata;
                surfacedata.albedo = PrincipledBSDF_BaseColor;
                surfacedata.specular = 0;
                surfacedata.metallic = clamp(PrincipledBSDF_Metallic,0,1);
                surfacedata.smoothness = clamp(1-PrincipledBSDF_Roughness,0,1);
                if(PrincipledBSDF_Normal.x==0&&PrincipledBSDF_Normal.y==0&&PrincipledBSDF_Normal.z==0){
                    surfacedata.normalTS = UnpackNormal(tex2D(_NormalTex, i.uv));  
                } 
                else surfacedata.normalTS =PrincipledBSDF_Normal;  
               

                PrincipledBSDF_Emission.rgb *= PrincipledBSDF_EmissionStrength;
                surfacedata.emission = PrincipledBSDF_Emission;
                surfacedata.occlusion = 1; //"Ambient occlusion"
                surfacedata.alpha = clamp(PrincipledBSDF_Alpha,0,1);
                surfacedata.clearCoatMask = 0;
                surfacedata.clearCoatSmoothness = 0;

                // Emission output.
                #if USE_EMISSION_ON
                PrincipledBSDF_Emission.rgb *= PrincipledBSDF_EmissionStrength;
                surfaceData.emission = PrincipledBSDF_Emission;;
                #endif
               
                InputData inputData = (InputData)0;
                // Position input.
                inputData.positionWS = i.positionWS;
                // Normal input.
                float3 bitangent = i.tangentWS.w * cross(i.normalWS, 
                i.tangentWS.xyz);
                inputData.tangentToWorld = float3x3(i.tangentWS.xyz, bitangent, 
                i.normalWS);
                inputData.normalWS = TransformTangentToWorld(surfacedata.normalTS, inputData.
                tangentToWorld);
                inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
                // View direction input.
                inputData.viewDirectionWS = SafeNormalize(i.viewDirWS);
                // Shadow coords.
                inputData.shadowCoord = TransformWorldToShadowCoord 
                (inputData .positionWS);
                // Baked lightmaps.
                #if defined(DYNAMICLIGHTMAP_ON)
                inputData.bakedGI = SAMPLE_GI(i.staticLightmapUV, 
                i.dynamicLightmapUV, i.vertexSH, inputData.normalWS);
             

                #else
                inputData.bakedGI = SAMPLE_GI(i.staticLightmapUV, i.vertexSH, 
                inputData.normalWS);
                #endif
                inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.
                positionCS);
                inputData.shadowMask = SAMPLE_SHADOWMASK(i.staticLightmapUV);
               
                return UniversalFragmentPBR(inputData, surfacedata);

            }
			float4 add_shader(float4 shader1, float4 shader2) {
                return shader1+shader2;
            }
			// Add methods
            float4 frag (v2f i) : SV_Target
            {

                float3 Mapping_Vector = i.worldPos;
				float3 CheckerTexture_Vector = mapping(Mapping_Vector, Mapping_Location, Mapping_Rotation, Mapping_Scale);
				float3 ImageTexture002_Vector = float3(i.uv,0);
				float4 CheckerTexture_Color1 = image_texture(ImageTexture002_Vector, ImageTexture002_Image);
				float4 CheckerTexture_Color2 = rgb(RGB001_Color);
				float4 PrincipledBSDF_BaseColor = checker(CheckerTexture_Vector, CheckerTexture_Color1, CheckerTexture_Color2, CheckerTexture_Scale);
				float4 AddShader_Shader = principled_bsdf(i, PrincipledBSDF_BaseColor, PrincipledBSDF_Subsurface, PrincipledBSDF_SubsurfaceRadius, PrincipledBSDF_SubsurfaceColor, PrincipledBSDF_SubsurfaceIOR, PrincipledBSDF_SubsurfaceAnisotropy, PrincipledBSDF_Metallic, PrincipledBSDF_Specular, PrincipledBSDF_SpecularTint, PrincipledBSDF_Roughness, PrincipledBSDF_Anisotropic, PrincipledBSDF_AnisotropicRotation, PrincipledBSDF_Sheen, PrincipledBSDF_SheenTint, PrincipledBSDF_Clearcoat, PrincipledBSDF_ClearcoatRoughness, PrincipledBSDF_IOR, PrincipledBSDF_Transmission, PrincipledBSDF_TransmissionRoughness, PrincipledBSDF_Emission, PrincipledBSDF_EmissionStrength, PrincipledBSDF_Alpha, PrincipledBSDF_Normal, PrincipledBSDF_ClearcoatNormal, PrincipledBSDF_Tangent, PrincipledBSDF_Weight);
				float4 AddShader_Shader_001 = principled_bsdf(i, PrincipledBSDF001_BaseColor, PrincipledBSDF001_Subsurface, PrincipledBSDF001_SubsurfaceRadius, PrincipledBSDF001_SubsurfaceColor, PrincipledBSDF001_SubsurfaceIOR, PrincipledBSDF001_SubsurfaceAnisotropy, PrincipledBSDF001_Metallic, PrincipledBSDF001_Specular, PrincipledBSDF001_SpecularTint, PrincipledBSDF001_Roughness, PrincipledBSDF001_Anisotropic, PrincipledBSDF001_AnisotropicRotation, PrincipledBSDF001_Sheen, PrincipledBSDF001_SheenTint, PrincipledBSDF001_Clearcoat, PrincipledBSDF001_ClearcoatRoughness, PrincipledBSDF001_IOR, PrincipledBSDF001_Transmission, PrincipledBSDF001_TransmissionRoughness, PrincipledBSDF001_Emission, PrincipledBSDF001_EmissionStrength, PrincipledBSDF001_Alpha, PrincipledBSDF001_Normal, PrincipledBSDF001_ClearcoatNormal, PrincipledBSDF001_Tangent, PrincipledBSDF001_Weight);
				float4 MaterialOutput_Surface = add_shader(AddShader_Shader, AddShader_Shader_001);
				// Call methods
              
                
                return MaterialOutput_Surface;
                
            }
            ENDHLSL
        }
        UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
    }
}
