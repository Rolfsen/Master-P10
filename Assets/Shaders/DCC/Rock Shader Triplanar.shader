// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32911,y:32687,varname:node_2865,prsc:2|diff-4006-OUT,spec-9600-OUT,gloss-1813-OUT,normal-6716-OUT,emission-9275-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:30749,y:32854,varname:node_6343,prsc:2|A-6240-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:30527,y:33104,ptovrint:False,ptlb:Maintex Side Color,ptin:_MaintexSideColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Slider,id:9862,x:32250,y:33130,ptovrint:False,ptlb:Maintex Normal Intensity,ptin:_MaintexNormalIntensity,varname:node_9862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Lerp,id:6716,x:32407,y:32973,varname:node_6716,prsc:2|A-7578-OUT,B-7940-RGB,T-9862-OUT;n:type:ShaderForge.SFN_Vector3,id:7578,x:31921,y:32965,varname:node_7578,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:2964,x:32072,y:33343,ptovrint:False,ptlb:Maintex Emission Map,ptin:_MaintexEmissionMap,varname:node_2964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7940,x:31921,y:33086,ptovrint:False,ptlb:Maintex Normal Map,ptin:_MaintexNormalMap,varname:node_7940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:9275,x:32402,y:33299,varname:node_9275,prsc:2|A-7628-OUT,B-2964-RGB,T-5534-OUT;n:type:ShaderForge.SFN_Slider,id:5534,x:31915,y:33521,ptovrint:False,ptlb:Maintex Emission Intensity,ptin:_MaintexEmissionIntensity,varname:node_3275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Vector3,id:7628,x:32072,y:33226,varname:node_7628,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Slider,id:4621,x:32250,y:32784,ptovrint:False,ptlb:Maintex Specular Intensity,ptin:_MaintexSpecularIntensity,varname:_MaintexNormalIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Tex2d,id:8075,x:32100,y:32695,ptovrint:False,ptlb:Maintex Specular Map,ptin:_MaintexSpecularMap,varname:_MaintexNormalMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9600,x:32407,y:32638,varname:node_9600,prsc:2|A-8075-RGB,B-4621-OUT;n:type:ShaderForge.SFN_Tex2d,id:9122,x:30954,y:31869,ptovrint:False,ptlb:Curvature Map,ptin:_CurvatureMap,varname:node_9122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Add,id:2523,x:31825,y:31958,varname:node_2523,prsc:2|A-9102-OUT,B-3103-OUT;n:type:ShaderForge.SFN_Subtract,id:4006,x:32222,y:31956,varname:node_4006,prsc:2|A-2523-OUT,B-4994-OUT;n:type:ShaderForge.SFN_Multiply,id:4994,x:32238,y:31608,varname:node_4994,prsc:2|A-5891-OUT,B-2022-OUT;n:type:ShaderForge.SFN_Slider,id:4936,x:31307,y:31875,ptovrint:False,ptlb:Maintex Curvature Higlight Intensity,ptin:_MaintexCurvatureHiglightIntensity,varname:node_4936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Multiply,id:9102,x:31639,y:31958,varname:node_9102,prsc:2|A-4936-OUT,B-2677-OUT;n:type:ShaderForge.SFN_Slider,id:5891,x:31892,y:31515,ptovrint:False,ptlb:Maintex Curvature Darken Intensity,ptin:_MaintexCurvatureDarkenIntensity,varname:_MaintexCurvatureIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Abs,id:6849,x:29417,y:32439,varname:node_6849,prsc:2|IN-8734-OUT;n:type:ShaderForge.SFN_NormalVector,id:8734,x:29211,y:32439,prsc:2,pt:False;n:type:ShaderForge.SFN_Append,id:9512,x:30074,y:32423,varname:node_9512,prsc:2|A-5196-G,B-5196-B;n:type:ShaderForge.SFN_Append,id:8117,x:30074,y:32635,varname:node_8117,prsc:2|A-5196-B,B-5196-R;n:type:ShaderForge.SFN_Append,id:269,x:30074,y:32853,varname:node_269,prsc:2|A-5196-R,B-5196-G;n:type:ShaderForge.SFN_FragmentPosition,id:337,x:29522,y:32632,varname:node_337,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3680,x:30309,y:32423,varname:node_6671,prsc:2,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:2,isnm:False|UVIN-9512-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:2602,x:30309,y:32635,varname:node_9365,prsc:2,tex:b545fec40c944014186be72878b24bce,ntxv:0,isnm:False|UVIN-8117-OUT,TEX-5149-TEX;n:type:ShaderForge.SFN_Tex2d,id:3619,x:30309,y:32854,varname:node_9943,prsc:2,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:0,isnm:False|UVIN-269-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:30074,y:33019,ptovrint:False,ptlb:Maintex Side,ptin:_MaintexSide,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7914,x:29260,y:32344,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:267,x:29796,y:32311,varname:node_267,prsc:2|VAL-6849-OUT,EXP-7914-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9197,x:29417,y:32142,varname:node_9197,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-267-OUT;n:type:ShaderForge.SFN_Add,id:9937,x:29600,y:32020,varname:node_9937,prsc:2|A-9197-R,B-9197-G;n:type:ShaderForge.SFN_Add,id:4487,x:29796,y:32149,varname:node_4487,prsc:2|A-9937-OUT,B-9197-B;n:type:ShaderForge.SFN_Divide,id:7053,x:30126,y:32150,varname:node_7053,prsc:2|A-267-OUT,B-4487-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5380,x:30312,y:32150,varname:node_5380,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7053-OUT;n:type:ShaderForge.SFN_Multiply,id:956,x:30527,y:32423,varname:node_956,prsc:2|A-5380-R,B-3680-RGB;n:type:ShaderForge.SFN_Multiply,id:3538,x:30527,y:32635,varname:node_3538,prsc:2|A-5380-G,B-2602-RGB;n:type:ShaderForge.SFN_Multiply,id:6240,x:30527,y:32854,varname:node_6240,prsc:2|A-5380-B,B-3619-RGB;n:type:ShaderForge.SFN_Add,id:7305,x:31104,y:32439,varname:node_7305,prsc:2|A-157-OUT,B-4441-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5149,x:30074,y:33212,ptovrint:False,ptlb:Maintex Top,ptin:_MaintexTop,varname:_Maintex_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b545fec40c944014186be72878b24bce,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:5196,x:29751,y:32632,varname:node_5196,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-337-XYZ;n:type:ShaderForge.SFN_Multiply,id:4441,x:30749,y:32635,varname:node_4441,prsc:2|A-3538-OUT,B-6276-RGB;n:type:ShaderForge.SFN_Multiply,id:157,x:30749,y:32423,varname:node_157,prsc:2|A-956-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6276,x:30527,y:33288,ptovrint:False,ptlb:Maintex Top Color,ptin:_MaintexTopColor,varname:_MaintexColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:3103,x:31357,y:32640,varname:node_3103,prsc:2|A-7305-OUT,B-6343-OUT;n:type:ShaderForge.SFN_Multiply,id:9265,x:31283,y:31958,varname:node_9265,prsc:2|A-9122-G,B-5380-R;n:type:ShaderForge.SFN_Multiply,id:8456,x:31283,y:32099,varname:node_8456,prsc:2|A-9122-G,B-5380-B;n:type:ShaderForge.SFN_Add,id:2677,x:31464,y:31958,varname:node_2677,prsc:2|A-9265-OUT,B-8456-OUT;n:type:ShaderForge.SFN_Multiply,id:2726,x:31873,y:31750,varname:node_2726,prsc:2|A-9122-R,B-5380-B;n:type:ShaderForge.SFN_Multiply,id:1662,x:31873,y:31608,varname:node_1662,prsc:2|A-9122-R,B-5380-R;n:type:ShaderForge.SFN_Add,id:2022,x:32049,y:31608,varname:node_2022,prsc:2|A-1662-OUT,B-2726-OUT;proporder:6665-1813-7940-9862-2964-5534-4621-8075-9122-4936-5891-9932-7914-5149-6276;pass:END;sub:END;*/

Shader "DCC/Rock Shader Triplanar" {
    Properties {
        _MaintexSideColor ("Maintex Side Color", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.2
        _MaintexNormalMap ("Maintex Normal Map", 2D) = "bump" {}
        _MaintexNormalIntensity ("Maintex Normal Intensity", Range(0, 1)) = 0.4
        _MaintexEmissionMap ("Maintex Emission Map", 2D) = "black" {}
        _MaintexEmissionIntensity ("Maintex Emission Intensity", Range(0, 1)) = 0.5
        _MaintexSpecularIntensity ("Maintex Specular Intensity", Range(0, 1)) = 0.2
        _MaintexSpecularMap ("Maintex Specular Map", 2D) = "black" {}
        _CurvatureMap ("Curvature Map", 2D) = "black" {}
        _MaintexCurvatureHiglightIntensity ("Maintex Curvature Higlight Intensity", Range(0, 1)) = 0.4
        _MaintexCurvatureDarkenIntensity ("Maintex Curvature Darken Intensity", Range(0, 1)) = 0.2
        _MaintexSide ("Maintex Side", 2D) = "white" {}
        _BlendSharpness ("Blend Sharpness", Range(0, 10)) = 10
        _MaintexTop ("Maintex Top", 2D) = "white" {}
        _MaintexTopColor ("Maintex Top Color", Color) = (1,1,1,1)
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
            uniform float4 _MaintexSideColor;
            uniform float _Gloss;
            uniform float _MaintexNormalIntensity;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform sampler2D _MaintexNormalMap; uniform float4 _MaintexNormalMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpecularIntensity;
            uniform sampler2D _MaintexSpecularMap; uniform float4 _MaintexSpecularMap_ST;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform float4 _MaintexTopColor;
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
                float3 _MaintexNormalMap_var = UnpackNormal(tex2D(_MaintexNormalMap,TRANSFORM_TEX(i.uv0, _MaintexNormalMap)));
                float3 normalLocal = lerp(float3(0,0,1),_MaintexNormalMap_var.rgb,_MaintexNormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 _MaintexSpecularMap_var = tex2D(_MaintexSpecularMap,TRANSFORM_TEX(i.uv0, _MaintexSpecularMap));
                float3 specularColor = (_MaintexSpecularMap_var.rgb*_MaintexSpecularIntensity);
                float specularMonochrome;
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float node_9102 = (_MaintexCurvatureHiglightIntensity*((_CurvatureMap_var.g*node_5380.r)+(_CurvatureMap_var.g*node_5380.b)));
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.g,node_5196.b);
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float3 node_956 = (node_5380.r*node_6671.rgb);
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_8117, _MaintexTop));
                float3 node_3538 = (node_5380.g*node_9365.rgb);
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float3 node_6343 = ((node_5380.b*node_9943.rgb)*_MaintexSideColor.rgb);
                float node_4994 = (_MaintexCurvatureDarkenIntensity*((_CurvatureMap_var.r*node_5380.r)+(_CurvatureMap_var.r*node_5380.b)));
                float3 node_4006 = ((node_9102+(((node_956*_MaintexSideColor.rgb)+(node_3538*_MaintexTopColor.rgb))+node_6343))-node_4994);
                float3 diffuseColor = node_4006; // Need this for specular when using metallic
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
                float4 _MaintexEmissionMap_var = tex2D(_MaintexEmissionMap,TRANSFORM_TEX(i.uv0, _MaintexEmissionMap));
                float3 emissive = lerp(float3(0,0,0),_MaintexEmissionMap_var.rgb,_MaintexEmissionIntensity);
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
            uniform float4 _MaintexSideColor;
            uniform float _Gloss;
            uniform float _MaintexNormalIntensity;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform sampler2D _MaintexNormalMap; uniform float4 _MaintexNormalMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpecularIntensity;
            uniform sampler2D _MaintexSpecularMap; uniform float4 _MaintexSpecularMap_ST;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform float4 _MaintexTopColor;
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
                float3 _MaintexNormalMap_var = UnpackNormal(tex2D(_MaintexNormalMap,TRANSFORM_TEX(i.uv0, _MaintexNormalMap)));
                float3 normalLocal = lerp(float3(0,0,1),_MaintexNormalMap_var.rgb,_MaintexNormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 _MaintexSpecularMap_var = tex2D(_MaintexSpecularMap,TRANSFORM_TEX(i.uv0, _MaintexSpecularMap));
                float3 specularColor = (_MaintexSpecularMap_var.rgb*_MaintexSpecularIntensity);
                float specularMonochrome;
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float node_9102 = (_MaintexCurvatureHiglightIntensity*((_CurvatureMap_var.g*node_5380.r)+(_CurvatureMap_var.g*node_5380.b)));
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.g,node_5196.b);
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float3 node_956 = (node_5380.r*node_6671.rgb);
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_8117, _MaintexTop));
                float3 node_3538 = (node_5380.g*node_9365.rgb);
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float3 node_6343 = ((node_5380.b*node_9943.rgb)*_MaintexSideColor.rgb);
                float node_4994 = (_MaintexCurvatureDarkenIntensity*((_CurvatureMap_var.r*node_5380.r)+(_CurvatureMap_var.r*node_5380.b)));
                float3 node_4006 = ((node_9102+(((node_956*_MaintexSideColor.rgb)+(node_3538*_MaintexTopColor.rgb))+node_6343))-node_4994);
                float3 diffuseColor = node_4006; // Need this for specular when using metallic
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
            uniform float4 _MaintexSideColor;
            uniform float _Gloss;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpecularIntensity;
            uniform sampler2D _MaintexSpecularMap; uniform float4 _MaintexSpecularMap_ST;
            uniform sampler2D _CurvatureMap; uniform float4 _CurvatureMap_ST;
            uniform float _MaintexCurvatureHiglightIntensity;
            uniform float _MaintexCurvatureDarkenIntensity;
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform float4 _MaintexTopColor;
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
                
                float4 _MaintexEmissionMap_var = tex2D(_MaintexEmissionMap,TRANSFORM_TEX(i.uv0, _MaintexEmissionMap));
                o.Emission = lerp(float3(0,0,0),_MaintexEmissionMap_var.rgb,_MaintexEmissionIntensity);
                
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float node_9102 = (_MaintexCurvatureHiglightIntensity*((_CurvatureMap_var.g*node_5380.r)+(_CurvatureMap_var.g*node_5380.b)));
                float3 node_5196 = i.posWorld.rgb.rgb;
                float2 node_9512 = float2(node_5196.g,node_5196.b);
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_9512, _MaintexSide));
                float3 node_956 = (node_5380.r*node_6671.rgb);
                float2 node_8117 = float2(node_5196.b,node_5196.r);
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_8117, _MaintexTop));
                float3 node_3538 = (node_5380.g*node_9365.rgb);
                float2 node_269 = float2(node_5196.r,node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float3 node_6343 = ((node_5380.b*node_9943.rgb)*_MaintexSideColor.rgb);
                float node_4994 = (_MaintexCurvatureDarkenIntensity*((_CurvatureMap_var.r*node_5380.r)+(_CurvatureMap_var.r*node_5380.b)));
                float3 node_4006 = ((node_9102+(((node_956*_MaintexSideColor.rgb)+(node_3538*_MaintexTopColor.rgb))+node_6343))-node_4994);
                float3 diffColor = node_4006;
                float4 _MaintexSpecularMap_var = tex2D(_MaintexSpecularMap,TRANSFORM_TEX(i.uv0, _MaintexSpecularMap));
                float3 specColor = (_MaintexSpecularMap_var.rgb*_MaintexSpecularIntensity);
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
