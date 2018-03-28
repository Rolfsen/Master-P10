// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32837,y:32424,varname:node_2865,prsc:2|emission-2497-OUT,alpha-7736-A;n:type:ShaderForge.SFN_Multiply,id:6343,x:31997,y:32686,varname:node_6343,prsc:2|A-9487-RGB,B-7736-RGB;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31804,y:32854,ptovrint:True,ptlb:Maintex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:791a8ac1e4d95a446b2e8dfee1a6dab7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9487,x:31804,y:32686,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:node_9487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:1529,x:31190,y:32358,varname:node_1529,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2393,x:30829,y:32364,varname:node_2393,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:876,x:31584,y:32479,ptovrint:False,ptlb:Noise Map,ptin:_NoiseMap,varname:node_876,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-3603-OUT;n:type:ShaderForge.SFN_Color,id:1994,x:31584,y:32296,ptovrint:False,ptlb:Noise Color,ptin:_NoiseColor,varname:node_1994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8196,x:31994,y:32401,varname:node_8196,prsc:2|A-1994-RGB,B-8938-OUT;n:type:ShaderForge.SFN_Slider,id:9917,x:31427,y:32685,ptovrint:False,ptlb:Noise Intensity,ptin:_NoiseIntensity,varname:node_9917,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Clamp01,id:2497,x:32652,y:32523,varname:node_2497,prsc:2|IN-844-OUT;n:type:ShaderForge.SFN_Multiply,id:8938,x:31804,y:32510,varname:node_8938,prsc:2|A-876-RGB,B-9917-OUT;n:type:ShaderForge.SFN_Lerp,id:844,x:32252,y:32686,varname:node_844,prsc:2|A-6343-OUT,B-8196-OUT,T-8938-OUT;n:type:ShaderForge.SFN_Multiply,id:9199,x:31014,y:32519,varname:node_9199,prsc:2|A-2393-T,B-7381-OUT;n:type:ShaderForge.SFN_Slider,id:1261,x:30473,y:32547,ptovrint:False,ptlb:Noise U,ptin:_NoiseU,varname:_NoiseSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:4764,x:30473,y:32651,ptovrint:False,ptlb:Noise V,ptin:_NoiseV,varname:_NoiseSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:3603,x:31385,y:32479,varname:node_3603,prsc:2|A-1529-UVOUT,B-209-OUT;n:type:ShaderForge.SFN_Append,id:7381,x:30829,y:32509,varname:node_7381,prsc:2|A-1261-OUT,B-4764-OUT;n:type:ShaderForge.SFN_Multiply,id:209,x:31190,y:32519,varname:node_209,prsc:2|A-9199-OUT,B-3757-OUT;n:type:ShaderForge.SFN_Slider,id:3757,x:30857,y:32681,ptovrint:False,ptlb:Noise Speed,ptin:_NoiseSpeed,varname:node_3757,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;proporder:9487-7736-876-1994-9917-1261-4764-3757;pass:END;sub:END;*/

Shader "DCC/World Map Tile" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _MainTex ("Maintex", 2D) = "white" {}
        _NoiseMap ("Noise Map", 2D) = "white" {}
        _NoiseColor ("Noise Color", Color) = (1,1,1,1)
        _NoiseIntensity ("Noise Intensity", Range(0, 1)) = 1
        _NoiseU ("Noise U", Range(-1, 1)) = 1
        _NoiseV ("Noise V", Range(-1, 1)) = 1
        _NoiseSpeed ("Noise Speed", Range(0, 1)) = 0.1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _MaintexColor;
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform float4 _NoiseColor;
            uniform float _NoiseIntensity;
            uniform float _NoiseU;
            uniform float _NoiseV;
            uniform float _NoiseSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_2393 = _Time + _TimeEditor;
                float2 node_3603 = (i.uv0+((node_2393.g*float2(_NoiseU,_NoiseV))*_NoiseSpeed));
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(node_3603, _NoiseMap));
                float3 node_8938 = (_NoiseMap_var.rgb*_NoiseIntensity);
                float3 emissive = saturate(lerp((_MaintexColor.rgb*_MainTex_var.rgb),(_NoiseColor.rgb*node_8938),node_8938));
                float3 finalColor = emissive;
                return fixed4(finalColor,_MainTex_var.a);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
