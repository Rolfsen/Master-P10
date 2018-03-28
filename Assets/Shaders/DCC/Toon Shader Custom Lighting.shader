// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32800,y:32723,varname:node_2865,prsc:2|emission-2327-OUT,custl-6923-OUT,olwid-1456-OUT,olcol-5100-OUT;n:type:ShaderForge.SFN_Tex2d,id:710,x:31885,y:32663,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:80513a36fbf0c5145b47ce99ce18164b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4292,x:31885,y:32501,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:node_4292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3751,x:32156,y:32662,varname:node_3751,prsc:2|A-4292-RGB,B-710-RGB;n:type:ShaderForge.SFN_AmbientLight,id:4393,x:32156,y:32483,varname:node_4393,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2327,x:32342,y:32662,varname:node_2327,prsc:2|A-4393-RGB,B-3751-OUT;n:type:ShaderForge.SFN_LightVector,id:9555,x:31115,y:32939,varname:node_9555,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:4329,x:31115,y:33247,varname:node_4329,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4800,x:31115,y:33075,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3177,x:31335,y:32939,varname:node_3177,prsc:2,dt:1|A-9555-OUT,B-4800-OUT;n:type:ShaderForge.SFN_Dot,id:6405,x:31338,y:33247,varname:node_6405,prsc:2,dt:1|A-4800-OUT,B-4329-XYZ;n:type:ShaderForge.SFN_Slider,id:5064,x:31338,y:33126,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_5064,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Multiply,id:7576,x:31557,y:32939,varname:node_7576,prsc:2|A-3177-OUT,B-5064-OUT;n:type:ShaderForge.SFN_Add,id:5867,x:31949,y:32939,varname:node_5867,prsc:2|A-5039-OUT,B-2842-RGB;n:type:ShaderForge.SFN_Power,id:5039,x:31750,y:32939,varname:node_5039,prsc:2|VAL-7576-OUT,EXP-5064-OUT;n:type:ShaderForge.SFN_Multiply,id:6923,x:32346,y:32939,varname:node_6923,prsc:2|A-710-RGB,B-5867-OUT,C-7670-RGB;n:type:ShaderForge.SFN_LightColor,id:7670,x:31949,y:33278,varname:node_7670,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:2842,x:31949,y:33102,ptovrint:False,ptlb:Toon Ramp,ptin:_ToonRamp,varname:node_2842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5993-OUT;n:type:ShaderForge.SFN_Append,id:5993,x:31754,y:33247,varname:node_5993,prsc:2|A-2745-OUT,B-2745-OUT;n:type:ShaderForge.SFN_Power,id:2745,x:31557,y:33247,varname:node_2745,prsc:2|VAL-6405-OUT,EXP-5288-OUT;n:type:ShaderForge.SFN_Multiply,id:5100,x:32456,y:33195,varname:node_5100,prsc:2|A-710-RGB,B-5285-RGB;n:type:ShaderForge.SFN_Color,id:5285,x:32247,y:33195,ptovrint:False,ptlb:Line Color,ptin:_LineColor,varname:node_5285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1456,x:32358,y:33095,ptovrint:False,ptlb:Outline Width,ptin:_OutlineWidth,varname:node_1456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Vector1,id:5288,x:31463,y:33463,varname:node_5288,prsc:2,v1:0.5;proporder:710-4292-5064-2842-1456-5285;pass:END;sub:END;*/

Shader "DCC/Toon Shader Custom Lighting" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _Highlight ("Highlight", Range(0, 10)) = 2
        _ToonRamp ("Toon Ramp", 2D) = "white" {}
        _OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
        _LineColor ("Line Color", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _LineColor;
            uniform float _OutlineWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + normalize(v.vertex)*_OutlineWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                return fixed4((_Maintex_var.rgb*_LineColor.rgb),0);
            }
            ENDCG
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _MaintexColor;
            uniform float _Highlight;
            uniform sampler2D _ToonRamp; uniform float4 _ToonRamp_ST;
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*(_MaintexColor.rgb*_Maintex_var.rgb));
                float node_2745 = pow(max(0,dot(i.normalDir,_WorldSpaceCameraPos)),0.5);
                float2 node_5993 = float2(node_2745,node_2745);
                float4 _ToonRamp_var = tex2D(_ToonRamp,TRANSFORM_TEX(node_5993, _ToonRamp));
                float3 finalColor = emissive + (_Maintex_var.rgb*(pow((max(0,dot(lightDirection,i.normalDir))*_Highlight),_Highlight)+_ToonRamp_var.rgb)*_LightColor0.rgb);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _MaintexColor;
            uniform float _Highlight;
            uniform sampler2D _ToonRamp; uniform float4 _ToonRamp_ST;
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float node_2745 = pow(max(0,dot(i.normalDir,_WorldSpaceCameraPos)),0.5);
                float2 node_5993 = float2(node_2745,node_2745);
                float4 _ToonRamp_var = tex2D(_ToonRamp,TRANSFORM_TEX(node_5993, _ToonRamp));
                float3 finalColor = (_Maintex_var.rgb*(pow((max(0,dot(lightDirection,i.normalDir))*_Highlight),_Highlight)+_ToonRamp_var.rgb)*_LightColor0.rgb);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _MaintexColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                o.Emission = (UNITY_LIGHTMODEL_AMBIENT.rgb*(_MaintexColor.rgb*_Maintex_var.rgb));
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
