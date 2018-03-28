// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:500,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33384,y:32564,varname:node_2865,prsc:2|diff-9241-OUT,spec-6693-OUT,gloss-6693-OUT,emission-1159-OUT,alpha-6714-OUT;n:type:ShaderForge.SFN_Slider,id:3023,x:32568,y:33041,ptovrint:False,ptlb:Total Opacity Intensity,ptin:_TotalOpacityIntensity,varname:node_3023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_VertexColor,id:1852,x:32568,y:33194,varname:node_1852,prsc:2;n:type:ShaderForge.SFN_Append,id:867,x:31004,y:32263,varname:node_867,prsc:2|A-1044-OUT,B-1536-OUT;n:type:ShaderForge.SFN_Time,id:8959,x:31000,y:32503,varname:node_8959,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4061,x:31190,y:32596,varname:node_4061,prsc:2|A-8959-T,B-9072-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9072,x:31000,y:32673,ptovrint:False,ptlb:Maintex Speed,ptin:_MaintexSpeed,varname:node_3186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.03;n:type:ShaderForge.SFN_Normalize,id:1009,x:31185,y:32263,varname:node_1009,prsc:2|IN-867-OUT;n:type:ShaderForge.SFN_Multiply,id:5061,x:31460,y:32319,varname:node_5061,prsc:2|A-1009-OUT,B-4061-OUT;n:type:ShaderForge.SFN_Slider,id:1044,x:30678,y:32263,ptovrint:False,ptlb:Maintex U Speed_copy,ptin:_MaintexUSpeed_copy,varname:_MaintexUSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:1536,x:30680,y:32358,ptovrint:False,ptlb:Maintex V Speed_copy,ptin:_MaintexVSpeed_copy,varname:_MaintexVSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:6794,x:32815,y:33194,varname:node_6794,prsc:2|A-3468-OUT,B-1852-R,T-1852-B;n:type:ShaderForge.SFN_Vector1,id:3468,x:32568,y:33129,varname:node_3468,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:313,x:32998,y:33194,varname:node_313,prsc:2|A-3023-OUT,B-6794-OUT;n:type:ShaderForge.SFN_Tex2d,id:332,x:31965,y:32177,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_332,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fdc3268fe0d5514bbe874b997e89107,ntxv:0,isnm:False|UVIN-4728-OUT;n:type:ShaderForge.SFN_Tex2d,id:6091,x:31969,y:32567,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_6091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:201464c9ccd445544acb742fb3245737,ntxv:0,isnm:False|UVIN-4728-OUT;n:type:ShaderForge.SFN_TexCoord,id:1233,x:31032,y:31992,varname:node_1233,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:4728,x:31719,y:32102,varname:node_4728,prsc:2|A-6793-OUT,B-5061-OUT;n:type:ShaderForge.SFN_Lerp,id:9241,x:32696,y:32311,varname:node_9241,prsc:2|A-5278-OUT,B-7858-OUT,T-1903-OUT;n:type:ShaderForge.SFN_Tex2d,id:8111,x:31969,y:32952,ptovrint:False,ptlb:Overlay Mask,ptin:_OverlayMask,varname:node_8111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:79c57fa4f38758a438e296f9b1549bd1,ntxv:2,isnm:False|UVIN-4728-OUT;n:type:ShaderForge.SFN_Multiply,id:9821,x:31459,y:31964,varname:node_9821,prsc:2|A-8961-OUT,B-400-OUT;n:type:ShaderForge.SFN_Slider,id:8961,x:31116,y:31873,ptovrint:False,ptlb:Texture Scale,ptin:_TextureScale,varname:node_8961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_RemapRange,id:400,x:31273,y:31964,varname:node_400,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-1233-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7858,x:32156,y:32177,varname:node_7858,prsc:2|A-332-RGB,B-79-RGB;n:type:ShaderForge.SFN_Multiply,id:5278,x:32161,y:32567,varname:node_5278,prsc:2|A-6091-RGB,B-308-RGB;n:type:ShaderForge.SFN_Color,id:79,x:31969,y:32378,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:node_79,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:308,x:31969,y:32763,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_308,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_OneMinus,id:1903,x:32244,y:32775,varname:node_1903,prsc:2|IN-8111-R;n:type:ShaderForge.SFN_Vector1,id:6693,x:33164,y:32619,varname:node_6693,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1159,x:32883,y:32695,varname:node_1159,prsc:2|A-9986-OUT,B-9240-OUT;n:type:ShaderForge.SFN_Slider,id:9240,x:32534,y:32845,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_9240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9986,x:32691,y:32695,varname:node_9986,prsc:2|A-6672-OUT,B-7858-OUT,T-1903-OUT;n:type:ShaderForge.SFN_Vector1,id:6672,x:32691,y:32624,varname:node_6672,prsc:2,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:6186,x:33068,y:32902,varname:node_6186,prsc:2|DIST-4328-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4328,x:32902,y:32902,ptovrint:False,ptlb:Foam Shore Transparency Blend,ptin:_FoamShoreTransparencyBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Lerp,id:6714,x:33237,y:33090,varname:node_6714,prsc:2|A-1048-OUT,B-6186-OUT,T-313-OUT;n:type:ShaderForge.SFN_Vector1,id:1048,x:33002,y:33051,varname:node_1048,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:8911,x:32094,y:31755,varname:node_8911,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3852-OUT;n:type:ShaderForge.SFN_Power,id:3852,x:31917,y:31755,varname:node_3852,prsc:2|VAL-6895-RGB,EXP-8608-OUT;n:type:ShaderForge.SFN_Slider,id:8608,x:31543,y:31775,ptovrint:False,ptlb:Wobble,ptin:_Wobble,varname:_LavaWobble_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.003,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:6895,x:31543,y:31589,ptovrint:False,ptlb:Wobble Noise,ptin:_WobbleNoise,varname:_LavaWobbleNoise_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-9821-OUT;n:type:ShaderForge.SFN_Multiply,id:6793,x:32294,y:31606,varname:node_6793,prsc:2|A-9821-OUT,B-8911-OUT;proporder:3023-9072-1044-1536-332-6091-8111-8961-79-308-9240-4328-8608-6895;pass:END;sub:END;*/

Shader "DCC/Waterfall" {
    Properties {
        _TotalOpacityIntensity ("Total Opacity Intensity", Range(0, 1)) = 1
        _MaintexSpeed ("Maintex Speed", Float ) = 0.03
        _MaintexUSpeed_copy ("Maintex U Speed_copy", Range(-1, 1)) = 1
        _MaintexVSpeed_copy ("Maintex V Speed_copy", Range(-1, 1)) = 1
        _Maintex ("Maintex", 2D) = "white" {}
        _Overlay ("Overlay", 2D) = "white" {}
        _OverlayMask ("Overlay Mask", 2D) = "black" {}
        _TextureScale ("Texture Scale", Range(0, 10)) = 1
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _EmissionIntensity ("Emission Intensity", Range(0, 1)) = 0
        _FoamShoreTransparencyBlend ("Foam Shore Transparency Blend", Float ) = 0.1
        _Wobble ("Wobble", Range(0, 0.1)) = 0.003
        _WobbleNoise ("Wobble Noise", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+500"
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 2.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _TotalOpacityIntensity;
            uniform float _MaintexSpeed;
            uniform float _MaintexUSpeed_copy;
            uniform float _MaintexVSpeed_copy;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _TextureScale;
            uniform float4 _MaintexColor;
            uniform float4 _OverlayColor;
            uniform float _EmissionIntensity;
            uniform float _FoamShoreTransparencyBlend;
            uniform float _Wobble;
            uniform sampler2D _WobbleNoise; uniform float4 _WobbleNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
                float node_6693 = 0.0;
                float gloss = 1.0 - node_6693; // Convert roughness to gloss
                float perceptualRoughness = node_6693;
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
                float3 specularColor = float3(node_6693,node_6693,node_6693);
                float specularMonochrome;
                float2 node_9821 = (_TextureScale*(i.uv0*1.0+-0.5));
                float4 _WobbleNoise_var = tex2D(_WobbleNoise,TRANSFORM_TEX(node_9821, _WobbleNoise));
                float4 node_8959 = _Time;
                float2 node_4728 = ((node_9821*pow(_WobbleNoise_var.rgb,_Wobble).rg)+(normalize(float2(_MaintexUSpeed_copy,_MaintexVSpeed_copy))*(node_8959.g*_MaintexSpeed)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_4728, _Overlay));
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(node_4728, _Maintex));
                float3 node_7858 = (_Maintex_var.rgb*_MaintexColor.rgb);
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(node_4728, _OverlayMask));
                float node_1903 = (1.0 - _OverlayMask_var.r);
                float3 diffuseColor = lerp((_Overlay_var.rgb*_OverlayColor.rgb),node_7858,node_1903); // Need this for specular when using metallic
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
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_6672 = 0.0;
                float3 emissive = (lerp(float3(node_6672,node_6672,node_6672),node_7858,node_1903)*_EmissionIntensity);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,lerp(0.0,saturate((sceneZ-partZ)/_FoamShoreTransparencyBlend),(_TotalOpacityIntensity*lerp(0.0,i.vertexColor.r,i.vertexColor.b))));
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 2.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _TotalOpacityIntensity;
            uniform float _MaintexSpeed;
            uniform float _MaintexUSpeed_copy;
            uniform float _MaintexVSpeed_copy;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _TextureScale;
            uniform float4 _MaintexColor;
            uniform float4 _OverlayColor;
            uniform float _EmissionIntensity;
            uniform float _FoamShoreTransparencyBlend;
            uniform float _Wobble;
            uniform sampler2D _WobbleNoise; uniform float4 _WobbleNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
                float node_6693 = 0.0;
                float gloss = 1.0 - node_6693; // Convert roughness to gloss
                float perceptualRoughness = node_6693;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(node_6693,node_6693,node_6693);
                float specularMonochrome;
                float2 node_9821 = (_TextureScale*(i.uv0*1.0+-0.5));
                float4 _WobbleNoise_var = tex2D(_WobbleNoise,TRANSFORM_TEX(node_9821, _WobbleNoise));
                float4 node_8959 = _Time;
                float2 node_4728 = ((node_9821*pow(_WobbleNoise_var.rgb,_Wobble).rg)+(normalize(float2(_MaintexUSpeed_copy,_MaintexVSpeed_copy))*(node_8959.g*_MaintexSpeed)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_4728, _Overlay));
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(node_4728, _Maintex));
                float3 node_7858 = (_Maintex_var.rgb*_MaintexColor.rgb);
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(node_4728, _OverlayMask));
                float node_1903 = (1.0 - _OverlayMask_var.r);
                float3 diffuseColor = lerp((_Overlay_var.rgb*_OverlayColor.rgb),node_7858,node_1903); // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * lerp(0.0,saturate((sceneZ-partZ)/_FoamShoreTransparencyBlend),(_TotalOpacityIntensity*lerp(0.0,i.vertexColor.r,i.vertexColor.b))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
