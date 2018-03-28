// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2039216,fgcg:0.6235294,fgcb:0.8274511,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32761,y:32595,varname:node_2865,prsc:2|diff-5150-OUT,spec-2098-OUT,gloss-2643-OUT,normal-4480-OUT,emission-9239-OUT;n:type:ShaderForge.SFN_Multiply,id:7327,x:31668,y:31873,varname:node_7327,prsc:2|A-7920-RGB,B-3440-RGB;n:type:ShaderForge.SFN_Color,id:3440,x:31475,y:31966,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7920,x:31475,y:31781,ptovrint:True,ptlb:Maintex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3654-OUT;n:type:ShaderForge.SFN_Slider,id:2098,x:32187,y:32450,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2643,x:32187,y:32552,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6564,x:31916,y:32885,ptovrint:False,ptlb:Maintex Normal Intensity,ptin:_MaintexNormalIntensity,varname:node_9862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:7531,x:32261,y:32723,varname:node_7531,prsc:2|A-652-OUT,B-5181-RGB,T-6564-OUT;n:type:ShaderForge.SFN_Vector3,id:652,x:31697,y:32717,varname:node_652,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:9298,x:31804,y:33465,ptovrint:False,ptlb:Maintex Emission Map,ptin:_MaintexEmissionMap,varname:node_2964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-3654-OUT;n:type:ShaderForge.SFN_Lerp,id:5150,x:32344,y:32290,varname:node_5150,prsc:2|A-7327-OUT,B-3085-OUT,T-1379-OUT;n:type:ShaderForge.SFN_Tex2d,id:3055,x:31475,y:32147,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:_A_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-6261-OUT;n:type:ShaderForge.SFN_Clamp01,id:1379,x:31854,y:32508,varname:node_1379,prsc:2|IN-1946-OUT;n:type:ShaderForge.SFN_Add,id:1946,x:31664,y:32508,varname:node_1946,prsc:2|A-3055-A,B-5704-OUT;n:type:ShaderForge.SFN_Slider,id:6630,x:31117,y:32529,ptovrint:False,ptlb:Blend Strength,ptin:_BlendStrength,varname:node_3676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3085,x:31663,y:32226,varname:node_3085,prsc:2|A-3055-RGB,B-2867-RGB;n:type:ShaderForge.SFN_Color,id:2867,x:31475,y:32340,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:_AlbedoColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:4480,x:32495,y:32672,varname:node_4480,prsc:2|A-7531-OUT,B-9087-OUT,T-1379-OUT;n:type:ShaderForge.SFN_Lerp,id:9087,x:32260,y:33042,varname:node_9087,prsc:2|A-1190-OUT,B-5048-RGB,T-3134-OUT;n:type:ShaderForge.SFN_Vector3,id:1190,x:31696,y:33034,varname:node_1190,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:5048,x:31696,y:33181,ptovrint:False,ptlb:Overlay Normal Map,ptin:_OverlayNormalMap,varname:node_9017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-6261-OUT;n:type:ShaderForge.SFN_Tex2d,id:5181,x:31696,y:32843,ptovrint:False,ptlb:Maintex Normal Map,ptin:_MaintexNormalMap,varname:_OverlayNormalMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-3654-OUT;n:type:ShaderForge.SFN_RemapRange,id:5704,x:31480,y:32508,varname:node_5704,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-6630-OUT;n:type:ShaderForge.SFN_Slider,id:3134,x:31916,y:32985,ptovrint:False,ptlb:Overlay Normal Intensity,ptin:_OverlayNormalIntensity,varname:_NormalIntensityMaintex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9413,x:31804,y:33850,ptovrint:False,ptlb:Overlay Emission Map,ptin:_OverlayEmissionMap,varname:_MaintexEmissionMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-6261-OUT;n:type:ShaderForge.SFN_Lerp,id:2591,x:32134,y:33427,varname:node_2591,prsc:2|A-9851-OUT,B-9298-RGB,T-4378-OUT;n:type:ShaderForge.SFN_Slider,id:4378,x:31647,y:33649,ptovrint:False,ptlb:Maintex Emission Intensity,ptin:_MaintexEmissionIntensity,varname:node_3275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:949,x:31647,y:34043,ptovrint:False,ptlb:Overlay Emission Intensity,ptin:_OverlayEmissionIntensity,varname:node_5276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector3,id:9851,x:31804,y:33354,varname:node_9851,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:8760,x:32134,y:33626,varname:node_8760,prsc:2|A-5356-OUT,B-9413-RGB,T-949-OUT;n:type:ShaderForge.SFN_Vector3,id:5356,x:31804,y:33733,varname:node_5356,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:9239,x:32328,y:33427,varname:node_9239,prsc:2|A-2591-OUT,B-8760-OUT,T-1379-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9269,x:29959,y:32862,ptovrint:False,ptlb:Overlay U Speed,ptin:_OverlayUSpeed,varname:node_9269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5559,x:29959,y:32950,ptovrint:False,ptlb:Overlay V Speed,ptin:_OverlayVSpeed,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:9049,x:30182,y:32734,varname:node_9049,prsc:2|A-9269-OUT,B-5559-OUT;n:type:ShaderForge.SFN_TexCoord,id:1459,x:30402,y:32724,varname:node_1459,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:6261,x:30603,y:32828,varname:node_6261,prsc:2|A-1459-UVOUT,B-5964-OUT;n:type:ShaderForge.SFN_Multiply,id:5964,x:30402,y:32895,varname:node_5964,prsc:2|A-9049-OUT,B-4177-T;n:type:ShaderForge.SFN_Time,id:4177,x:30182,y:32895,varname:node_4177,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9654,x:29956,y:32534,ptovrint:False,ptlb:Maintex U Speed,ptin:_MaintexUSpeed,varname:_OverlayUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3350,x:29956,y:32622,ptovrint:False,ptlb:Maintex V Speed,ptin:_MaintexVSpeed,varname:_OverlayVspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:8202,x:30179,y:32406,varname:node_8202,prsc:2|A-9654-OUT,B-3350-OUT;n:type:ShaderForge.SFN_TexCoord,id:2570,x:30399,y:32396,varname:node_2570,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:3654,x:30600,y:32500,varname:node_3654,prsc:2|A-2570-UVOUT,B-4712-OUT;n:type:ShaderForge.SFN_Multiply,id:4712,x:30399,y:32567,varname:node_4712,prsc:2|A-8202-OUT,B-3620-T;n:type:ShaderForge.SFN_Time,id:3620,x:30179,y:32567,varname:node_3620,prsc:2;proporder:3440-7920-2643-2098-6564-5181-9298-4378-9654-3350-6630-2867-3055-5048-3134-9413-949-9269-5559;pass:END;sub:END;*/

Shader "DCC/Standard Shader Custom With Overlay Animated" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _MainTex ("Maintex", 2D) = "white" {}
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Metallic ("Metallic", Range(0, 1)) = 0
        _MaintexNormalIntensity ("Maintex Normal Intensity", Range(0, 1)) = 0
        _MaintexNormalMap ("Maintex Normal Map", 2D) = "bump" {}
        _MaintexEmissionMap ("Maintex Emission Map", 2D) = "black" {}
        _MaintexEmissionIntensity ("Maintex Emission Intensity", Range(0, 1)) = 1
        _MaintexUSpeed ("Maintex U Speed", Float ) = 0
        _MaintexVSpeed ("Maintex V Speed", Float ) = 0
        _BlendStrength ("Blend Strength", Range(0, 1)) = 0
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _Overlay ("Overlay", 2D) = "black" {}
        _OverlayNormalMap ("Overlay Normal Map", 2D) = "bump" {}
        _OverlayNormalIntensity ("Overlay Normal Intensity", Range(0, 1)) = 0
        _OverlayEmissionMap ("Overlay Emission Map", 2D) = "black" {}
        _OverlayEmissionIntensity ("Overlay Emission Intensity", Range(0, 1)) = 1
        _OverlayUSpeed ("Overlay U Speed", Float ) = 0
        _OverlayVSpeed ("Overlay V Speed", Float ) = 0
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _MaintexNormalIntensity;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _BlendStrength;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayNormalMap; uniform float4 _OverlayNormalMap_ST;
            uniform sampler2D _MaintexNormalMap; uniform float4 _MaintexNormalMap_ST;
            uniform float _OverlayNormalIntensity;
            uniform sampler2D _OverlayEmissionMap; uniform float4 _OverlayEmissionMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _OverlayEmissionIntensity;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
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
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3620 = _Time + _TimeEditor;
                float2 node_3654 = (i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g));
                float3 _MaintexNormalMap_var = UnpackNormal(tex2D(_MaintexNormalMap,TRANSFORM_TEX(node_3654, _MaintexNormalMap)));
                float4 node_4177 = _Time + _TimeEditor;
                float2 node_6261 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*node_4177.g));
                float3 _OverlayNormalMap_var = UnpackNormal(tex2D(_OverlayNormalMap,TRANSFORM_TEX(node_6261, _OverlayNormalMap)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float node_1379 = saturate((_Overlay_var.a+(_BlendStrength*1.0+-1.0)));
                float3 normalLocal = lerp(lerp(float3(0,0,1),_MaintexNormalMap_var.rgb,_MaintexNormalIntensity),lerp(float3(0,0,1),_OverlayNormalMap_var.rgb,_OverlayNormalIntensity),node_1379);
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
                float gloss = _Gloss;
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
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3654, _MainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_MaintexColor.rgb),(_Overlay_var.rgb*_OverlayColor.rgb),node_1379); // Need this for specular when using metallic
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
                float3 directSpecular = 1*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
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
////// Emissive:
                float4 _MaintexEmissionMap_var = tex2D(_MaintexEmissionMap,TRANSFORM_TEX(node_3654, _MaintexEmissionMap));
                float4 _OverlayEmissionMap_var = tex2D(_OverlayEmissionMap,TRANSFORM_TEX(node_6261, _OverlayEmissionMap));
                float3 emissive = lerp(lerp(float3(0,0,0),_MaintexEmissionMap_var.rgb,_MaintexEmissionIntensity),lerp(float3(0,0,0),_OverlayEmissionMap_var.rgb,_OverlayEmissionIntensity),node_1379);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _MaintexNormalIntensity;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _BlendStrength;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayNormalMap; uniform float4 _OverlayNormalMap_ST;
            uniform sampler2D _MaintexNormalMap; uniform float4 _MaintexNormalMap_ST;
            uniform float _OverlayNormalIntensity;
            uniform sampler2D _OverlayEmissionMap; uniform float4 _OverlayEmissionMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _OverlayEmissionIntensity;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
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
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3620 = _Time + _TimeEditor;
                float2 node_3654 = (i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g));
                float3 _MaintexNormalMap_var = UnpackNormal(tex2D(_MaintexNormalMap,TRANSFORM_TEX(node_3654, _MaintexNormalMap)));
                float4 node_4177 = _Time + _TimeEditor;
                float2 node_6261 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*node_4177.g));
                float3 _OverlayNormalMap_var = UnpackNormal(tex2D(_OverlayNormalMap,TRANSFORM_TEX(node_6261, _OverlayNormalMap)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float node_1379 = saturate((_Overlay_var.a+(_BlendStrength*1.0+-1.0)));
                float3 normalLocal = lerp(lerp(float3(0,0,1),_MaintexNormalMap_var.rgb,_MaintexNormalIntensity),lerp(float3(0,0,1),_OverlayNormalMap_var.rgb,_OverlayNormalIntensity),node_1379);
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
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3654, _MainTex));
                float3 diffuseColor = lerp((_MainTex_var.rgb*_MaintexColor.rgb),(_Overlay_var.rgb*_OverlayColor.rgb),node_1379); // Need this for specular when using metallic
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
                float3 directSpecular = attenColor*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _MaintexEmissionMap; uniform float4 _MaintexEmissionMap_ST;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _BlendStrength;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayEmissionMap; uniform float4 _OverlayEmissionMap_ST;
            uniform float _MaintexEmissionIntensity;
            uniform float _OverlayEmissionIntensity;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_3620 = _Time + _TimeEditor;
                float2 node_3654 = (i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g));
                float4 _MaintexEmissionMap_var = tex2D(_MaintexEmissionMap,TRANSFORM_TEX(node_3654, _MaintexEmissionMap));
                float4 node_4177 = _Time + _TimeEditor;
                float2 node_6261 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*node_4177.g));
                float4 _OverlayEmissionMap_var = tex2D(_OverlayEmissionMap,TRANSFORM_TEX(node_6261, _OverlayEmissionMap));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float node_1379 = saturate((_Overlay_var.a+(_BlendStrength*1.0+-1.0)));
                o.Emission = lerp(lerp(float3(0,0,0),_MaintexEmissionMap_var.rgb,_MaintexEmissionIntensity),lerp(float3(0,0,0),_OverlayEmissionMap_var.rgb,_OverlayEmissionIntensity),node_1379);
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3654, _MainTex));
                float3 diffColor = lerp((_MainTex_var.rgb*_MaintexColor.rgb),(_Overlay_var.rgb*_OverlayColor.rgb),node_1379);
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
