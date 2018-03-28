// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:2000,qpre:4,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5841,x:32719,y:32712,varname:node_5841,prsc:2|emission-910-OUT,alpha-6786-OUT;n:type:ShaderForge.SFN_Tex2d,id:4212,x:32237,y:32624,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_4212,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7dd161400a9f52a4caa8127e2afa156a,ntxv:0,isnm:False|UVIN-46-OUT;n:type:ShaderForge.SFN_Multiply,id:910,x:32528,y:32481,varname:node_910,prsc:2|A-1374-RGB,B-4212-RGB;n:type:ShaderForge.SFN_Color,id:1374,x:32237,y:32428,ptovrint:False,ptlb:Cloud Color,ptin:_CloudColor,varname:node_1374,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:6786,x:32402,y:32879,varname:node_6786,prsc:2|A-1195-OUT,B-4212-A,T-941-OUT;n:type:ShaderForge.SFN_Slider,id:941,x:31983,y:33082,ptovrint:False,ptlb:Cloud Intensity,ptin:_CloudIntensity,varname:node_941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:1195,x:32041,y:32951,varname:node_1195,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:2502,x:31841,y:32432,varname:node_2502,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:5817,x:31822,y:32625,varname:node_5817,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-2502-XYZ;n:type:ShaderForge.SFN_Multiply,id:46,x:32029,y:32692,varname:node_46,prsc:2|A-5817-OUT,B-8565-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8565,x:31816,y:32899,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_8565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:4212-1374-941-8565;pass:END;sub:END;*/

Shader "DCC/Clouds" {
    Properties {
        _Clouds ("Clouds", 2D) = "white" {}
        _CloudColor ("Cloud Color", Color) = (0,0,0,1)
        _CloudIntensity ("Cloud Intensity", Range(0, 1)) = 0
        _Tiling ("Tiling", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+2000"
            "RenderType"="Opaque"
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float4 _CloudColor;
            uniform float _CloudIntensity;
            uniform float _Tiling;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_46 = (i.posWorld.rgb.rb*_Tiling);
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(node_46, _Clouds));
                float3 emissive = (_CloudColor.rgb*_Clouds_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,lerp(0.0,_Clouds_var.a,_CloudIntensity));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
