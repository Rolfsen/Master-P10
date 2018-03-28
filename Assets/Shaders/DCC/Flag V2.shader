// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9782,x:32938,y:33696,varname:node_9782,prsc:2|diff-5311-OUT,spec-4516-OUT,gloss-4516-OUT,voffset-116-OUT;n:type:ShaderForge.SFN_Multiply,id:5311,x:32711,y:33573,varname:node_5311,prsc:2|A-7435-RGB,B-8653-RGB;n:type:ShaderForge.SFN_Color,id:8653,x:32518,y:33666,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7435,x:32518,y:33481,ptovrint:True,ptlb:Maintex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9c957cd0262b49241802caed4b6b5486,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5801,x:31718,y:33957,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_WindNoiseTexture3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:4132,x:29595,y:34693,varname:node_4132,prsc:2|A-9553-OUT,B-9553-OUT;n:type:ShaderForge.SFN_Dot,id:2417,x:29866,y:34691,varname:node_2417,prsc:2,dt:0|A-4132-OUT,B-5494-OUT;n:type:ShaderForge.SFN_Code,id:1028,x:30432,y:34640,varname:node_1028,prsc:2,code:ZgBsAG8AYQB0ACAAcABoAGEAcwBlAEMAbwBuAHMAdAAgAD0AIABTAHAAZQBlAGQAIAAqACAAVwBhAHYAZQBsAGUAbgBnAHQAaAA7AAoAZgBsAG8AYQB0ACAAeABWAGEAbAAgAD0AIABTAHQAZQBlAHAAbgBlAHMAcwAgACoAIABBAG0AcABsAGkAdAB1AGQAZQAgACoAIABEAGkAcgBlAGMAdABpAG8AbgBWAGUAYwAuAHgAIAAqACAAYwBvAHMAKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHkAVgBhAGwAIAA9ACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAAcwBpAG4AKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHoAVgBhAGwAIAA9ACAAUwB0AGUAZQBwAG4AZQBzAHMAIAAqACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAARABpAHIAZQBjAHQAaQBvAG4AVgBlAGMALgB5ACAAKgAgAGMAbwBzACgAVwBhAHYAZQBsAGUAbgBnAHQAaAAgACoAIABEAG8AdABQAHIAbwBkACAAKwAgAFQAaQBtAGUAIAAqACAAcABoAGEAcwBlAEMAbwBuAHMAdAApADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAeABWAGEAbAAsACAAeQBWAGEAbAAsACAAegBWAGEAbAApADsACgA=,output:2,fname:GerstnerVertex,width:893,height:190,input:0,input:0,input:0,input:0,input:0,input:0,input:1,input_1_label:Steepness,input_2_label:Amplitude,input_3_label:Wavelength,input_4_label:Speed,input_5_label:Time,input_6_label:DotProd,input_7_label:DirectionVec|A-2245-OUT,B-6811-OUT,C-4719-OUT,D-8717-OUT,E-1681-OUT,F-2417-OUT,G-4132-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6471,x:29424,y:34852,varname:node_6471,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:5494,x:29595,y:34852,varname:node_5494,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6471-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:8717,x:29863,y:34617,ptovrint:False,ptlb:Wind Frequency,ptin:_WindFrequency,varname:node_3186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:4719,x:29862,y:34533,ptovrint:False,ptlb:Wave Spread,ptin:_WaveSpread,varname:node_6222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:6811,x:29862,y:34447,ptovrint:False,ptlb:Wave Height,ptin:_WaveHeight,varname:node_6460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2245,x:29862,y:34362,ptovrint:False,ptlb:Wave Sharpness,ptin:_WaveSharpness,varname:node_9110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Sin,id:613,x:32297,y:34320,varname:node_613,prsc:2|IN-339-OUT;n:type:ShaderForge.SFN_Time,id:1848,x:29875,y:34957,varname:node_1848,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5836,x:29875,y:34883,ptovrint:False,ptlb:Wave Time Offset,ptin:_WaveTimeOffset,varname:node_266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:4697,x:32541,y:34193,varname:node_4697,prsc:2|A-9269-OUT,B-613-OUT;n:type:ShaderForge.SFN_Multiply,id:4565,x:31935,y:33957,varname:node_4565,prsc:2|A-8404-OUT,B-5801-RGB;n:type:ShaderForge.SFN_NormalVector,id:4391,x:31718,y:34125,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:9269,x:32297,y:34179,varname:node_9269,prsc:2|A-4391-OUT,B-4565-OUT;n:type:ShaderForge.SFN_Slider,id:8404,x:31561,y:33853,ptovrint:False,ptlb:Wind Noise Intensity,ptin:_WindNoiseIntensity,varname:node_6158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:1681,x:30082,y:34883,varname:node_1681,prsc:2|A-5836-OUT,B-1848-T;n:type:ShaderForge.SFN_Multiply,id:6218,x:32742,y:34193,varname:node_6218,prsc:2|A-4697-OUT,B-1730-B;n:type:ShaderForge.SFN_VertexColor,id:1730,x:32541,y:34340,varname:node_1730,prsc:2;n:type:ShaderForge.SFN_Multiply,id:116,x:32742,y:34054,varname:node_116,prsc:2|A-2238-OUT,B-6218-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2238,x:32541,y:34054,ptovrint:False,ptlb:Wind Intensity,ptin:_WindIntensity,varname:node_2238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Vector1,id:9553,x:29424,y:34693,varname:node_9553,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:2112,x:31390,y:34318,varname:node_2112,prsc:2|A-8817-OUT,B-5299-OUT,C-7543-OUT;n:type:ShaderForge.SFN_Slider,id:8817,x:31061,y:34318,ptovrint:False,ptlb:X Wind Direction,ptin:_XWindDirection,varname:node_8817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:5299,x:31061,y:34416,ptovrint:False,ptlb:Y Wind Direction,ptin:_YWindDirection,varname:node_5299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7543,x:31061,y:34516,ptovrint:False,ptlb:Z Wind Direction,ptin:_ZWindDirection,varname:node_7543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Normalize,id:9446,x:31573,y:34318,varname:node_9446,prsc:2|IN-2112-OUT;n:type:ShaderForge.SFN_Vector1,id:4516,x:32711,y:33738,varname:node_4516,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:5436,x:30401,y:34371,varname:node_5436,prsc:2|A-8817-OUT,B-5299-OUT;n:type:ShaderForge.SFN_Normalize,id:4511,x:30608,y:34351,varname:node_4511,prsc:2|IN-5436-OUT;n:type:ShaderForge.SFN_Multiply,id:339,x:31855,y:34415,varname:node_339,prsc:2|A-9446-OUT,B-1028-OUT;proporder:8653-7435-5801-2238-8717-8404-8817-5299-7543-4719-6811-2245-5836;pass:END;sub:END;*/

Shader "DCC/Flag V2" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _MainTex ("Maintex", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _WindIntensity ("Wind Intensity", Float ) = 2
        _WindFrequency ("Wind Frequency", Float ) = 0.2
        _WindNoiseIntensity ("Wind Noise Intensity", Range(0, 1)) = 1
        _XWindDirection ("X Wind Direction", Range(-1, 1)) = 1
        _YWindDirection ("Y Wind Direction", Range(-1, 1)) = 0
        _ZWindDirection ("Z Wind Direction", Range(-1, 1)) = 1
        _WaveSpread ("Wave Spread", Float ) = 10
        _WaveHeight ("Wave Height", Float ) = 1
        _WaveSharpness ("Wave Sharpness", Float ) = 1
        _WaveTimeOffset ("Wave Time Offset", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            float3 GerstnerVertex( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WindFrequency;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _WaveTimeOffset;
            uniform float _WindNoiseIntensity;
            uniform float _WindIntensity;
            uniform float _XWindDirection;
            uniform float _YWindDirection;
            uniform float _ZWindDirection;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float3 node_9446 = normalize(float3(_XWindDirection,_YWindDirection,_ZWindDirection));
                float4 node_1848 = _Time;
                float node_9553 = 1.0;
                float2 node_4132 = float2(node_9553,node_9553);
                float3 node_1028 = GerstnerVertex( _WaveSharpness , _WaveHeight , _WaveSpread , _WindFrequency , (_WaveTimeOffset+node_1848.g) , dot(node_4132,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_4132 );
                v.vertex.xyz += (_WindIntensity*(((v.normal*(_WindNoiseIntensity*_Noise_var.rgb))+sin((node_9446*node_1028)))*o.vertexColor.b));
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
                float node_4516 = 0.0;
                float gloss = node_4516;
                float perceptualRoughness = 1.0 - node_4516;
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
                float3 specularColor = node_4516;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_MaintexColor.rgb); // Need this for specular when using metallic
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
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            float3 GerstnerVertex( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WindFrequency;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _WaveTimeOffset;
            uniform float _WindNoiseIntensity;
            uniform float _WindIntensity;
            uniform float _XWindDirection;
            uniform float _YWindDirection;
            uniform float _ZWindDirection;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float3 node_9446 = normalize(float3(_XWindDirection,_YWindDirection,_ZWindDirection));
                float4 node_1848 = _Time;
                float node_9553 = 1.0;
                float2 node_4132 = float2(node_9553,node_9553);
                float3 node_1028 = GerstnerVertex( _WaveSharpness , _WaveHeight , _WaveSpread , _WindFrequency , (_WaveTimeOffset+node_1848.g) , dot(node_4132,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_4132 );
                v.vertex.xyz += (_WindIntensity*(((v.normal*(_WindNoiseIntensity*_Noise_var.rgb))+sin((node_9446*node_1028)))*o.vertexColor.b));
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
                float node_4516 = 0.0;
                float gloss = node_4516;
                float perceptualRoughness = 1.0 - node_4516;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_4516;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_MaintexColor.rgb); // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            float3 GerstnerVertex( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WindFrequency;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _WaveTimeOffset;
            uniform float _WindNoiseIntensity;
            uniform float _WindIntensity;
            uniform float _XWindDirection;
            uniform float _YWindDirection;
            uniform float _ZWindDirection;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float3 node_9446 = normalize(float3(_XWindDirection,_YWindDirection,_ZWindDirection));
                float4 node_1848 = _Time;
                float node_9553 = 1.0;
                float2 node_4132 = float2(node_9553,node_9553);
                float3 node_1028 = GerstnerVertex( _WaveSharpness , _WaveHeight , _WaveSpread , _WindFrequency , (_WaveTimeOffset+node_1848.g) , dot(node_4132,mul(unity_ObjectToWorld, v.vertex).rgb.rb) , node_4132 );
                v.vertex.xyz += (_WindIntensity*(((v.normal*(_WindNoiseIntensity*_Noise_var.rgb))+sin((node_9446*node_1028)))*o.vertexColor.b));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
