// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:False,mssp:False,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:1,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32744,y:32661,varname:node_3138,prsc:2|diff-3655-RGB,spec-435-OUT,gloss-435-OUT,alpha-1819-OUT;n:type:ShaderForge.SFN_Pi,id:6702,x:30975,y:32928,varname:node_6702,prsc:2;n:type:ShaderForge.SFN_Sin,id:508,x:31582,y:32740,varname:node_508,prsc:2|IN-4790-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7533,x:31761,y:32740,varname:node_7533,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-508-OUT;n:type:ShaderForge.SFN_Min,id:510,x:31932,y:32740,varname:node_510,prsc:2|A-7533-R,B-7533-G;n:type:ShaderForge.SFN_Color,id:3655,x:32462,y:32592,ptovrint:False,ptlb:Fog Color,ptin:_FogColor,varname:node_3655,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:435,x:32462,y:32743,varname:node_435,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7772,x:31220,y:32874,varname:node_7772,prsc:2|A-7897-V,B-6702-OUT;n:type:ShaderForge.SFN_Multiply,id:8420,x:31220,y:32740,varname:node_8420,prsc:2|A-7897-U,B-6702-OUT;n:type:ShaderForge.SFN_TexCoord,id:7897,x:30942,y:32780,varname:node_7897,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:4790,x:31405,y:32740,varname:node_4790,prsc:2|A-8420-OUT,B-7772-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1611,x:32388,y:32921,varname:node_1611,prsc:2|IN-8432-OUT,IMIN-612-OUT,IMAX-7205-OUT,OMIN-612-OUT,OMAX-2432-OUT;n:type:ShaderForge.SFN_Clamp,id:8432,x:32196,y:32815,varname:node_8432,prsc:2|IN-8174-OUT,MIN-612-OUT,MAX-7205-OUT;n:type:ShaderForge.SFN_Vector1,id:612,x:31932,y:32903,varname:node_612,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:3885,x:31606,y:32975,ptovrint:False,ptlb:Fade,ptin:_Fade,varname:node_3885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:2432,x:31932,y:33145,varname:node_2432,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:1819,x:32564,y:32921,varname:node_1819,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-1611-OUT;n:type:ShaderForge.SFN_RemapRange,id:7205,x:31932,y:32975,varname:node_7205,prsc:2,frmn:0,frmx:1,tomn:0.0001,tomx:1|IN-3885-OUT;n:type:ShaderForge.SFN_Power,id:8174,x:31932,y:32543,varname:node_8174,prsc:2|VAL-510-OUT,EXP-3989-OUT;n:type:ShaderForge.SFN_Slider,id:3989,x:31582,y:32542,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_3989,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2000;proporder:3655-3885-3989;pass:END;sub:END;*/

Shader "DCC/Fog Of War Square" {
    Properties {
        _FogColor ("Fog Color", Color) = (0,0,0,1)
        _Fade ("Fade", Range(0, 1)) = 0
        _Size ("Size", Range(0, 2000)) = 1
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
            Blend Zero OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _FogColor;
            uniform float _Fade;
            uniform float _Size;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_435 = 0.0;
                float gloss = node_435;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = node_435;
                float specularMonochrome;
                float3 diffuseColor = _FogColor.rgb; // Need this for specular when using metallic
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
                float node_6702 = 3.141592654;
                float2 node_7533 = sin(float2((i.uv0.r*node_6702),(i.uv0.g*node_6702))).rg;
                float node_612 = 0.0;
                float node_7205 = (_Fade*0.9999+0.0001);
                return fixed4(finalColor,((node_612 + ( (clamp(pow(min(node_7533.r,node_7533.g),_Size),node_612,node_7205) - node_612) * (1.0 - node_612) ) / (node_7205 - node_612))*-1.0+1.0));
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _FogColor;
            uniform float _Fade;
            uniform float _Size;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
                float node_435 = 0.0;
                float gloss = node_435;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = node_435;
                float specularMonochrome;
                float3 diffuseColor = _FogColor.rgb; // Need this for specular when using metallic
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
                float node_6702 = 3.141592654;
                float2 node_7533 = sin(float2((i.uv0.r*node_6702),(i.uv0.g*node_6702))).rg;
                float node_612 = 0.0;
                float node_7205 = (_Fade*0.9999+0.0001);
                return fixed4(finalColor * ((node_612 + ( (clamp(pow(min(node_7533.r,node_7533.g),_Size),node_612,node_7205) - node_612) * (1.0 - node_612) ) / (node_7205 - node_612))*-1.0+1.0),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
