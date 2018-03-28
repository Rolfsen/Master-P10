// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-409-OUT,spec-5594-OUT,gloss-5594-OUT,alpha-1391-OUT,voffset-9757-OUT;n:type:ShaderForge.SFN_DepthBlend,id:6749,x:31433,y:33347,varname:node_6749,prsc:2|DIST-7408-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7408,x:31232,y:33347,ptovrint:False,ptlb:Shore Blend,ptin:_ShoreBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:5594,x:32488,y:32796,varname:node_5594,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9652,x:32488,y:32881,varname:node_9652,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:1391,x:31641,y:33347,varname:node_1391,prsc:2|A-1587-A,B-6749-OUT;n:type:ShaderForge.SFN_Tex2d,id:6473,x:31232,y:32814,varname:node_982,prsc:2,tex:076761963c2c55544846e5ebe78b7a1a,ntxv:0,isnm:False|UVIN-8705-OUT,TEX-3012-TEX;n:type:ShaderForge.SFN_Color,id:1587,x:31433,y:33154,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:_WaterColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07450981,c2:0.3647059,c3:0.7058824,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:5826,x:31641,y:33140,ptovrint:False,ptlb:Shore Foam Depth,ptin:_ShoreFoamDepth,varname:_ShoreFoamDepth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:5828,x:31799,y:33140,varname:node_5828,prsc:2|DIST-5826-OUT;n:type:ShaderForge.SFN_RemapRange,id:9404,x:31983,y:33140,varname:node_9404,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-5828-OUT;n:type:ShaderForge.SFN_Multiply,id:9468,x:31433,y:32814,varname:node_9468,prsc:2|A-6473-RGB,B-9764-RGB;n:type:ShaderForge.SFN_Color,id:9764,x:31232,y:32649,ptovrint:False,ptlb:Foam Shore Tint,ptin:_FoamShoreTint,varname:node_7456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2507,x:31028,y:33154,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:_ShoreFoam_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:076761963c2c55544846e5ebe78b7a1a,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:9291,x:31232,y:33154,ptovrint:False,ptlb:Foam Tint,ptin:_FoamTint,varname:_FoamTint_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1803922,c2:0.4705882,c3:0.8196079,c4:1;n:type:ShaderForge.SFN_Multiply,id:9518,x:31433,y:32969,varname:node_9518,prsc:2|A-740-RGB,B-9291-RGB;n:type:ShaderForge.SFN_Tex2d,id:740,x:31232,y:32969,varname:node_1087,prsc:2,tex:076761963c2c55544846e5ebe78b7a1a,ntxv:0,isnm:False|UVIN-2961-OUT,TEX-2507-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3012,x:31033,y:32485,ptovrint:False,ptlb:Foam Shore,ptin:_FoamShore,varname:node_2145,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:076761963c2c55544846e5ebe78b7a1a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9612,x:31641,y:32811,varname:node_9612,prsc:2|A-1587-RGB,B-9468-OUT,T-6473-A;n:type:ShaderForge.SFN_Lerp,id:127,x:31641,y:32965,varname:node_127,prsc:2|A-1587-RGB,B-9518-OUT,T-740-A;n:type:ShaderForge.SFN_Lerp,id:409,x:32249,y:32712,varname:node_409,prsc:2|A-127-OUT,B-9612-OUT,T-9404-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8129,x:29945,y:32658,varname:node_8129,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-5114-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:5114,x:29747,y:32658,varname:node_5114,prsc:2;n:type:ShaderForge.SFN_Slider,id:7173,x:29787,y:33460,ptovrint:False,ptlb:Foam Wobble,ptin:_FoamWobble,varname:node_7173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.002,max:0.1;n:type:ShaderForge.SFN_Time,id:6166,x:29563,y:33229,varname:node_6166,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4894,x:29944,y:33663,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_WindNoiseTexture3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:5203,x:29787,y:33555,ptovrint:False,ptlb:Water Wobble,ptin:_WaterWobble,varname:_node_7173_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.002,max:0.1;n:type:ShaderForge.SFN_Slider,id:3460,x:29593,y:34312,ptovrint:False,ptlb:Wave 1 X-Direction,ptin:_Wave1XDirection,varname:node_3460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.3,max:1;n:type:ShaderForge.SFN_Slider,id:9328,x:29593,y:34419,ptovrint:False,ptlb:Wave 1 Y-Direction,ptin:_Wave1YDirection,varname:_node_3460_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:8498,x:30013,y:34310,varname:node_8498,prsc:2|A-3460-OUT,B-9328-OUT;n:type:ShaderForge.SFN_Dot,id:8539,x:30284,y:34308,varname:node_8539,prsc:2,dt:0|A-8498-OUT,B-5177-OUT;n:type:ShaderForge.SFN_Code,id:3808,x:30850,y:34261,varname:node_3808,prsc:2,code:ZgBsAG8AYQB0ACAAcABoAGEAcwBlAEMAbwBuAHMAdAAgAD0AIABTAHAAZQBlAGQAIAAqACAAVwBhAHYAZQBsAGUAbgBnAHQAaAA7AAoAZgBsAG8AYQB0ACAAeABWAGEAbAAgAD0AIABTAHQAZQBlAHAAbgBlAHMAcwAgACoAIABBAG0AcABsAGkAdAB1AGQAZQAgACoAIABEAGkAcgBlAGMAdABpAG8AbgBWAGUAYwAuAHgAIAAqACAAYwBvAHMAKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHkAVgBhAGwAIAA9ACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAAcwBpAG4AKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHoAVgBhAGwAIAA9ACAAUwB0AGUAZQBwAG4AZQBzAHMAIAAqACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAARABpAHIAZQBjAHQAaQBvAG4AVgBlAGMALgB5ACAAKgAgAGMAbwBzACgAVwBhAHYAZQBsAGUAbgBnAHQAaAAgACoAIABEAG8AdABQAHIAbwBkACAAKwAgAFQAaQBtAGUAIAAqACAAcABoAGEAcwBlAEMAbwBuAHMAdAApADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAeABWAGEAbAAsACAAeQBWAGEAbAAsACAAegBWAGEAbAApADsACgA=,output:2,fname:GerstnerVertex1,width:893,height:190,input:0,input:0,input:0,input:0,input:0,input:0,input:1,input_1_label:Steepness,input_2_label:Amplitude,input_3_label:Wavelength,input_4_label:Speed,input_5_label:Time,input_6_label:DotProd,input_7_label:DirectionVec|A-9110-OUT,B-6460-OUT,C-6222-OUT,D-3186-OUT,E-5421-OUT,F-8539-OUT,G-8498-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3677,x:29753,y:34972,varname:node_3677,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:5177,x:30016,y:34934,varname:node_5177,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-3677-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:3186,x:30281,y:34234,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_3186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:6222,x:30280,y:34150,ptovrint:False,ptlb:Wave Spread,ptin:_WaveSpread,varname:node_6222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:6460,x:30280,y:34064,ptovrint:False,ptlb:Wave Height,ptin:_WaveHeight,varname:node_6460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.08;n:type:ShaderForge.SFN_ValueProperty,id:9110,x:30280,y:33979,ptovrint:False,ptlb:Wave Sharpness,ptin:_WaveSharpness,varname:node_9110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Sin,id:1848,x:30879,y:33931,varname:node_1848,prsc:2|IN-3808-OUT;n:type:ShaderForge.SFN_Time,id:9364,x:30016,y:35138,varname:node_9364,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5421,x:30475,y:34954,varname:node_5421,prsc:2|A-266-OUT,B-9364-T;n:type:ShaderForge.SFN_ValueProperty,id:266,x:30287,y:34954,ptovrint:False,ptlb:Gerstner 1 Time Multiplier,ptin:_Gerstner1TimeMultiplier,varname:node_266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9757,x:31069,y:33931,varname:node_9757,prsc:2|A-1848-OUT,B-3503-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3503,x:30879,y:34092,ptovrint:False,ptlb:Wave Intensity,ptin:_WaveIntensity,varname:node_3503,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:5088,x:29753,y:32961,varname:node_5088,prsc:2|A-6958-OUT,B-5153-OUT;n:type:ShaderForge.SFN_Add,id:2961,x:30696,y:32805,varname:node_2961,prsc:2|A-4535-OUT,B-48-OUT;n:type:ShaderForge.SFN_Multiply,id:1861,x:30161,y:32961,varname:node_1861,prsc:2|A-9628-OUT,B-9325-OUT;n:type:ShaderForge.SFN_Add,id:8705,x:30696,y:32652,varname:node_8705,prsc:2|A-297-OUT,B-1861-OUT;n:type:ShaderForge.SFN_Multiply,id:48,x:30161,y:33123,varname:node_48,prsc:2|A-9628-OUT,B-9325-OUT;n:type:ShaderForge.SFN_Power,id:5718,x:30161,y:33444,varname:node_5718,prsc:2|VAL-4894-RGB,EXP-5203-OUT;n:type:ShaderForge.SFN_Multiply,id:4535,x:30449,y:32805,varname:node_4535,prsc:2|A-8129-OUT,B-5718-OUT;n:type:ShaderForge.SFN_Power,id:2557,x:30161,y:33299,varname:node_2557,prsc:2|VAL-4894-RGB,EXP-7173-OUT;n:type:ShaderForge.SFN_Multiply,id:297,x:30449,y:32652,varname:node_297,prsc:2|A-8129-OUT,B-2557-OUT;n:type:ShaderForge.SFN_Slider,id:6958,x:29395,y:32964,ptovrint:False,ptlb:Texture Direction X,ptin:_TextureDirectionX,varname:node_6958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:5153,x:29395,y:33056,ptovrint:False,ptlb:Texture Direction Y,ptin:_TextureDirectionY,varname:node_5153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Normalize,id:9628,x:29907,y:32961,varname:node_9628,prsc:2|IN-5088-OUT;n:type:ShaderForge.SFN_Multiply,id:9325,x:29753,y:33322,varname:node_9325,prsc:2|A-6166-T,B-4219-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4219,x:29563,y:33384,ptovrint:False,ptlb:Texture Speed,ptin:_TextureSpeed,varname:node_4219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;proporder:1587-9291-2507-9764-3012-5826-7408-7173-5203-3460-9328-6958-5153-4219-4894-266-3503-3186-6460-9110-6222;pass:END;sub:END;*/

Shader "DCC/Water Toon V1" {
    Properties {
        _WaterColor ("Water Color", Color) = (0.07450981,0.3647059,0.7058824,1)
        _FoamTint ("Foam Tint", Color) = (0.1803922,0.4705882,0.8196079,1)
        _Foam ("Foam", 2D) = "black" {}
        _FoamShoreTint ("Foam Shore Tint", Color) = (1,1,1,1)
        _FoamShore ("Foam Shore", 2D) = "white" {}
        _ShoreFoamDepth ("Shore Foam Depth", Float ) = 1
        _ShoreBlend ("Shore Blend", Float ) = 0.1
        _FoamWobble ("Foam Wobble", Range(0, 0.1)) = 0.002
        _WaterWobble ("Water Wobble", Range(0, 0.1)) = 0.002
        _Wave1XDirection ("Wave 1 X-Direction", Range(-1, 1)) = 0.3
        _Wave1YDirection ("Wave 1 Y-Direction", Range(-1, 1)) = 0
        _TextureDirectionX ("Texture Direction X", Range(-1, 1)) = 1
        _TextureDirectionY ("Texture Direction Y", Range(-1, 1)) = 0
        _TextureSpeed ("Texture Speed", Float ) = 0.1
        _Noise ("Noise", 2D) = "white" {}
        _Gerstner1TimeMultiplier ("Gerstner 1 Time Multiplier", Float ) = 1
        _WaveIntensity ("Wave Intensity", Float ) = 1
        _WaveSpeed ("Wave Speed", Float ) = 0.1
        _WaveHeight ("Wave Height", Float ) = 0.08
        _WaveSharpness ("Wave Sharpness", Float ) = 1
        _WaveSpread ("Wave Spread", Float ) = 10
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _ShoreBlend;
            uniform float4 _WaterColor;
            uniform float _ShoreFoamDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            uniform float _FoamWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _WaterWobble;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _TextureDirectionX;
            uniform float _TextureDirectionY;
            uniform float _TextureSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9364 = _Time + _TimeEditor;
                float2 node_8498 = float2(_Wave1XDirection,_Wave1YDirection);
                v.vertex.xyz += (sin(GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier*node_9364.g) , dot(node_8498,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_8498 ))*_WaveIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_5594 = 0.0;
                float gloss = node_5594;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = node_5594;
                float specularMonochrome;
                float2 node_8129 = i.posWorld.rgb.rb;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_9628 = normalize(float2(_TextureDirectionX,_TextureDirectionY));
                float4 node_6166 = _Time + _TimeEditor;
                float node_9325 = (node_6166.g*_TextureSpeed);
                float3 node_2961 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_WaterWobble))+float3((node_9628*node_9325),0.0));
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_2961, _Foam));
                float3 node_8705 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_FoamWobble))+float3((node_9628*node_9325),0.0));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_8705, _FoamShore));
                float3 diffuseColor = lerp(lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a),lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a),(saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,(_WaterColor.a*saturate((sceneZ-partZ)/_ShoreBlend)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _ShoreBlend;
            uniform float4 _WaterColor;
            uniform float _ShoreFoamDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            uniform float _FoamWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _WaterWobble;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _TextureDirectionX;
            uniform float _TextureDirectionY;
            uniform float _TextureSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9364 = _Time + _TimeEditor;
                float2 node_8498 = float2(_Wave1XDirection,_Wave1YDirection);
                v.vertex.xyz += (sin(GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier*node_9364.g) , dot(node_8498,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_8498 ))*_WaveIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_5594 = 0.0;
                float gloss = node_5594;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = node_5594;
                float specularMonochrome;
                float2 node_8129 = i.posWorld.rgb.rb;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_9628 = normalize(float2(_TextureDirectionX,_TextureDirectionY));
                float4 node_6166 = _Time + _TimeEditor;
                float node_9325 = (node_6166.g*_TextureSpeed);
                float3 node_2961 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_WaterWobble))+float3((node_9628*node_9325),0.0));
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_2961, _Foam));
                float3 node_8705 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_FoamWobble))+float3((node_9628*node_9325),0.0));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_8705, _FoamShore));
                float3 diffuseColor = lerp(lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a),lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a),(saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (_WaterColor.a*saturate((sceneZ-partZ)/_ShoreBlend)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_9364 = _Time + _TimeEditor;
                float2 node_8498 = float2(_Wave1XDirection,_Wave1YDirection);
                v.vertex.xyz += (sin(GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier*node_9364.g) , dot(node_8498,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_8498 ))*_WaveIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform float _ShoreFoamDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            uniform float _FoamWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _WaterWobble;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _TextureDirectionX;
            uniform float _TextureDirectionY;
            uniform float _TextureSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_9364 = _Time + _TimeEditor;
                float2 node_8498 = float2(_Wave1XDirection,_Wave1YDirection);
                v.vertex.xyz += (sin(GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier*node_9364.g) , dot(node_8498,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_8498 ))*_WaveIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float2 node_8129 = i.posWorld.rgb.rb;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_9628 = normalize(float2(_TextureDirectionX,_TextureDirectionY));
                float4 node_6166 = _Time + _TimeEditor;
                float node_9325 = (node_6166.g*_TextureSpeed);
                float3 node_2961 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_WaterWobble))+float3((node_9628*node_9325),0.0));
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_2961, _Foam));
                float3 node_8705 = ((float3(node_8129,0.0)*pow(_Noise_var.rgb,_FoamWobble))+float3((node_9628*node_9325),0.0));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_8705, _FoamShore));
                float3 diffColor = lerp(lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a),lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a),(saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0));
                float specularMonochrome;
                float3 specColor;
                float node_5594 = 0.0;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_5594, specColor, specularMonochrome );
                float roughness = 1.0 - node_5594;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
