// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9523-OUT,alpha-7404-VOUT;n:type:ShaderForge.SFN_VertexColor,id:4560,x:31574,y:32933,varname:node_4560,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5719,x:32141,y:32974,varname:node_5719,prsc:2|A-4560-G,B-8938-OUT;n:type:ShaderForge.SFN_Slider,id:8938,x:31817,y:33033,ptovrint:False,ptlb:Discovered Transparency,ptin:_DiscoveredTransparency,varname:node_8938,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:842,x:32383,y:32931,varname:node_842,prsc:2|A-4560-R,B-5719-OUT,C-9463-OUT;n:type:ShaderForge.SFN_RgbToHsv,id:7404,x:32542,y:32931,varname:node_7404,prsc:2|IN-842-OUT;n:type:ShaderForge.SFN_Slider,id:2584,x:31817,y:33171,ptovrint:False,ptlb:Visible,ptin:_Visible,varname:node_2584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9463,x:32141,y:33108,varname:node_9463,prsc:2|A-4560-B,B-2584-OUT;n:type:ShaderForge.SFN_Color,id:5614,x:32141,y:32568,ptovrint:False,ptlb:Fog Color,ptin:_FogColor,varname:node_5614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3800,x:31974,y:32666,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_3800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9523,x:32542,y:32809,varname:node_9523,prsc:2|A-5614-RGB,B-3240-OUT,T-4560-R;n:type:ShaderForge.SFN_Multiply,id:3240,x:32159,y:32782,varname:node_3240,prsc:2|A-3800-RGB,B-2265-OUT;n:type:ShaderForge.SFN_Slider,id:2265,x:31817,y:32866,ptovrint:False,ptlb:Maintex Transparency,ptin:_MaintexTransparency,varname:node_2265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:8938-2584-5614-3800-2265;pass:END;sub:END;*/

Shader "DCC/Fog Of War Vertex Color" {
    Properties {
        _DiscoveredTransparency ("Discovered Transparency", Range(0, 1)) = 0.5
        _Visible ("Visible", Range(0, 1)) = 0
        _FogColor ("Fog Color", Color) = (0,0,0,1)
        _Maintex ("Maintex", 2D) = "black" {}
        _MaintexTransparency ("Maintex Transparency", Range(0, 1)) = 0
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _DiscoveredTransparency;
            uniform float _Visible;
            uniform float4 _FogColor;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _MaintexTransparency;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 emissive = lerp(_FogColor.rgb,(_Maintex_var.rgb*_MaintexTransparency),i.vertexColor.r);
                float3 finalColor = emissive;
                float node_842 = (i.vertexColor.r+(i.vertexColor.g*_DiscoveredTransparency)+(i.vertexColor.b*_Visible));
                float4 node_7404_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_7404_p = lerp(float4(float4(node_842,node_842,node_842,node_842).zy, node_7404_k.wz), float4(float4(node_842,node_842,node_842,node_842).yz, node_7404_k.xy), step(float4(node_842,node_842,node_842,node_842).z, float4(node_842,node_842,node_842,node_842).y));
                float4 node_7404_q = lerp(float4(node_7404_p.xyw, float4(node_842,node_842,node_842,node_842).x), float4(float4(node_842,node_842,node_842,node_842).x, node_7404_p.yzx), step(node_7404_p.x, float4(node_842,node_842,node_842,node_842).x));
                float node_7404_d = node_7404_q.x - min(node_7404_q.w, node_7404_q.y);
                float node_7404_e = 1.0e-10;
                float3 node_7404 = float3(abs(node_7404_q.z + (node_7404_q.w - node_7404_q.y) / (6.0 * node_7404_d + node_7404_e)), node_7404_d / (node_7404_q.x + node_7404_e), node_7404_q.x);;
                return fixed4(finalColor,node_7404.b);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
