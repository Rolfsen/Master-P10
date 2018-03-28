// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-103-OUT,spec-9440-OUT,gloss-1813-OUT,emission-6635-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:30629,y:32433,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Tex2d,id:9122,x:31308,y:31847,ptovrint:False,ptlb:Curvature Map,ptin:_CurvatureMap,varname:node_9122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4994,x:32056,y:31732,varname:node_4994,prsc:2|A-2287-OUT,B-9122-R;n:type:ShaderForge.SFN_Slider,id:4936,x:31308,y:31740,ptovrint:False,ptlb:Maintex Curvature Higlight Intensity,ptin:_MaintexCurvatureHiglightIntensity,varname:node_4936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Multiply,id:9102,x:31689,y:32031,varname:node_9102,prsc:2|A-4936-OUT,B-5281-OUT;n:type:ShaderForge.SFN_Slider,id:5891,x:31308,y:31646,ptovrint:False,ptlb:Maintex Curvature Darken Intensity,ptin:_MaintexCurvatureDarkenIntensity,varname:_MaintexCurvatureIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Abs,id:6849,x:29555,y:32722,varname:node_6849,prsc:2|IN-8734-OUT;n:type:ShaderForge.SFN_NormalVector,id:8734,x:29349,y:32722,prsc:2,pt:False;n:type:ShaderForge.SFN_Append,id:9512,x:30212,y:32706,varname:node_9512,prsc:2|A-5196-B,B-5196-G;n:type:ShaderForge.SFN_Append,id:8117,x:30212,y:32918,varname:node_8117,prsc:2|A-5196-B,B-5196-R;n:type:ShaderForge.SFN_Append,id:269,x:30212,y:33136,varname:node_269,prsc:2|A-5196-R,B-5196-G;n:type:ShaderForge.SFN_FragmentPosition,id:337,x:29660,y:32915,varname:node_337,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3680,x:30447,y:32706,varname:node_6671,prsc:2,tex:c4146288db0f32241ba05659863cd810,ntxv:2,isnm:False|UVIN-9512-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:2602,x:30447,y:32918,varname:node_9365,prsc:2,tex:c4146288db0f32241ba05659863cd810,ntxv:0,isnm:False|UVIN-8117-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:3619,x:30447,y:33137,varname:node_9943,prsc:2,tex:c4146288db0f32241ba05659863cd810,ntxv:0,isnm:False|UVIN-269-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:30212,y:33302,ptovrint:False,ptlb:Maintex Side,ptin:_MaintexSide,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c4146288db0f32241ba05659863cd810,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7914,x:29398,y:32627,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:267,x:29934,y:32594,varname:node_267,prsc:2|VAL-6849-OUT,EXP-7914-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9197,x:29555,y:32425,varname:node_9197,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-267-OUT;n:type:ShaderForge.SFN_Add,id:9937,x:29738,y:32303,varname:node_9937,prsc:2|A-9197-R,B-9197-G;n:type:ShaderForge.SFN_Add,id:4487,x:29934,y:32432,varname:node_4487,prsc:2|A-9937-OUT,B-9197-B;n:type:ShaderForge.SFN_Divide,id:7053,x:30264,y:32433,varname:node_7053,prsc:2|A-267-OUT,B-4487-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5380,x:30436,y:32433,varname:node_5380,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7053-OUT;n:type:ShaderForge.SFN_Multiply,id:956,x:30665,y:32706,varname:node_956,prsc:2|A-5380-R,B-3680-RGB;n:type:ShaderForge.SFN_Multiply,id:3538,x:30665,y:32918,varname:node_3538,prsc:2|A-5380-G,B-2602-RGB;n:type:ShaderForge.SFN_Multiply,id:6240,x:30665,y:33137,varname:node_6240,prsc:2|A-5380-B,B-3619-RGB;n:type:ShaderForge.SFN_ComponentMask,id:5196,x:29889,y:32915,varname:node_5196,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-337-XYZ;n:type:ShaderForge.SFN_Slider,id:9440,x:32250,y:32779,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_9440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:5401,x:31308,y:32031,ptovrint:False,ptlb:Highlight Color,ptin:_HighlightColor,varname:node_5401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:5281,x:31507,y:32031,varname:node_5281,prsc:2|A-9122-G,B-5401-RGB;n:type:ShaderForge.SFN_Lerp,id:3083,x:31880,y:32482,varname:node_3083,prsc:2|A-4159-OUT,B-6631-OUT,T-1682-OUT;n:type:ShaderForge.SFN_Multiply,id:1682,x:31865,y:31893,varname:node_1682,prsc:2|A-4936-OUT,B-9122-G;n:type:ShaderForge.SFN_Multiply,id:6631,x:31865,y:32031,varname:node_6631,prsc:2|A-9102-OUT,B-500-OUT;n:type:ShaderForge.SFN_Vector1,id:500,x:31865,y:32182,varname:node_500,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:2287,x:31861,y:31732,varname:node_2287,prsc:2|A-5891-OUT,B-7931-OUT;n:type:ShaderForge.SFN_Vector1,id:7931,x:31465,y:31562,varname:node_7931,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6358,x:32245,y:31732,varname:node_6358,prsc:2|A-4994-OUT,B-500-OUT;n:type:ShaderForge.SFN_Lerp,id:1540,x:32517,y:32392,varname:node_1540,prsc:2|A-3083-OUT,B-6358-OUT,T-9040-OUT;n:type:ShaderForge.SFN_Multiply,id:9040,x:32245,y:31601,varname:node_9040,prsc:2|A-5891-OUT,B-9122-R;n:type:ShaderForge.SFN_Tex2dAsset,id:2467,x:30212,y:33499,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_2467,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4630fd2bfa6aee44c9848fde843fae23,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2398,x:30447,y:33572,varname:node_2398,prsc:2,tex:4630fd2bfa6aee44c9848fde843fae23,ntxv:0,isnm:False|UVIN-8117-OUT,TEX-2467-TEX;n:type:ShaderForge.SFN_Tex2d,id:4702,x:30447,y:33766,varname:node_4702,prsc:2,tex:4630fd2bfa6aee44c9848fde843fae23,ntxv:0,isnm:False|UVIN-269-OUT,TEX-2467-TEX;n:type:ShaderForge.SFN_Tex2d,id:4599,x:30447,y:33371,varname:node_4599,prsc:2,tex:4630fd2bfa6aee44c9848fde843fae23,ntxv:0,isnm:False|UVIN-9512-OUT,TEX-2467-TEX;n:type:ShaderForge.SFN_Multiply,id:8465,x:30863,y:32706,varname:node_8465,prsc:2|A-956-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Multiply,id:6865,x:30863,y:32918,varname:node_6865,prsc:2|A-3538-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Multiply,id:7501,x:30863,y:33137,varname:node_7501,prsc:2|A-6240-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Add,id:2453,x:31317,y:33342,varname:node_2453,prsc:2|A-2978-OUT,B-3158-OUT;n:type:ShaderForge.SFN_Add,id:2276,x:31545,y:33414,varname:node_2276,prsc:2|A-2453-OUT,B-8827-OUT;n:type:ShaderForge.SFN_Add,id:766,x:31301,y:32674,varname:node_766,prsc:2|A-8465-OUT,B-6865-OUT;n:type:ShaderForge.SFN_Add,id:4159,x:31529,y:32748,varname:node_4159,prsc:2|A-766-OUT,B-7501-OUT;n:type:ShaderForge.SFN_Lerp,id:103,x:32409,y:32594,varname:node_103,prsc:2|A-1540-OUT,B-8061-RGB,T-3356-OUT;n:type:ShaderForge.SFN_Multiply,id:8827,x:30665,y:33766,varname:node_8827,prsc:2|A-5380-B,B-4702-A;n:type:ShaderForge.SFN_Multiply,id:3158,x:30665,y:33572,varname:node_3158,prsc:2|A-5380-G,B-2398-A;n:type:ShaderForge.SFN_Multiply,id:2978,x:30665,y:33371,varname:node_2978,prsc:2|A-5380-R,B-4599-A;n:type:ShaderForge.SFN_Slider,id:4583,x:31450,y:32957,ptovrint:False,ptlb:Overlay Intensity,ptin:_OverlayIntensity,varname:node_4583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:8061,x:31786,y:32800,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_8061,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3356,x:31786,y:32952,varname:node_3356,prsc:2|A-4583-OUT,B-2276-OUT;n:type:ShaderForge.SFN_Multiply,id:6635,x:31475,y:34342,varname:node_6635,prsc:2|A-4687-OUT,B-4534-OUT;n:type:ShaderForge.SFN_Slider,id:4534,x:31087,y:34654,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_5734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Color,id:5137,x:31102,y:34470,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_8877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4862,x:30682,y:34102,varname:node_4862,prsc:2|A-5380-R,B-8607-RGB;n:type:ShaderForge.SFN_Multiply,id:1369,x:30682,y:34314,varname:node_1369,prsc:2|A-5380-G,B-2464-RGB;n:type:ShaderForge.SFN_Multiply,id:4231,x:30682,y:34533,varname:node_4231,prsc:2|A-5380-B,B-1840-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:2120,x:29749,y:34087,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_1779,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5948,x:30923,y:34105,varname:node_5948,prsc:2|A-4862-OUT,B-1369-OUT;n:type:ShaderForge.SFN_Add,id:7229,x:31102,y:34267,varname:node_7229,prsc:2|A-5948-OUT,B-4231-OUT;n:type:ShaderForge.SFN_Multiply,id:4687,x:31289,y:34342,varname:node_4687,prsc:2|A-7229-OUT,B-5137-RGB;n:type:ShaderForge.SFN_Tex2d,id:8607,x:30454,y:34117,varname:node_8344,prsc:2,ntxv:0,isnm:False|UVIN-9512-OUT,TEX-2120-TEX;n:type:ShaderForge.SFN_Tex2d,id:2464,x:30454,y:34332,varname:_node_8344_copy,prsc:2,ntxv:0,isnm:False|UVIN-8117-OUT,TEX-2120-TEX;n:type:ShaderForge.SFN_Tex2d,id:1840,x:30454,y:34533,varname:_node_8344_copy_copy,prsc:2,ntxv:0,isnm:False|UVIN-269-OUT,TEX-2120-TEX;proporder:6665-1813-9122-4936-5891-9932-7914-9440-5401-2467-8061-4583-4534-5137-2120;pass:END;sub:END;*/

Shader "DCC/Rock Shader Triplanar Simple Snow" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.2
        _CurvatureMap ("Curvature Map", 2D) = "black" {}
        _MaintexCurvatureHiglightIntensity ("Maintex Curvature Higlight Intensity", Range(0, 1)) = 0.4
        _MaintexCurvatureDarkenIntensity ("Maintex Curvature Darken Intensity", Range(0, 1)) = 0.4
        _MaintexSide ("Maintex Side", 2D) = "white" {}
        _BlendSharpness ("Blend Sharpness", Range(0, 10)) = 10
        _Specular ("Specular", Range(0, 1)) = 0
        _HighlightColor ("Highlight Color", Color) = (0,0,0,1)
        _Overlay ("Overlay", 2D) = "black" {}
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _OverlayIntensity ("Overlay Intensity", Range(0, 1)) = 1
        _EmissionIntensity ("Emission Intensity", Range(0, 10)) = 0
        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        _EmissionMap ("Emission Map", 2D) = "white" {}
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
            uniform float _Gloss;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float4 _HighlightColor;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _EmissionIntensity;
            uniform float4 _EmissionColor;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Gloss; // Convert roughness to gloss
                float perceptualRoughness = _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
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
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome;
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.b,node_5196.g);
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_8117, _MaintexSide));
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float4 node_4599 = tex2D(_Overlay,TRANSFORM_TEX(node_9512, _Overlay));
                float4 node_2398 = tex2D(_Overlay,TRANSFORM_TEX(node_8117, _Overlay));
                float4 node_4702 = tex2D(_Overlay,TRANSFORM_TEX(node_269, _Overlay));
                float3 diffuseColor = lerp(lerp(lerp(((((node_5380.r*node_6671.rgb)*_MaintexColor.rgb)+((node_5380.g*node_9365.rgb)*_MaintexColor.rgb))+((node_5380.b*node_9943.rgb)*_MaintexColor.rgb)),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r)),_OverlayColor.rgb,(_OverlayIntensity*(((node_5380.r*node_4599.a)+(node_5380.g*node_2398.a))+(node_5380.b*node_4702.a)))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_8344 = tex2D(_EmissionMap,TRANSFORM_TEX(node_9512, _EmissionMap));
                float4 _node_8344_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_8117, _EmissionMap));
                float4 _node_8344_copy_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_269, _EmissionMap));
                float3 emissive = (((((node_5380.r*node_8344.rgb)+(node_5380.g*_node_8344_copy.rgb))+(node_5380.b*_node_8344_copy_copy.rgb))*_EmissionColor.rgb)*_EmissionIntensity);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform float _Gloss;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float4 _HighlightColor;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _EmissionIntensity;
            uniform float4 _EmissionColor;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Gloss; // Convert roughness to gloss
                float perceptualRoughness = _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome;
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.b,node_5196.g);
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_8117, _MaintexSide));
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float4 node_4599 = tex2D(_Overlay,TRANSFORM_TEX(node_9512, _Overlay));
                float4 node_2398 = tex2D(_Overlay,TRANSFORM_TEX(node_8117, _Overlay));
                float4 node_4702 = tex2D(_Overlay,TRANSFORM_TEX(node_269, _Overlay));
                float3 diffuseColor = lerp(lerp(lerp(((((node_5380.r*node_6671.rgb)*_MaintexColor.rgb)+((node_5380.g*node_9365.rgb)*_MaintexColor.rgb))+((node_5380.b*node_9943.rgb)*_MaintexColor.rgb)),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r)),_OverlayColor.rgb,(_OverlayIntensity*(((node_5380.r*node_4599.a)+(node_5380.g*node_2398.a))+(node_5380.b*node_4702.a)))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            uniform float _Gloss;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float4 _HighlightColor;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _EmissionIntensity;
            uniform float4 _EmissionColor;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
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
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.b,node_5196.g);
                float4 node_8344 = tex2D(_EmissionMap,TRANSFORM_TEX(node_9512, _EmissionMap));
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 _node_8344_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_8117, _EmissionMap));
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 _node_8344_copy_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_269, _EmissionMap));
                o.Emission = (((((node_5380.r*node_8344.rgb)+(node_5380.g*_node_8344_copy.rgb))+(node_5380.b*_node_8344_copy_copy.rgb))*_EmissionColor.rgb)*_EmissionIntensity);
                
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_8117, _MaintexSide));
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float4 node_4599 = tex2D(_Overlay,TRANSFORM_TEX(node_9512, _Overlay));
                float4 node_2398 = tex2D(_Overlay,TRANSFORM_TEX(node_8117, _Overlay));
                float4 node_4702 = tex2D(_Overlay,TRANSFORM_TEX(node_269, _Overlay));
                float3 diffColor = lerp(lerp(lerp(((((node_5380.r*node_6671.rgb)*_MaintexColor.rgb)+((node_5380.g*node_9365.rgb)*_MaintexColor.rgb))+((node_5380.b*node_9943.rgb)*_MaintexColor.rgb)),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r)),_OverlayColor.rgb,(_OverlayIntensity*(((node_5380.r*node_4599.a)+(node_5380.g*node_2398.a))+(node_5380.b*node_4702.a))));
                float3 specColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
                float roughness = _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
