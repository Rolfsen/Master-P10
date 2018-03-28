// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-4188-OUT,spec-9440-OUT,gloss-1813-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32010,y:32784,varname:node_6343,prsc:2|A-7305-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31817,y:32876,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Abs,id:6849,x:30300,y:32559,varname:node_6849,prsc:2|IN-8734-OUT;n:type:ShaderForge.SFN_NormalVector,id:8734,x:30094,y:32559,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:30473,y:33365,ptovrint:False,ptlb:Maintex Side,ptin:_MaintexSide,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a2c22d200c62aa046ad4a543bcc51472,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7914,x:30143,y:32464,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:267,x:30679,y:32431,varname:node_267,prsc:2|VAL-6849-OUT,EXP-7914-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9197,x:30300,y:32262,varname:node_9197,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-267-OUT;n:type:ShaderForge.SFN_Add,id:9937,x:30483,y:32140,varname:node_9937,prsc:2|A-9197-R,B-9197-G;n:type:ShaderForge.SFN_Add,id:4487,x:30679,y:32269,varname:node_4487,prsc:2|A-9937-OUT,B-9197-B;n:type:ShaderForge.SFN_Divide,id:7053,x:31009,y:32270,varname:node_7053,prsc:2|A-267-OUT,B-4487-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5380,x:31195,y:32270,varname:node_5380,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7053-OUT;n:type:ShaderForge.SFN_Multiply,id:956,x:31410,y:32543,varname:node_956,prsc:2|A-5380-R,B-2812-RGB;n:type:ShaderForge.SFN_Multiply,id:3538,x:31410,y:32755,varname:node_3538,prsc:2|A-5380-G,B-1625-OUT;n:type:ShaderForge.SFN_Multiply,id:6240,x:31410,y:32974,varname:node_6240,prsc:2|A-5380-B,B-6102-RGB;n:type:ShaderForge.SFN_Add,id:1745,x:31644,y:32547,varname:node_1745,prsc:2|A-956-OUT,B-3538-OUT;n:type:ShaderForge.SFN_Add,id:7305,x:31823,y:32709,varname:node_7305,prsc:2|A-1745-OUT,B-6240-OUT;n:type:ShaderForge.SFN_Slider,id:9440,x:32250,y:32779,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_9440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:806,x:31667,y:32440,ptovrint:False,ptlb:Fade Intensity,ptin:_FadeIntensity,varname:node_3023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_VertexColor,id:3894,x:31824,y:32288,varname:node_3894,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4188,x:32518,y:32555,varname:node_4188,prsc:2|A-8369-RGB,B-6343-OUT,T-4356-OUT;n:type:ShaderForge.SFN_Lerp,id:4356,x:32179,y:32482,varname:node_4356,prsc:2|A-9277-OUT,B-3894-B,T-806-OUT;n:type:ShaderForge.SFN_Vector1,id:9277,x:31824,y:32221,varname:node_9277,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:8369,x:32179,y:32343,ptovrint:False,ptlb:Fade Color,ptin:_FadeColor,varname:node_8369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Append,id:4593,x:30305,y:32746,varname:node_4593,prsc:2|A-9729-G,B-9729-B;n:type:ShaderForge.SFN_Append,id:6673,x:30305,y:32958,varname:node_6673,prsc:2|A-9729-B,B-9729-R;n:type:ShaderForge.SFN_Append,id:4954,x:30473,y:33177,varname:node_4954,prsc:2|A-6107-OUT,B-9729-G;n:type:ShaderForge.SFN_FragmentPosition,id:7972,x:29905,y:32958,varname:node_7972,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:2812,x:30688,y:32746,varname:node_6671,prsc:2,tex:a2c22d200c62aa046ad4a543bcc51472,ntxv:2,isnm:False|UVIN-7689-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:8040,x:30688,y:32921,varname:node_9365,prsc:2,tex:b2b3a43a05dcc3545902b092233f4a37,ntxv:0,isnm:False|UVIN-5279-OUT,TEX-7052-TEX;n:type:ShaderForge.SFN_Tex2d,id:6102,x:30696,y:33432,varname:node_9943,prsc:2,tex:a2c22d200c62aa046ad4a543bcc51472,ntxv:0,isnm:False|UVIN-4954-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_ComponentMask,id:9729,x:30076,y:32958,varname:node_9729,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7972-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:7689,x:30473,y:32746,varname:node_7689,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-4593-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5279,x:30473,y:32958,varname:node_5279,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-6673-OUT;n:type:ShaderForge.SFN_Negate,id:6107,x:30305,y:33177,varname:node_6107,prsc:2|IN-9729-R;n:type:ShaderForge.SFN_Tex2dAsset,id:7052,x:30473,y:33578,ptovrint:False,ptlb:Maintex Top,ptin:_MaintexTop,varname:_MaintexSide_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b2b3a43a05dcc3545902b092233f4a37,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5935,x:30902,y:32921,varname:node_5935,prsc:2|A-6433-RGB,B-8040-RGB,T-3894-G;n:type:ShaderForge.SFN_Tex2d,id:6433,x:30688,y:33083,varname:node_6433,prsc:2,tex:8e1cb574ab4f3ed489234d654a91ff82,ntxv:0,isnm:False|UVIN-5279-OUT,TEX-4864-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4864,x:30473,y:33781,ptovrint:False,ptlb:Maintex Path,ptin:_MaintexPath,varname:node_4864,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8e1cb574ab4f3ed489234d654a91ff82,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4538,x:30688,y:33240,varname:node_4538,prsc:2,tex:a2c22d200c62aa046ad4a543bcc51472,ntxv:0,isnm:False|UVIN-5279-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Lerp,id:1625,x:31080,y:33014,varname:node_1625,prsc:2|A-5935-OUT,B-4538-RGB,T-3894-R;proporder:6665-1813-9932-7914-9440-806-8369-7052-4864;pass:END;sub:END;*/

Shader "DCC/Cave Shader" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0
        _MaintexSide ("Maintex Side", 2D) = "white" {}
        _BlendSharpness ("Blend Sharpness", Range(0, 10)) = 10
        _Specular ("Specular", Range(0, 1)) = 0
        _FadeIntensity ("Fade Intensity", Range(0, 1)) = 1
        _FadeColor ("Fade Color", Color) = (0,0,0,1)
        _MaintexTop ("Maintex Top", 2D) = "white" {}
        _MaintexPath ("Maintex Path", 2D) = "white" {}
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
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float _FadeIntensity;
            uniform float4 _FadeColor;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform sampler2D _MaintexPath; uniform float4 _MaintexPath_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
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
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome;
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float3 node_9729 = i.posWorld.rgb.rgb;
                float2 node_7689 = float2(node_9729.g,node_9729.b).gr;
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_7689, _MaintexSide));
                float2 node_5279 = float2(node_9729.b,node_9729.r).gr;
                float4 node_6433 = tex2D(_MaintexPath,TRANSFORM_TEX(node_5279, _MaintexPath));
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_5279, _MaintexTop));
                float4 node_4538 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5279, _MaintexSide));
                float2 node_4954 = float2((-1*node_9729.r),node_9729.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_4954, _MaintexSide));
                float3 diffuseColor = lerp(_FadeColor.rgb,((((node_5380.r*node_6671.rgb)+(node_5380.g*lerp(lerp(node_6433.rgb,node_9365.rgb,i.vertexColor.g),node_4538.rgb,i.vertexColor.r)))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),lerp(1.0,i.vertexColor.b,_FadeIntensity)); // Need this for specular when using metallic
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
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float _FadeIntensity;
            uniform float4 _FadeColor;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform sampler2D _MaintexPath; uniform float4 _MaintexPath_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
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
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
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
                float3 node_9729 = i.posWorld.rgb.rgb;
                float2 node_7689 = float2(node_9729.g,node_9729.b).gr;
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_7689, _MaintexSide));
                float2 node_5279 = float2(node_9729.b,node_9729.r).gr;
                float4 node_6433 = tex2D(_MaintexPath,TRANSFORM_TEX(node_5279, _MaintexPath));
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_5279, _MaintexTop));
                float4 node_4538 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5279, _MaintexSide));
                float2 node_4954 = float2((-1*node_9729.r),node_9729.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_4954, _MaintexSide));
                float3 diffuseColor = lerp(_FadeColor.rgb,((((node_5380.r*node_6671.rgb)+(node_5380.g*lerp(lerp(node_6433.rgb,node_9365.rgb,i.vertexColor.g),node_4538.rgb,i.vertexColor.r)))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),lerp(1.0,i.vertexColor.b,_FadeIntensity)); // Need this for specular when using metallic
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
            uniform sampler2D _MaintexSide; uniform float4 _MaintexSide_ST;
            uniform float _BlendSharpness;
            uniform float _Specular;
            uniform float _FadeIntensity;
            uniform float4 _FadeColor;
            uniform sampler2D _MaintexTop; uniform float4 _MaintexTop_ST;
            uniform sampler2D _MaintexPath; uniform float4 _MaintexPath_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
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
                
                o.Emission = 0;
                
                float3 node_267 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_9197 = node_267.rgb;
                float3 node_5380 = (node_267/((node_9197.r+node_9197.g)+node_9197.b)).rgb;
                float3 node_9729 = i.posWorld.rgb.rgb;
                float2 node_7689 = float2(node_9729.g,node_9729.b).gr;
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_7689, _MaintexSide));
                float2 node_5279 = float2(node_9729.b,node_9729.r).gr;
                float4 node_6433 = tex2D(_MaintexPath,TRANSFORM_TEX(node_5279, _MaintexPath));
                float4 node_9365 = tex2D(_MaintexTop,TRANSFORM_TEX(node_5279, _MaintexTop));
                float4 node_4538 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5279, _MaintexSide));
                float2 node_4954 = float2((-1*node_9729.r),node_9729.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_4954, _MaintexSide));
                float3 diffColor = lerp(_FadeColor.rgb,((((node_5380.r*node_6671.rgb)+(node_5380.g*lerp(lerp(node_6433.rgb,node_9365.rgb,i.vertexColor.g),node_4538.rgb,i.vertexColor.r)))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),lerp(1.0,i.vertexColor.b,_FadeIntensity));
                float3 specColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
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
