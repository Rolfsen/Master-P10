// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-1055-OUT,spec-3273-OUT,gloss-2750-OUT,emission-6153-OUT,alpha-1946-OUT,clip-2104-OUT;n:type:ShaderForge.SFN_Tex2d,id:9113,x:30623,y:33419,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_5424,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8465,x:30128,y:33217,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_4039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:2104,x:30827,y:33325,varname:node_2104,prsc:2|A-5839-OUT,B-9113-R;n:type:ShaderForge.SFN_RemapRange,id:5839,x:30623,y:33217,varname:node_5839,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.6|IN-411-OUT;n:type:ShaderForge.SFN_OneMinus,id:411,x:30461,y:33217,varname:node_411,prsc:2|IN-8465-OUT;n:type:ShaderForge.SFN_Clamp01,id:8107,x:30803,y:32936,varname:node_8107,prsc:2|IN-2596-OUT;n:type:ShaderForge.SFN_Append,id:1101,x:31147,y:32936,varname:node_1101,prsc:2|A-27-OUT,B-2016-OUT;n:type:ShaderForge.SFN_Tex2d,id:981,x:31414,y:32999,varname:node_1196,prsc:2,ntxv:0,isnm:False|UVIN-1101-OUT,TEX-7031-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7031,x:31147,y:33113,ptovrint:False,ptlb:Dissolve Ramp,ptin:_DissolveRamp,varname:node_4088,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:27,x:30975,y:32936,varname:node_27,prsc:2|IN-8107-OUT;n:type:ShaderForge.SFN_Slider,id:3273,x:31608,y:32546,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_7682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2563894,max:1;n:type:ShaderForge.SFN_Slider,id:2750,x:31608,y:32644,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5058,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:2016,x:30975,y:33083,varname:node_2016,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:1055,x:32175,y:31968,varname:node_1055,prsc:2|A-23-OUT,B-2410-OUT;n:type:ShaderForge.SFN_Lerp,id:5525,x:31988,y:33361,varname:node_5525,prsc:2|A-7524-OUT,B-7841-RGB,T-4511-OUT;n:type:ShaderForge.SFN_Slider,id:4511,x:31510,y:33562,ptovrint:False,ptlb:Maintex Emission Intensity,ptin:_MaintexEmissionIntensity,varname:node_3275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:7524,x:31793,y:33257,varname:node_7524,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Add,id:8993,x:32192,y:33267,varname:node_8993,prsc:2|A-1561-OUT,B-5525-OUT;n:type:ShaderForge.SFN_Multiply,id:2410,x:31662,y:32847,varname:node_2410,prsc:2|A-268-RGB,B-981-RGB;n:type:ShaderForge.SFN_Color,id:268,x:31414,y:32847,ptovrint:False,ptlb:Dissolve Ramp Color,ptin:_DissolveRampColor,varname:node_4447,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2596,x:30629,y:32936,varname:node_2596,prsc:2|IN-2104-OUT,IMIN-1885-OUT,IMAX-9347-OUT,OMIN-7443-OUT,OMAX-171-OUT;n:type:ShaderForge.SFN_Slider,id:171,x:30089,y:33037,ptovrint:False,ptlb:Dissolve Max,ptin:_DissolveMax,varname:node_7359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:4,max:10;n:type:ShaderForge.SFN_Slider,id:7443,x:30089,y:32942,ptovrint:False,ptlb:Dissolve Min,ptin:_DissolveMin,varname:node_8221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-4,max:10;n:type:ShaderForge.SFN_Vector1,id:1885,x:30246,y:32798,varname:node_1885,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9347,x:30246,y:32861,varname:node_9347,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:23,x:31958,y:32137,varname:node_23,prsc:2|A-4914-RGB,B-1275-OUT,C-2295-OUT;n:type:ShaderForge.SFN_Color,id:4914,x:31765,y:32137,ptovrint:False,ptlb:Fresnel Color,ptin:_FresnelColor,varname:node_2589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:1275,x:31765,y:32289,varname:node_1275,prsc:2|EXP-3866-OUT;n:type:ShaderForge.SFN_Slider,id:2295,x:31608,y:32440,ptovrint:False,ptlb:Silhouette Intensity,ptin:_SilhouetteIntensity,varname:node_8352,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:10;n:type:ShaderForge.SFN_Slider,id:3866,x:31440,y:32289,ptovrint:False,ptlb:Silhouette Exponent,ptin:_SilhouetteExponent,varname:node_3866,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:1646,x:32290,y:32339,varname:node_1646,prsc:2|A-23-OUT,B-1893-OUT;n:type:ShaderForge.SFN_Slider,id:1893,x:31962,y:32366,ptovrint:False,ptlb:Silhouette Emission Intensity,ptin:_SilhouetteEmissionIntensity,varname:node_1893,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:6153,x:32535,y:32813,varname:node_6153,prsc:2|A-1646-OUT,B-8993-OUT;n:type:ShaderForge.SFN_Color,id:7841,x:31667,y:33387,ptovrint:False,ptlb:Maintex Emission Color,ptin:_MaintexEmissionColor,varname:node_7841,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1561,x:31666,y:33190,varname:node_1561,prsc:2|A-2410-OUT,B-2319-OUT;n:type:ShaderForge.SFN_Slider,id:2319,x:31257,y:33200,ptovrint:False,ptlb:Dissolve Emission Intensity,ptin:_DissolveEmissionIntensity,varname:node_2319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_ComponentMask,id:1946,x:32305,y:32883,varname:node_1946,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4159-OUT;n:type:ShaderForge.SFN_Add,id:4912,x:31944,y:32883,varname:node_4912,prsc:2|A-1275-OUT,B-981-RGB;n:type:ShaderForge.SFN_Clamp01,id:4159,x:32125,y:32883,varname:node_4159,prsc:2|IN-4912-OUT;proporder:3273-2750-7841-4511-9113-7031-268-2319-8465-171-7443-4914-2295-3866-1893;pass:END;sub:END;*/

Shader "DCC/Dissolve With Silhouette" {
    Properties {
        _Metallic ("Metallic", Range(0, 1)) = 0.2563894
        _Gloss ("Gloss", Range(0, 1)) = 0
        _MaintexEmissionColor ("Maintex Emission Color", Color) = (1,1,1,1)
        _MaintexEmissionIntensity ("Maintex Emission Intensity", Range(0, 1)) = 0
        _Noise ("Noise", 2D) = "white" {}
        _DissolveRamp ("Dissolve Ramp", 2D) = "white" {}
        _DissolveRampColor ("Dissolve Ramp Color", Color) = (1,1,1,1)
        _DissolveEmissionIntensity ("Dissolve Emission Intensity", Range(0, 1)) = 0.5
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0
        _DissolveMax ("Dissolve Max", Range(-10, 10)) = 4
        _DissolveMin ("Dissolve Min", Range(-10, 10)) = -4
        _FresnelColor ("Fresnel Color", Color) = (0,1,0,1)
        _SilhouetteIntensity ("Silhouette Intensity", Range(0, 10)) = 0.5
        _SilhouetteExponent ("Silhouette Exponent", Range(0, 10)) = 0
        _SilhouetteEmissionIntensity ("Silhouette Emission Intensity", Range(0, 1)) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _DissolveRamp; uniform float4 _DissolveRamp_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _MaintexEmissionIntensity;
            uniform float4 _DissolveRampColor;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _FresnelColor;
            uniform float _SilhouetteIntensity;
            uniform float _SilhouetteExponent;
            uniform float _SilhouetteEmissionIntensity;
            uniform float4 _MaintexEmissionColor;
            uniform float _DissolveEmissionIntensity;
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
                UNITY_FOG_COORDS(7)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
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
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2104 = (((1.0 - _DissolveAmount)*1.2+-0.6)+_Noise_var.r);
                clip(node_2104 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
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
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float node_1275 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_SilhouetteExponent);
                float3 node_23 = (_FresnelColor.rgb*node_1275*_SilhouetteIntensity);
                float node_1885 = 0.0;
                float2 node_1101 = float2((1.0 - saturate((_DissolveMin + ( (node_2104 - node_1885) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_1885)))),0.0);
                float4 node_1196 = tex2D(_DissolveRamp,TRANSFORM_TEX(node_1101, _DissolveRamp));
                float3 node_2410 = (_DissolveRampColor.rgb*node_1196.rgb);
                float3 diffuseColor = (node_23+node_2410); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
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
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = ((node_23*_SilhouetteEmissionIntensity)+((node_2410*_DissolveEmissionIntensity)+lerp(float3(0,0,0),_MaintexEmissionColor.rgb,_MaintexEmissionIntensity)));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,saturate((node_1275+node_1196.rgb)).r);
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _DissolveRamp; uniform float4 _DissolveRamp_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _MaintexEmissionIntensity;
            uniform float4 _DissolveRampColor;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _FresnelColor;
            uniform float _SilhouetteIntensity;
            uniform float _SilhouetteExponent;
            uniform float _SilhouetteEmissionIntensity;
            uniform float4 _MaintexEmissionColor;
            uniform float _DissolveEmissionIntensity;
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
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2104 = (((1.0 - _DissolveAmount)*1.2+-0.6)+_Noise_var.r);
                clip(node_2104 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float node_1275 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_SilhouetteExponent);
                float3 node_23 = (_FresnelColor.rgb*node_1275*_SilhouetteIntensity);
                float node_1885 = 0.0;
                float2 node_1101 = float2((1.0 - saturate((_DissolveMin + ( (node_2104 - node_1885) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_1885)))),0.0);
                float4 node_1196 = tex2D(_DissolveRamp,TRANSFORM_TEX(node_1101, _DissolveRamp));
                float3 node_2410 = (_DissolveRampColor.rgb*node_1196.rgb);
                float3 diffuseColor = (node_23+node_2410); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
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
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * saturate((node_1275+node_1196.rgb)).r,0);
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
            Cull Back
            
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
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _DissolveAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2104 = (((1.0 - _DissolveAmount)*1.2+-0.6)+_Noise_var.r);
                clip(node_2104 - 0.5);
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
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _DissolveRamp; uniform float4 _DissolveRamp_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _MaintexEmissionIntensity;
            uniform float4 _DissolveRampColor;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _FresnelColor;
            uniform float _SilhouetteIntensity;
            uniform float _SilhouetteExponent;
            uniform float _SilhouetteEmissionIntensity;
            uniform float4 _MaintexEmissionColor;
            uniform float _DissolveEmissionIntensity;
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
                
                float node_1275 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_SilhouetteExponent);
                float3 node_23 = (_FresnelColor.rgb*node_1275*_SilhouetteIntensity);
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_2104 = (((1.0 - _DissolveAmount)*1.2+-0.6)+_Noise_var.r);
                float node_1885 = 0.0;
                float2 node_1101 = float2((1.0 - saturate((_DissolveMin + ( (node_2104 - node_1885) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_1885)))),0.0);
                float4 node_1196 = tex2D(_DissolveRamp,TRANSFORM_TEX(node_1101, _DissolveRamp));
                float3 node_2410 = (_DissolveRampColor.rgb*node_1196.rgb);
                o.Emission = ((node_23*_SilhouetteEmissionIntensity)+((node_2410*_DissolveEmissionIntensity)+lerp(float3(0,0,0),_MaintexEmissionColor.rgb,_MaintexEmissionIntensity)));
                
                float3 diffColor = (node_23+node_2410);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
