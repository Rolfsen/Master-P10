// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-1540-OUT,spec-9440-OUT,gloss-1813-OUT,emission-2361-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32010,y:32784,varname:node_6343,prsc:2|A-7305-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31817,y:32876,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Tex2d,id:9122,x:31308,y:31847,ptovrint:False,ptlb:Curvature Map,ptin:_CurvatureMap,varname:node_9122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4994,x:32056,y:31732,varname:node_4994,prsc:2|A-2287-OUT,B-9122-R;n:type:ShaderForge.SFN_Slider,id:4936,x:31308,y:31740,ptovrint:False,ptlb:Maintex Curvature Higlight Intensity,ptin:_MaintexCurvatureHiglightIntensity,varname:node_4936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Multiply,id:9102,x:31689,y:32031,varname:node_9102,prsc:2|A-4936-OUT,B-5281-OUT;n:type:ShaderForge.SFN_Slider,id:5891,x:31308,y:31646,ptovrint:False,ptlb:Maintex Curvature Darken Intensity,ptin:_MaintexCurvatureDarkenIntensity,varname:_MaintexCurvatureIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_Abs,id:6849,x:30081,y:32415,varname:node_6849,prsc:2|IN-8734-OUT;n:type:ShaderForge.SFN_NormalVector,id:8734,x:29875,y:32415,prsc:2,pt:False;n:type:ShaderForge.SFN_Append,id:9512,x:30805,y:32543,varname:node_9512,prsc:2|A-5196-G,B-5196-B;n:type:ShaderForge.SFN_Append,id:8117,x:30805,y:32755,varname:node_8117,prsc:2|A-5196-B,B-5196-R;n:type:ShaderForge.SFN_Append,id:269,x:30973,y:32974,varname:node_269,prsc:2|A-3722-OUT,B-5196-G;n:type:ShaderForge.SFN_FragmentPosition,id:337,x:30405,y:32755,varname:node_337,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3680,x:31188,y:32543,varname:node_6671,prsc:2,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:2,isnm:False|UVIN-5629-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:2602,x:31188,y:32755,varname:node_9365,prsc:2,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:0,isnm:False|UVIN-2126-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2d,id:3619,x:31188,y:32974,varname:node_9943,prsc:2,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:0,isnm:False|UVIN-269-OUT,TEX-9932-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9932,x:30973,y:33149,ptovrint:False,ptlb:Maintex Side,ptin:_MaintexSide,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bdba4361f6f1c4c43a7d6f3afc5c2d83,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7914,x:29924,y:32320,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:267,x:30460,y:32287,varname:node_267,prsc:2|VAL-6849-OUT,EXP-7914-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9197,x:30081,y:32118,varname:node_9197,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-267-OUT;n:type:ShaderForge.SFN_Add,id:9937,x:30264,y:31996,varname:node_9937,prsc:2|A-9197-R,B-9197-G;n:type:ShaderForge.SFN_Add,id:4487,x:30460,y:32125,varname:node_4487,prsc:2|A-9937-OUT,B-9197-B;n:type:ShaderForge.SFN_Divide,id:7053,x:30677,y:32125,varname:node_7053,prsc:2|A-267-OUT,B-4487-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5380,x:30860,y:32125,varname:node_5380,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7053-OUT;n:type:ShaderForge.SFN_Multiply,id:956,x:31410,y:32543,varname:node_956,prsc:2|A-5380-R,B-3680-RGB;n:type:ShaderForge.SFN_Multiply,id:3538,x:31410,y:32755,varname:node_3538,prsc:2|A-5380-G,B-2602-RGB;n:type:ShaderForge.SFN_Multiply,id:6240,x:31410,y:32974,varname:node_6240,prsc:2|A-5380-B,B-3619-RGB;n:type:ShaderForge.SFN_Add,id:1745,x:31644,y:32547,varname:node_1745,prsc:2|A-956-OUT,B-3538-OUT;n:type:ShaderForge.SFN_Add,id:7305,x:31823,y:32709,varname:node_7305,prsc:2|A-1745-OUT,B-6240-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5196,x:30576,y:32755,varname:node_5196,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-337-XYZ;n:type:ShaderForge.SFN_Slider,id:9440,x:32250,y:32779,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_9440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:5401,x:31308,y:32031,ptovrint:False,ptlb:Highlight Color,ptin:_HighlightColor,varname:node_5401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:5281,x:31507,y:32031,varname:node_5281,prsc:2|A-9122-G,B-5401-RGB;n:type:ShaderForge.SFN_Lerp,id:3083,x:32230,y:32555,varname:node_3083,prsc:2|A-6343-OUT,B-6631-OUT,T-1682-OUT;n:type:ShaderForge.SFN_Multiply,id:1682,x:31865,y:31893,varname:node_1682,prsc:2|A-4936-OUT,B-9122-G;n:type:ShaderForge.SFN_Multiply,id:6631,x:31865,y:32031,varname:node_6631,prsc:2|A-9102-OUT,B-500-OUT;n:type:ShaderForge.SFN_Vector1,id:500,x:31865,y:32182,varname:node_500,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:2361,x:32209,y:33577,varname:node_2361,prsc:2|A-7636-OUT,B-5734-OUT;n:type:ShaderForge.SFN_Slider,id:5734,x:31821,y:33889,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_5734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Color,id:8877,x:31836,y:33705,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_8877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:2287,x:31861,y:31732,varname:node_2287,prsc:2|A-5891-OUT,B-7931-OUT;n:type:ShaderForge.SFN_Vector1,id:7931,x:31465,y:31562,varname:node_7931,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6358,x:32245,y:31732,varname:node_6358,prsc:2|A-4994-OUT,B-500-OUT;n:type:ShaderForge.SFN_Lerp,id:1540,x:32453,y:32555,varname:node_1540,prsc:2|A-3083-OUT,B-6358-OUT,T-9040-OUT;n:type:ShaderForge.SFN_Multiply,id:9040,x:32245,y:31601,varname:node_9040,prsc:2|A-5891-OUT,B-9122-R;n:type:ShaderForge.SFN_ComponentMask,id:5629,x:30973,y:32543,varname:node_5629,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-9512-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2126,x:30973,y:32755,varname:node_2126,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-8117-OUT;n:type:ShaderForge.SFN_Negate,id:3722,x:30805,y:32974,varname:node_3722,prsc:2|IN-5196-R;n:type:ShaderForge.SFN_Multiply,id:8509,x:31416,y:33337,varname:node_8509,prsc:2|A-5380-R,B-8344-RGB;n:type:ShaderForge.SFN_Multiply,id:517,x:31416,y:33549,varname:node_517,prsc:2|A-5380-G,B-6344-RGB;n:type:ShaderForge.SFN_Multiply,id:346,x:31416,y:33768,varname:node_346,prsc:2|A-5380-B,B-9100-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:1779,x:30483,y:33322,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_1779,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5691,x:31657,y:33340,varname:node_5691,prsc:2|A-8509-OUT,B-517-OUT;n:type:ShaderForge.SFN_Add,id:2339,x:31836,y:33502,varname:node_2339,prsc:2|A-5691-OUT,B-346-OUT;n:type:ShaderForge.SFN_Multiply,id:7636,x:32023,y:33577,varname:node_7636,prsc:2|A-2339-OUT,B-8877-RGB;n:type:ShaderForge.SFN_Tex2d,id:8344,x:31188,y:33352,varname:node_8344,prsc:2,ntxv:0,isnm:False|UVIN-5629-OUT,TEX-1779-TEX;n:type:ShaderForge.SFN_Tex2d,id:6344,x:31188,y:33567,varname:_node_8344_copy,prsc:2,ntxv:0,isnm:False|UVIN-2126-OUT,TEX-1779-TEX;n:type:ShaderForge.SFN_Tex2d,id:9100,x:31188,y:33768,varname:_node_8344_copy_copy,prsc:2,ntxv:0,isnm:False|UVIN-269-OUT,TEX-1779-TEX;proporder:6665-1813-9122-4936-5891-9932-7914-9440-5401-5734-8877-1779;pass:END;sub:END;*/

Shader "DCC/Rock Shader Triplanar Simple" {
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
                float2 node_5629 = float2(node_5196.g,node_5196.b).gr;
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5629, _MaintexSide));
                float2 node_2126 = float2(node_5196.b,node_5196.r).gr;
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_2126, _MaintexSide));
                float2 node_269 = float2((-1*node_5196.r),node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float3 diffuseColor = lerp(lerp(((((node_5380.r*node_6671.rgb)+(node_5380.g*node_9365.rgb))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r)); // Need this for specular when using metallic
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
                float4 node_8344 = tex2D(_EmissionMap,TRANSFORM_TEX(node_5629, _EmissionMap));
                float4 _node_8344_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_2126, _EmissionMap));
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
                float2 node_5629 = float2(node_5196.g,node_5196.b).gr;
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5629, _MaintexSide));
                float2 node_2126 = float2(node_5196.b,node_5196.r).gr;
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_2126, _MaintexSide));
                float2 node_269 = float2((-1*node_5196.r),node_5196.g);
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float3 diffuseColor = lerp(lerp(((((node_5380.r*node_6671.rgb)+(node_5380.g*node_9365.rgb))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r)); // Need this for specular when using metallic
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
                float2 node_5629 = float2(node_5196.g,node_5196.b).gr;
                float4 node_8344 = tex2D(_EmissionMap,TRANSFORM_TEX(node_5629, _EmissionMap));
                float2 node_2126 = float2(node_5196.b,node_5196.r).gr;
                float4 _node_8344_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_2126, _EmissionMap));
                float2 node_269 = float2((-1*node_5196.r),node_5196.g);
                float4 _node_8344_copy_copy = tex2D(_EmissionMap,TRANSFORM_TEX(node_269, _EmissionMap));
                o.Emission = (((((node_5380.r*node_8344.rgb)+(node_5380.g*_node_8344_copy.rgb))+(node_5380.b*_node_8344_copy_copy.rgb))*_EmissionColor.rgb)*_EmissionIntensity);
                
                float4 node_6671 = tex2D(_MaintexSide,TRANSFORM_TEX(node_5629, _MaintexSide));
                float4 node_9365 = tex2D(_MaintexSide,TRANSFORM_TEX(node_2126, _MaintexSide));
                float4 node_9943 = tex2D(_MaintexSide,TRANSFORM_TEX(node_269, _MaintexSide));
                float4 _CurvatureMap_var = tex2D(_CurvatureMap,TRANSFORM_TEX(i.uv0, _CurvatureMap));
                float node_500 = 5.0;
                float node_6358 = (((_MaintexCurvatureDarkenIntensity*0.0)*_CurvatureMap_var.r)*node_500);
                float3 diffColor = lerp(lerp(((((node_5380.r*node_6671.rgb)+(node_5380.g*node_9365.rgb))+(node_5380.b*node_9943.rgb))*_MaintexColor.rgb),((_MaintexCurvatureHiglightIntensity*(_CurvatureMap_var.g*_HighlightColor.rgb))*node_500),(_MaintexCurvatureHiglightIntensity*_CurvatureMap_var.g)),float3(node_6358,node_6358,node_6358),(_MaintexCurvatureDarkenIntensity*_CurvatureMap_var.r));
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
