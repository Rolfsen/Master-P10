// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9546,x:33016,y:32059,varname:node_9546,prsc:2|diff-3305-OUT,spec-7750-OUT,gloss-7750-OUT,transm-9862-OUT,lwrap-9862-OUT,alpha-5707-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9386,x:31961,y:33122,varname:node_9386,prsc:2|DIST-584-OUT;n:type:ShaderForge.SFN_ValueProperty,id:584,x:31785,y:33122,ptovrint:False,ptlb:Shore Blend,ptin:_ShoreBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_Vector1,id:7750,x:32814,y:32210,varname:node_7750,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9862,x:32814,y:32295,varname:node_9862,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5707,x:32148,y:33122,varname:node_5707,prsc:2|A-9014-A,B-9386-OUT;n:type:ShaderForge.SFN_Append,id:7395,x:30654,y:31977,varname:node_7395,prsc:2|A-8026-Z,B-8026-X;n:type:ShaderForge.SFN_Append,id:5695,x:30654,y:31855,varname:node_5695,prsc:2|A-8026-Y,B-8026-Z;n:type:ShaderForge.SFN_Append,id:2321,x:30654,y:32101,varname:node_2321,prsc:2|A-8026-X,B-8026-Y;n:type:ShaderForge.SFN_Tex2d,id:982,x:30897,y:31855,varname:node_982,prsc:2,ntxv:0,isnm:False|UVIN-5695-OUT,TEX-2145-TEX;n:type:ShaderForge.SFN_Tex2d,id:2987,x:30897,y:31977,varname:_2,prsc:2,ntxv:0,isnm:False|UVIN-7395-OUT,TEX-2145-TEX;n:type:ShaderForge.SFN_Tex2d,id:7117,x:30897,y:32101,varname:_3,prsc:2,ntxv:0,isnm:False|UVIN-2321-OUT,TEX-2145-TEX;n:type:ShaderForge.SFN_Multiply,id:5606,x:31899,y:31578,varname:node_5606,prsc:2|A-9589-OUT,B-9589-OUT;n:type:ShaderForge.SFN_Abs,id:9589,x:31657,y:31578,varname:node_9589,prsc:2|IN-8194-OUT;n:type:ShaderForge.SFN_NormalVector,id:8194,x:31427,y:31578,prsc:2,pt:False;n:type:ShaderForge.SFN_ChannelBlend,id:4004,x:32203,y:32095,varname:node_4004,prsc:2,chbt:0|M-5606-OUT,R-2596-OUT,G-2201-OUT,B-1471-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8026,x:30440,y:31977,varname:node_8026,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2596,x:31467,y:31891,varname:node_2596,prsc:2|A-9014-RGB,B-168-OUT,T-982-A;n:type:ShaderForge.SFN_Lerp,id:3305,x:32678,y:32057,varname:node_3305,prsc:2|A-5302-OUT,B-4004-OUT,T-1229-OUT;n:type:ShaderForge.SFN_Lerp,id:2201,x:31467,y:32011,varname:node_2201,prsc:2|A-9014-RGB,B-2105-OUT,T-2987-A;n:type:ShaderForge.SFN_Lerp,id:1471,x:31467,y:32136,varname:node_1471,prsc:2|A-9014-RGB,B-1331-OUT,T-7117-A;n:type:ShaderForge.SFN_Color,id:9014,x:31202,y:32318,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:_WaterColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.282353,c2:0.6196079,c3:0.8,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7885,x:31967,y:32554,ptovrint:False,ptlb:Shore Foam Depth,ptin:_ShoreFoamDepth,varname:_ShoreFoamDepth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_DepthBlend,id:9820,x:32125,y:32554,varname:node_9820,prsc:2|DIST-7885-OUT;n:type:ShaderForge.SFN_RemapRange,id:1229,x:32309,y:32554,varname:node_1229,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-9820-OUT;n:type:ShaderForge.SFN_Multiply,id:168,x:31132,y:31855,varname:node_168,prsc:2|A-982-RGB,B-7456-RGB;n:type:ShaderForge.SFN_Multiply,id:2105,x:31132,y:31977,varname:node_2105,prsc:2|A-2987-RGB,B-7456-RGB;n:type:ShaderForge.SFN_Multiply,id:1331,x:31132,y:32101,varname:node_1331,prsc:2|A-7117-RGB,B-7456-RGB;n:type:ShaderForge.SFN_Color,id:7456,x:30895,y:31697,ptovrint:False,ptlb:Foam Shore Tint,ptin:_FoamShoreTint,varname:node_7456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:350,x:30646,y:32348,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:_ShoreFoam_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:5797,x:30870,y:32355,ptovrint:False,ptlb:Foam Tint,ptin:_FoamTint,varname:_FoamTint_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1746,x:31105,y:32771,varname:node_1746,prsc:2|A-2959-RGB,B-5797-RGB;n:type:ShaderForge.SFN_Multiply,id:3924,x:31105,y:32647,varname:node_3924,prsc:2|A-2189-RGB,B-5797-RGB;n:type:ShaderForge.SFN_Multiply,id:8600,x:31105,y:32525,varname:node_8600,prsc:2|A-1087-RGB,B-5797-RGB;n:type:ShaderForge.SFN_Tex2d,id:1087,x:30870,y:32525,varname:node_1087,prsc:2,ntxv:0,isnm:False|UVIN-5695-OUT,TEX-350-TEX;n:type:ShaderForge.SFN_Tex2d,id:2189,x:30870,y:32647,varname:node_2189,prsc:2,ntxv:0,isnm:False|UVIN-7395-OUT,TEX-350-TEX;n:type:ShaderForge.SFN_Tex2d,id:2959,x:30870,y:32771,varname:node_2959,prsc:2,ntxv:0,isnm:False|UVIN-2321-OUT,TEX-350-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2145,x:30654,y:31679,ptovrint:False,ptlb:Foam Shore,ptin:_FoamShore,varname:node_2145,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5374,x:31455,y:32768,varname:node_5374,prsc:2|A-9014-RGB,B-1746-OUT,T-2959-A;n:type:ShaderForge.SFN_Lerp,id:5879,x:31455,y:32644,varname:node_5879,prsc:2|A-9014-RGB,B-3924-OUT,T-2189-A;n:type:ShaderForge.SFN_Lerp,id:1706,x:31455,y:32523,varname:node_1706,prsc:2|A-9014-RGB,B-8600-OUT,T-1087-A;n:type:ShaderForge.SFN_ChannelBlend,id:5302,x:32203,y:32270,varname:node_5302,prsc:2,chbt:0|M-5606-OUT,R-1706-OUT,G-5879-OUT,B-5374-OUT;n:type:ShaderForge.SFN_Append,id:6442,x:32552,y:32646,varname:node_6442,prsc:2|A-1229-OUT,B-1526-OUT;n:type:ShaderForge.SFN_Vector1,id:1526,x:32309,y:32749,varname:node_1526,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1458,x:32733,y:32646,varname:node_1458,prsc:2,ntxv:0,isnm:False|UVIN-8985-OUT,TEX-2498-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2498,x:32552,y:32832,ptovrint:False,ptlb:Color Ramp,ptin:_ColorRamp,varname:node_2498,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Ceil,id:2783,x:32573,y:32501,varname:node_2783,prsc:2|IN-1229-OUT;n:type:ShaderForge.SFN_TexCoord,id:910,x:32550,y:33107,varname:node_910,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2215,x:32796,y:33107,varname:node_2215,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-910-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7579,x:32953,y:33146,varname:node_7579,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2215-OUT;n:type:ShaderForge.SFN_ArcTan2,id:6045,x:33047,y:32898,varname:node_6045,prsc:2,attp:2|A-7579-G,B-7579-R;n:type:ShaderForge.SFN_Lerp,id:1025,x:33284,y:32831,varname:node_1025,prsc:2|A-2783-OUT,B-6045-OUT,T-2783-OUT;n:type:ShaderForge.SFN_Append,id:8985,x:33398,y:32512,varname:node_8985,prsc:2|A-1025-OUT,B-2783-OUT;proporder:9014-584-7885-5797-350-7456-2145-2498;pass:END;sub:END;*/

Shader "DCC/TFP_Water" {
    Properties {
        _WaterColor ("Water Color", Color) = (0.282353,0.6196079,0.8,1)
        _ShoreBlend ("Shore Blend", Float ) = 6
        _ShoreFoamDepth ("Shore Foam Depth", Float ) = 2
        _FoamTint ("Foam Tint", Color) = (1,1,1,1)
        _Foam ("Foam", 2D) = "black" {}
        _FoamShoreTint ("Foam Shore Tint", Color) = (1,1,1,1)
        _FoamShore ("Foam Shore", 2D) = "white" {}
        _ColorRamp ("Color Ramp", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 3000
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
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _ShoreBlend;
            uniform float4 _WaterColor;
            uniform float _ShoreFoamDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float node_7750 = 0.0;
                float gloss = 1.0 - node_7750; // Convert roughness to gloss
                float perceptualRoughness = node_7750;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(node_7750,node_7750,node_7750);
                float specularMonochrome;
                float3 node_9589 = abs(i.normalDir);
                float3 node_5606 = (node_9589*node_9589);
                float2 node_5695 = float2(i.posWorld.g,i.posWorld.b);
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_5695, _Foam));
                float2 node_7395 = float2(i.posWorld.b,i.posWorld.r);
                float4 node_2189 = tex2D(_Foam,TRANSFORM_TEX(node_7395, _Foam));
                float2 node_2321 = float2(i.posWorld.r,i.posWorld.g);
                float4 node_2959 = tex2D(_Foam,TRANSFORM_TEX(node_2321, _Foam));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_5695, _FoamShore));
                float4 _2 = tex2D(_FoamShore,TRANSFORM_TEX(node_7395, _FoamShore));
                float4 _3 = tex2D(_FoamShore,TRANSFORM_TEX(node_2321, _FoamShore));
                float3 node_4004 = (node_5606.r*lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a) + node_5606.g*lerp(_WaterColor.rgb,(_2.rgb*_FoamShoreTint.rgb),_2.a) + node_5606.b*lerp(_WaterColor.rgb,(_3.rgb*_FoamShoreTint.rgb),_3.a));
                float node_1229 = (saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0);
                float3 diffuseColor = lerp((node_5606.r*lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a) + node_5606.g*lerp(_WaterColor.rgb,(node_2189.rgb*_FoamTint.rgb),node_2189.a) + node_5606.b*lerp(_WaterColor.rgb,(node_2959.rgb*_FoamTint.rgb),node_2959.a)),float3(node_4004,node_4004,node_4004),node_1229); // Need this for specular when using metallic
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
                NdotL = dot( normalDirection, lightDirection );
                float node_9862 = 1.0;
                float3 w = float3(node_9862,node_9862,node_9862)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_9862,node_9862,node_9862);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                diffuseColor *= 1-specularMonochrome;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _ShoreBlend;
            uniform float4 _WaterColor;
            uniform float _ShoreFoamDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float node_7750 = 0.0;
                float gloss = 1.0 - node_7750; // Convert roughness to gloss
                float perceptualRoughness = node_7750;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(node_7750,node_7750,node_7750);
                float specularMonochrome;
                float3 node_9589 = abs(i.normalDir);
                float3 node_5606 = (node_9589*node_9589);
                float2 node_5695 = float2(i.posWorld.g,i.posWorld.b);
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_5695, _Foam));
                float2 node_7395 = float2(i.posWorld.b,i.posWorld.r);
                float4 node_2189 = tex2D(_Foam,TRANSFORM_TEX(node_7395, _Foam));
                float2 node_2321 = float2(i.posWorld.r,i.posWorld.g);
                float4 node_2959 = tex2D(_Foam,TRANSFORM_TEX(node_2321, _Foam));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_5695, _FoamShore));
                float4 _2 = tex2D(_FoamShore,TRANSFORM_TEX(node_7395, _FoamShore));
                float4 _3 = tex2D(_FoamShore,TRANSFORM_TEX(node_2321, _FoamShore));
                float3 node_4004 = (node_5606.r*lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a) + node_5606.g*lerp(_WaterColor.rgb,(_2.rgb*_FoamShoreTint.rgb),_2.a) + node_5606.b*lerp(_WaterColor.rgb,(_3.rgb*_FoamShoreTint.rgb),_3.a));
                float node_1229 = (saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0);
                float3 diffuseColor = lerp((node_5606.r*lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a) + node_5606.g*lerp(_WaterColor.rgb,(node_2189.rgb*_FoamTint.rgb),node_2189.a) + node_5606.b*lerp(_WaterColor.rgb,(node_2959.rgb*_FoamTint.rgb),node_2959.a)),float3(node_4004,node_4004,node_4004),node_1229); // Need this for specular when using metallic
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
                NdotL = dot( normalDirection, lightDirection );
                float node_9862 = 1.0;
                float3 w = float3(node_9862,node_9862,node_9862)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_9862,node_9862,node_9862);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (_WaterColor.a*saturate((sceneZ-partZ)/_ShoreBlend)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
