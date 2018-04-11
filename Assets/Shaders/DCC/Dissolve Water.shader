// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34059,y:32333,varname:node_2865,prsc:2|diff-8235-OUT;n:type:ShaderForge.SFN_Color,id:4078,x:32430,y:32972,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3634,x:31776,y:30990,ptovrint:False,ptlb:Overlay U Speed,ptin:_OverlayUSpeed,varname:_OverlayUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5191,x:31776,y:31078,ptovrint:False,ptlb:Overlay V Speed,ptin:_OverlayVSpeed,varname:_OverlayVspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:8300,x:32045,y:31049,varname:node_8300,prsc:2|A-3634-OUT,B-5191-OUT;n:type:ShaderForge.SFN_TexCoord,id:728,x:32296,y:31049,varname:node_728,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1877,x:32475,y:31202,varname:node_1877,prsc:2|A-728-UVOUT,B-5456-OUT;n:type:ShaderForge.SFN_Multiply,id:5456,x:32296,y:31202,varname:node_5456,prsc:2|A-8300-OUT,B-8574-OUT;n:type:ShaderForge.SFN_Time,id:4436,x:31856,y:31287,varname:node_4436,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5055,x:32626,y:32972,varname:node_5055,prsc:2|A-4078-RGB,B-1911-RGB;n:type:ShaderForge.SFN_Tex2d,id:1911,x:32430,y:33141,varname:node_9150,prsc:2,tex:166596c1c4410427a8b4936910f5c1f9,ntxv:0,isnm:False|TEX-9646-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9646,x:32113,y:33104,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_9355,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:166596c1c4410427a8b4936910f5c1f9,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:9996,x:31699,y:31207,ptovrint:False,ptlb:Overlay Speed,ptin:_OverlaySpeed,varname:_Noise2speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.406617,max:10;n:type:ShaderForge.SFN_Multiply,id:8574,x:32045,y:31202,varname:node_8574,prsc:2|A-9996-OUT,B-4436-T;n:type:ShaderForge.SFN_Slider,id:9117,x:30310,y:32719,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_4039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3461309,max:1;n:type:ShaderForge.SFN_Add,id:308,x:30999,y:32827,varname:node_308,prsc:2|A-9201-OUT,B-2596-OUT;n:type:ShaderForge.SFN_RemapRange,id:9201,x:30795,y:32719,varname:node_9201,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.9|IN-9117-OUT;n:type:ShaderForge.SFN_OneMinus,id:4507,x:30633,y:32719,varname:node_4507,prsc:2|IN-9117-OUT;n:type:ShaderForge.SFN_Slider,id:7547,x:31017,y:32720,ptovrint:False,ptlb:Dissolve Max,ptin:_DissolveMax,varname:node_7359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:5,max:10;n:type:ShaderForge.SFN_Slider,id:2326,x:31017,y:32625,ptovrint:False,ptlb:Dissolve Min,ptin:_DissolveMin,varname:node_8221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-2,max:10;n:type:ShaderForge.SFN_Vector1,id:5663,x:31174,y:32959,varname:node_5663,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6949,x:31174,y:33022,varname:node_6949,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6228,x:31174,y:33153,varname:node_6228,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:22,x:31174,y:33086,varname:node_22,prsc:2,v1:-2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6789,x:31564,y:32788,varname:node_6789,prsc:2|IN-8946-OUT,IMIN-5663-OUT,IMAX-6949-OUT,OMIN-2326-OUT,OMAX-7547-OUT;n:type:ShaderForge.SFN_Clamp01,id:1029,x:31928,y:32788,varname:node_1029,prsc:2|IN-7460-OUT;n:type:ShaderForge.SFN_Vector1,id:8427,x:31483,y:32339,varname:node_8427,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:7279,x:31646,y:32305,varname:node_7279,prsc:2|A-1029-OUT,B-8427-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6735,x:31646,y:32471,ptovrint:False,ptlb:Dissolve Ramp,ptin:_DissolveRamp,varname:node_1715,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ce27195f30a15f341811cc7e48f8f668,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:8946,x:31174,y:32827,varname:node_8946,prsc:2|IN-308-OUT;n:type:ShaderForge.SFN_Color,id:6798,x:31849,y:32157,ptovrint:False,ptlb:Dissolve Color,ptin:_DissolveColor,varname:node_3412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5523,x:31849,y:32306,varname:node_1591,prsc:2,tex:ce27195f30a15f341811cc7e48f8f668,ntxv:0,isnm:False|UVIN-7279-OUT,TEX-6735-TEX;n:type:ShaderForge.SFN_Slider,id:7177,x:32028,y:32348,ptovrint:False,ptlb:Dissolve Color Intensity,ptin:_DissolveColorIntensity,varname:node_9403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_ComponentMask,id:7142,x:31849,y:32472,varname:node_7142,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7279-OUT;n:type:ShaderForge.SFN_Clamp01,id:7460,x:31740,y:32788,varname:node_7460,prsc:2|IN-6789-OUT;n:type:ShaderForge.SFN_Tex2d,id:7530,x:32658,y:31202,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_4643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a6413edcec50bd34b93c506373c83fe1,ntxv:0,isnm:False|UVIN-1877-OUT;n:type:ShaderForge.SFN_Lerp,id:8235,x:33207,y:31688,varname:node_8235,prsc:2|A-6906-OUT,B-4087-OUT,T-2204-OUT;n:type:ShaderForge.SFN_Tex2d,id:900,x:31793,y:31680,ptovrint:False,ptlb:Overlay Mask,ptin:_OverlayMask,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:051d2a9667ced154e9f1b4f730916cc2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7782,x:32003,y:31951,ptovrint:False,ptlb:Overlay Intensity,ptin:_OverlayIntensity,varname:node_5377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:4325,x:32658,y:31396,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_5433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4889706,c2:0.5935091,c3:0.9779412,c4:1;n:type:ShaderForge.SFN_Multiply,id:6906,x:32968,y:31598,varname:node_6906,prsc:2|A-7530-RGB,B-4325-RGB;n:type:ShaderForge.SFN_Slider,id:2857,x:31636,y:31867,ptovrint:False,ptlb:Overlay Mask Intensity,ptin:_OverlayMaskIntensity,varname:node_3689,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Append,id:496,x:29377,y:33387,varname:node_496,prsc:2|A-7706-G,B-7706-B;n:type:ShaderForge.SFN_Append,id:6738,x:29377,y:33599,varname:node_6738,prsc:2|A-7706-B,B-7706-R;n:type:ShaderForge.SFN_Append,id:6035,x:29545,y:33818,varname:node_6035,prsc:2|A-3900-OUT,B-7706-G;n:type:ShaderForge.SFN_FragmentPosition,id:6908,x:28977,y:33599,varname:node_6908,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3865,x:29760,y:33387,varname:node_6671,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:2,isnm:False|UVIN-1368-OUT,TEX-1473-TEX;n:type:ShaderForge.SFN_Tex2d,id:1851,x:29760,y:33599,varname:node_9365,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-9823-OUT,TEX-1473-TEX;n:type:ShaderForge.SFN_Tex2d,id:8293,x:29760,y:33818,varname:node_9943,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-6035-OUT,TEX-1473-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1473,x:29545,y:33993,ptovrint:False,ptlb:Dissolve Noise,ptin:_DissolveNoise,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7671,x:29982,y:33387,varname:node_7671,prsc:2|A-2843-R,B-3865-RGB;n:type:ShaderForge.SFN_Multiply,id:917,x:29982,y:33599,varname:node_917,prsc:2|A-2843-G,B-1851-RGB;n:type:ShaderForge.SFN_Multiply,id:9456,x:29982,y:33818,varname:node_9456,prsc:2|A-2843-B,B-8293-RGB;n:type:ShaderForge.SFN_Add,id:7669,x:30216,y:33391,varname:node_7669,prsc:2|A-7671-OUT,B-917-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7706,x:29148,y:33599,varname:node_7706,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6908-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:1368,x:29545,y:33387,varname:node_1368,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-496-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9823,x:29545,y:33599,varname:node_9823,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-6738-OUT;n:type:ShaderForge.SFN_Negate,id:3900,x:29377,y:33818,varname:node_3900,prsc:2|IN-7706-R;n:type:ShaderForge.SFN_Abs,id:4915,x:28653,y:33259,varname:node_4915,prsc:2|IN-7222-OUT;n:type:ShaderForge.SFN_NormalVector,id:7222,x:28447,y:33259,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:9932,x:28496,y:33164,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:5063,x:29032,y:33131,varname:node_5063,prsc:2|VAL-4915-OUT,EXP-9932-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4813,x:28653,y:32962,varname:node_4813,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5063-OUT;n:type:ShaderForge.SFN_Add,id:1190,x:28836,y:32840,varname:node_1190,prsc:2|A-4813-R,B-4813-G;n:type:ShaderForge.SFN_Add,id:8819,x:29032,y:32969,varname:node_8819,prsc:2|A-1190-OUT,B-4813-B;n:type:ShaderForge.SFN_Divide,id:7711,x:29249,y:32969,varname:node_7711,prsc:2|A-5063-OUT,B-8819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2843,x:29432,y:32969,varname:node_2843,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7711-OUT;n:type:ShaderForge.SFN_Add,id:2596,x:30395,y:33553,varname:node_2596,prsc:2|A-7669-OUT,B-9456-OUT;n:type:ShaderForge.SFN_Lerp,id:4087,x:33208,y:32068,varname:node_4087,prsc:2|A-5055-OUT,B-6798-RGB,T-3420-OUT;n:type:ShaderForge.SFN_Multiply,id:3420,x:32400,y:32416,varname:node_3420,prsc:2|A-7177-OUT,B-5312-OUT;n:type:ShaderForge.SFN_Multiply,id:3033,x:32081,y:31721,varname:node_3033,prsc:2|A-900-R,B-2857-OUT;n:type:ShaderForge.SFN_Clamp01,id:5312,x:32221,y:32431,varname:node_5312,prsc:2|IN-7142-OUT;n:type:ShaderForge.SFN_OneMinus,id:8297,x:32330,y:31951,varname:node_8297,prsc:2|IN-7782-OUT;n:type:ShaderForge.SFN_Clamp01,id:1076,x:32256,y:31721,varname:node_1076,prsc:2|IN-3033-OUT;n:type:ShaderForge.SFN_Lerp,id:2204,x:32605,y:31690,varname:node_2204,prsc:2|A-8297-OUT,B-130-OUT,T-1076-OUT;n:type:ShaderForge.SFN_Vector1,id:130,x:32081,y:31647,varname:node_130,prsc:2,v1:1;proporder:4078-3634-5191-9646-9996-9117-7547-2326-6798-7177-7530-900-7782-4325-2857-1473-9932;pass:END;sub:END;*/

Shader "DCC/Dissolve Water" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _OverlayUSpeed ("Overlay U Speed", Float ) = 0
        _OverlayVSpeed ("Overlay V Speed", Float ) = 0.1
        _Maintex ("Maintex", 2D) = "black" {}
        _OverlaySpeed ("Overlay Speed", Range(0, 10)) = 3.406617
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0.3461309
        _DissolveMax ("Dissolve Max", Range(-10, 10)) = 5
        _DissolveMin ("Dissolve Min", Range(-10, 10)) = -2
        _DissolveColor ("Dissolve Color", Color) = (0,0,0,1)
        _DissolveColorIntensity ("Dissolve Color Intensity", Range(0, 10)) = 1
        _Overlay ("Overlay", 2D) = "white" {}
        _OverlayMask ("Overlay Mask", 2D) = "white" {}
        _OverlayIntensity ("Overlay Intensity", Range(0, 1)) = 1
        _OverlayColor ("Overlay Color", Color) = (0.4889706,0.5935091,0.9779412,1)
        _OverlayMaskIntensity ("Overlay Mask Intensity", Range(0, 10)) = 10
        _DissolveNoise ("Dissolve Noise", 2D) = "white" {}
        _BlendSharpness ("Blend Sharpness", Range(0, 10)) = 10
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _OverlaySpeed;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _DissolveColor;
            uniform float _DissolveColorIntensity;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _OverlayMaskIntensity;
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _BlendSharpness;
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
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 node_4436 = _Time;
                float2 node_1877 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*(_OverlaySpeed*node_4436.g)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_1877, _Overlay));
                float4 node_9150 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 node_5063 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_4813 = node_5063.rgb;
                float3 node_2843 = (node_5063/((node_4813.r+node_4813.g)+node_4813.b)).rgb;
                float3 node_7706 = i.posWorld.rgb.rgb;
                float2 node_1368 = float2(node_7706.g,node_7706.b).gr;
                float4 node_6671 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_1368, _DissolveNoise));
                float2 node_9823 = float2(node_7706.b,node_7706.r).gr;
                float4 node_9365 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_9823, _DissolveNoise));
                float2 node_6035 = float2((-1*node_7706.r),node_7706.g);
                float4 node_9943 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_6035, _DissolveNoise));
                float node_5663 = 0.0;
                float4 node_7279 = float4(saturate(saturate((_DissolveMin + ( ((1.0 - ((_DissolveAmount*1.5+-0.6)+(((node_2843.r*node_6671.rgb)+(node_2843.g*node_9365.rgb))+(node_2843.b*node_9943.rgb)))) - node_5663) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_5663)))),0.0);
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(i.uv0, _OverlayMask));
                float3 diffuseColor = lerp((_Overlay_var.rgb*_OverlayColor.rgb),lerp((_MaintexColor.rgb*node_9150.rgb),_DissolveColor.rgb,(_DissolveColorIntensity*saturate(node_7279.r))),lerp((1.0 - _OverlayIntensity),1.0,saturate((_OverlayMask_var.r*_OverlayMaskIntensity))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            Cull Off
            
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _OverlaySpeed;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _DissolveColor;
            uniform float _DissolveColorIntensity;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _OverlayMaskIntensity;
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _BlendSharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 node_4436 = _Time;
                float2 node_1877 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*(_OverlaySpeed*node_4436.g)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_1877, _Overlay));
                float4 node_9150 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 node_5063 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_4813 = node_5063.rgb;
                float3 node_2843 = (node_5063/((node_4813.r+node_4813.g)+node_4813.b)).rgb;
                float3 node_7706 = i.posWorld.rgb.rgb;
                float2 node_1368 = float2(node_7706.g,node_7706.b).gr;
                float4 node_6671 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_1368, _DissolveNoise));
                float2 node_9823 = float2(node_7706.b,node_7706.r).gr;
                float4 node_9365 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_9823, _DissolveNoise));
                float2 node_6035 = float2((-1*node_7706.r),node_7706.g);
                float4 node_9943 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_6035, _DissolveNoise));
                float node_5663 = 0.0;
                float4 node_7279 = float4(saturate(saturate((_DissolveMin + ( ((1.0 - ((_DissolveAmount*1.5+-0.6)+(((node_2843.r*node_6671.rgb)+(node_2843.g*node_9365.rgb))+(node_2843.b*node_9943.rgb)))) - node_5663) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_5663)))),0.0);
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(i.uv0, _OverlayMask));
                float3 diffColor = lerp((_Overlay_var.rgb*_OverlayColor.rgb),lerp((_MaintexColor.rgb*node_9150.rgb),_DissolveColor.rgb,(_DissolveColorIntensity*saturate(node_7279.r))),lerp((1.0 - _OverlayIntensity),1.0,saturate((_OverlayMask_var.r*_OverlayMaskIntensity))));
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
