// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:14,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33336,y:32717,varname:node_3138,prsc:2|spec-5030-OUT,gloss-5030-OUT,emission-6569-OUT,alpha-849-OUT;n:type:ShaderForge.SFN_TexCoord,id:4053,x:32226,y:33009,varname:node_4053,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:1182,x:31939,y:32538,ptovrint:False,ptlb:Health,ptin:_Health,varname:node_1182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:2492,x:32391,y:32531,varname:node_2492,prsc:2|A-9139-RGB,B-4599-RGB,T-1182-OUT;n:type:ShaderForge.SFN_Color,id:4599,x:32096,y:32364,ptovrint:False,ptlb:Color Healthy,ptin:_ColorHealthy,varname:node_4599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06135911,c2:0.8088235,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9139,x:32096,y:32197,ptovrint:False,ptlb:Color Dying,ptin:_ColorDying,varname:node_9139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5286,x:32394,y:33009,varname:node_5286,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-4053-U;n:type:ShaderForge.SFN_Add,id:537,x:32568,y:33009,varname:node_537,prsc:2|A-6229-OUT,B-5286-OUT;n:type:ShaderForge.SFN_RemapRange,id:6229,x:32394,y:32822,varname:node_6229,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-1182-OUT;n:type:ShaderForge.SFN_Tex2d,id:4360,x:32391,y:32360,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:06414ef14e65d624e85a173c9f64ac64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5030,x:33146,y:32870,varname:node_5030,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:6254,x:32950,y:32884,ptovrint:False,ptlb:MainTex Overlay,ptin:_MainTexOverlay,varname:node_6254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:396aa899b8c66db4788dc2f8f393344b,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6569,x:33146,y:32717,varname:node_6569,prsc:2|A-6254-RGB,B-7875-OUT,T-849-OUT;n:type:ShaderForge.SFN_Tex2d,id:952,x:32391,y:32156,ptovrint:False,ptlb:MainTex Underlay,ptin:_MainTexUnderlay,varname:node_952,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:06414ef14e65d624e85a173c9f64ac64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7875,x:32950,y:32717,varname:node_7875,prsc:2|A-1990-OUT,B-4653-OUT,T-6514-OUT;n:type:ShaderForge.SFN_Ceil,id:6514,x:32726,y:33009,varname:node_6514,prsc:2|IN-537-OUT;n:type:ShaderForge.SFN_Color,id:2326,x:32391,y:31983,ptovrint:False,ptlb:MainTex Underlay Color,ptin:_MainTexUnderlayColor,varname:node_2326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1990,x:32950,y:32557,varname:node_1990,prsc:2|A-2326-RGB,B-952-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:5058,x:32848,y:33176,varname:node_5058,prsc:2;n:type:ShaderForge.SFN_Transform,id:7900,x:33118,y:33089,varname:node_7900,prsc:2,tffrom:0,tfto:3|IN-5058-XYZ;n:type:ShaderForge.SFN_TexCoord,id:5103,x:31414,y:32757,varname:node_5103,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2381,x:31053,y:32763,varname:node_2381,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5709,x:31808,y:32878,ptovrint:False,ptlb:Noise Map,ptin:_NoiseMap,varname:node_876,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-6256-OUT;n:type:ShaderForge.SFN_Color,id:3322,x:31808,y:32695,ptovrint:False,ptlb:Noise Color,ptin:_NoiseColor,varname:node_1994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:7769,x:31651,y:33084,ptovrint:False,ptlb:Noise Intensity,ptin:_NoiseIntensity,varname:node_9917,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5226185,max:1;n:type:ShaderForge.SFN_Multiply,id:261,x:31238,y:32918,varname:node_261,prsc:2|A-2381-T,B-2786-OUT;n:type:ShaderForge.SFN_Slider,id:1917,x:30697,y:32946,ptovrint:False,ptlb:Noise U,ptin:_NoiseU,varname:_NoiseSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:6972,x:30697,y:33050,ptovrint:False,ptlb:Noise V,ptin:_NoiseV,varname:_NoiseSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:6256,x:31609,y:32878,varname:node_6256,prsc:2|A-5103-UVOUT,B-6364-OUT;n:type:ShaderForge.SFN_Append,id:2786,x:31053,y:32908,varname:node_2786,prsc:2|A-1917-OUT,B-6972-OUT;n:type:ShaderForge.SFN_Multiply,id:6364,x:31414,y:32918,varname:node_6364,prsc:2|A-261-OUT,B-8811-OUT;n:type:ShaderForge.SFN_Slider,id:8811,x:31081,y:33080,ptovrint:False,ptlb:Noise Speed,ptin:_NoiseSpeed,varname:node_3757,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:8438,x:32028,y:32909,varname:node_8438,prsc:2|A-5709-RGB,B-7769-OUT;n:type:ShaderForge.SFN_Multiply,id:3463,x:32028,y:32759,varname:node_3463,prsc:2|A-3322-RGB,B-8438-OUT;n:type:ShaderForge.SFN_Lerp,id:4653,x:32624,y:32649,varname:node_4653,prsc:2|A-3981-OUT,B-3463-OUT,T-8438-OUT;n:type:ShaderForge.SFN_Multiply,id:3981,x:32563,y:32360,varname:node_3981,prsc:2|A-4360-RGB,B-2492-OUT;n:type:ShaderForge.SFN_Lerp,id:849,x:33118,y:33332,varname:node_849,prsc:2|A-4360-A,B-6254-A,T-6254-A;proporder:1182-4599-9139-6254-4360-2326-952-5709-3322-7769-1917-6972-8811;pass:END;sub:END;*/

Shader "DCC/Bar Shader" {
    Properties {
        _Health ("Health", Range(0, 1)) = 1
        _ColorHealthy ("Color Healthy", Color) = (0.06135911,0.8088235,0,1)
        _ColorDying ("Color Dying", Color) = (1,0,0,1)
        _MainTexOverlay ("MainTex Overlay", 2D) = "black" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _MainTexUnderlayColor ("MainTex Underlay Color", Color) = (1,1,1,1)
        _MainTexUnderlay ("MainTex Underlay", 2D) = "white" {}
        _NoiseMap ("Noise Map", 2D) = "white" {}
        _NoiseColor ("Noise Color", Color) = (1,1,1,1)
        _NoiseIntensity ("Noise Intensity", Range(0, 1)) = 0.5226185
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
            ColorMask RGB
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Health;
            uniform float4 _ColorHealthy;
            uniform float4 _ColorDying;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MainTexOverlay; uniform float4 _MainTexOverlay_ST;
            uniform sampler2D _MainTexUnderlay; uniform float4 _MainTexUnderlay_ST;
            uniform float4 _MainTexUnderlayColor;
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
                float4 _MainTexOverlay_var = tex2D(_MainTexOverlay,TRANSFORM_TEX(i.uv0, _MainTexOverlay));
                float4 _MainTexUnderlay_var = tex2D(_MainTexUnderlay,TRANSFORM_TEX(i.uv0, _MainTexUnderlay));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_2381 = _Time + _TimeEditor;
                float2 node_6256 = (i.uv0+((node_2381.g*float2(_NoiseU,_NoiseV))*_NoiseSpeed));
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(node_6256, _NoiseMap));
                float3 node_8438 = (_NoiseMap_var.rgb*_NoiseIntensity);
                float node_849 = lerp(_MainTex_var.a,_MainTexOverlay_var.a,_MainTexOverlay_var.a);
                float3 emissive = lerp(_MainTexOverlay_var.rgb,lerp((_MainTexUnderlayColor.rgb*_MainTexUnderlay_var.rgb),lerp((_MainTex_var.rgb*lerp(_ColorDying.rgb,_ColorHealthy.rgb,_Health)),(_NoiseColor.rgb*node_8438),node_8438),ceil(((_Health*1.0+-1.0)+(i.uv0.r*-1.0+1.0)))),node_849);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_849);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
