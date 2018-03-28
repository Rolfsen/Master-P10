// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:2,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33336,y:32717,varname:node_3138,prsc:2|spec-5030-OUT,gloss-5030-OUT,emission-6569-OUT;n:type:ShaderForge.SFN_TexCoord,id:4053,x:32226,y:33009,varname:node_4053,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:1182,x:32132,y:32724,ptovrint:False,ptlb:Health,ptin:_Health,varname:node_1182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:2492,x:32584,y:32717,varname:node_2492,prsc:2|A-9139-RGB,B-4599-RGB,T-1182-OUT;n:type:ShaderForge.SFN_Color,id:4599,x:32289,y:32550,ptovrint:False,ptlb:Color Healthy,ptin:_ColorHealthy,varname:node_4599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06135911,c2:0.8088235,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9139,x:32289,y:32383,ptovrint:False,ptlb:Color Dying,ptin:_ColorDying,varname:node_9139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:1228,x:31552,y:33943,varname:node_1228,prsc:2|A-5245-OUT;n:type:ShaderForge.SFN_TexCoord,id:4604,x:31143,y:33691,varname:node_4604,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5245,x:31363,y:33943,varname:node_5245,prsc:2|IN-4604-UVOUT,IMIN-8315-OUT,IMAX-1675-OUT,OMIN-9879-OUT,OMAX-8424-OUT;n:type:ShaderForge.SFN_Slider,id:8315,x:30986,y:33909,ptovrint:False,ptlb:Min Opacity Gradient Input_copy,ptin:_MinOpacityGradientInput_copy,varname:_MinOpacityGradientInput_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1675,x:30986,y:34006,ptovrint:False,ptlb:Max Opacity Gradient Input_copy,ptin:_MaxOpacityGradientInput_copy,varname:_MaxOpacityGradientInput_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9060659,max:1;n:type:ShaderForge.SFN_Slider,id:8424,x:30986,y:34205,ptovrint:False,ptlb:Max Opacity Gradient Output_copy,ptin:_MaxOpacityGradientOutput_copy,varname:_MaxOpacityGradientOutput_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9879,x:30986,y:34107,ptovrint:False,ptlb:Min Opacity Gradient Output_copy,ptin:_MinOpacityGradientOutput_copy,varname:_MinOpacityGradientOutput_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3282,x:31616,y:34007,varname:node_3282,prsc:2|A-2383-OUT;n:type:ShaderForge.SFN_TexCoord,id:2159,x:31207,y:33755,varname:node_2159,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2383,x:31427,y:34007,varname:node_2383,prsc:2|IN-2159-UVOUT,IMIN-9069-OUT,IMAX-1074-OUT,OMIN-4641-OUT,OMAX-7789-OUT;n:type:ShaderForge.SFN_Slider,id:9069,x:31050,y:33973,ptovrint:False,ptlb:Min Opacity Gradient Input_copy_copy,ptin:_MinOpacityGradientInput_copy_copy,varname:_MinOpacityGradientInput_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1074,x:31050,y:34070,ptovrint:False,ptlb:Max Opacity Gradient Input_copy_copy,ptin:_MaxOpacityGradientInput_copy_copy,varname:_MaxOpacityGradientInput_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9060659,max:1;n:type:ShaderForge.SFN_Slider,id:7789,x:31050,y:34269,ptovrint:False,ptlb:Max Opacity Gradient Output_copy_copy,ptin:_MaxOpacityGradientOutput_copy_copy,varname:_MaxOpacityGradientOutput_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:4641,x:31050,y:34171,ptovrint:False,ptlb:Min Opacity Gradient Output_copy_copy,ptin:_MinOpacityGradientOutput_copy_copy,varname:_MinOpacityGradientOutput_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6598,x:31680,y:34071,varname:node_6598,prsc:2|A-9101-OUT;n:type:ShaderForge.SFN_TexCoord,id:9259,x:31271,y:33819,varname:node_9259,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9101,x:31491,y:34071,varname:node_9101,prsc:2|IN-9259-UVOUT,IMIN-9209-OUT,IMAX-2888-OUT,OMIN-7009-OUT,OMAX-8369-OUT;n:type:ShaderForge.SFN_Slider,id:9209,x:31114,y:34037,ptovrint:False,ptlb:Min Opacity Gradient Input_copy_copy_copy,ptin:_MinOpacityGradientInput_copy_copy_copy,varname:_MinOpacityGradientInput_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2888,x:31114,y:34134,ptovrint:False,ptlb:Max Opacity Gradient Input_copy_copy_copy,ptin:_MaxOpacityGradientInput_copy_copy_copy,varname:_MaxOpacityGradientInput_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9060659,max:1;n:type:ShaderForge.SFN_Slider,id:8369,x:31114,y:34333,ptovrint:False,ptlb:Max Opacity Gradient Output_copy_copy_copy,ptin:_MaxOpacityGradientOutput_copy_copy_copy,varname:_MaxOpacityGradientOutput_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:7009,x:31114,y:34235,ptovrint:False,ptlb:Min Opacity Gradient Output_copy_copy_copy,ptin:_MinOpacityGradientOutput_copy_copy_copy,varname:_MinOpacityGradientOutput_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2629,x:31744,y:34135,varname:node_2629,prsc:2|A-441-OUT;n:type:ShaderForge.SFN_TexCoord,id:4938,x:31335,y:33883,varname:node_4938,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:441,x:31555,y:34135,varname:node_441,prsc:2|IN-4938-UVOUT,IMIN-1786-OUT,IMAX-8920-OUT,OMIN-9451-OUT,OMAX-8205-OUT;n:type:ShaderForge.SFN_Slider,id:1786,x:31178,y:34101,ptovrint:False,ptlb:Min Opacity Gradient Input_copy_copy_copy_copy,ptin:_MinOpacityGradientInput_copy_copy_copy_copy,varname:_MinOpacityGradientInput_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8920,x:31178,y:34198,ptovrint:False,ptlb:Max Opacity Gradient Input_copy_copy_copy_copy,ptin:_MaxOpacityGradientInput_copy_copy_copy_copy,varname:_MaxOpacityGradientInput_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9060659,max:1;n:type:ShaderForge.SFN_Slider,id:8205,x:31178,y:34397,ptovrint:False,ptlb:Max Opacity Gradient Output_copy_copy_copy_copy,ptin:_MaxOpacityGradientOutput_copy_copy_copy_copy,varname:_MaxOpacityGradientOutput_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9451,x:31178,y:34299,ptovrint:False,ptlb:Min Opacity Gradient Output_copy_copy_copy_copy,ptin:_MinOpacityGradientOutput_copy_copy_copy_copy,varname:_MinOpacityGradientOutput_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:19,x:31808,y:34199,varname:node_19,prsc:2|A-7772-OUT;n:type:ShaderForge.SFN_TexCoord,id:3490,x:31399,y:33947,varname:node_3490,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7772,x:31619,y:34199,varname:node_7772,prsc:2|IN-3490-UVOUT,IMIN-4511-OUT,IMAX-9222-OUT,OMIN-7969-OUT,OMAX-154-OUT;n:type:ShaderForge.SFN_Slider,id:4511,x:31242,y:34165,ptovrint:False,ptlb:Min Opacity Gradient Input_copy_copy_copy_copy_copy,ptin:_MinOpacityGradientInput_copy_copy_copy_copy_copy,varname:_MinOpacityGradientInput_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9222,x:31242,y:34262,ptovrint:False,ptlb:Max Opacity Gradient Input_copy_copy_copy_copy_copy,ptin:_MaxOpacityGradientInput_copy_copy_copy_copy_copy,varname:_MaxOpacityGradientInput_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9060659,max:1;n:type:ShaderForge.SFN_Slider,id:154,x:31242,y:34461,ptovrint:False,ptlb:Max Opacity Gradient Output_copy_copy_copy_copy_copy,ptin:_MaxOpacityGradientOutput_copy_copy_copy_copy_copy,varname:_MaxOpacityGradientOutput_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:7969,x:31242,y:34363,ptovrint:False,ptlb:Min Opacity Gradient Output_copy_copy_copy_copy_copy,ptin:_MinOpacityGradientOutput_copy_copy_copy_copy_copy,varname:_MinOpacityGradientOutput_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:5286,x:32394,y:33009,varname:node_5286,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-4053-U;n:type:ShaderForge.SFN_Add,id:537,x:32568,y:33009,varname:node_537,prsc:2|A-6229-OUT,B-5286-OUT;n:type:ShaderForge.SFN_RemapRange,id:6229,x:32394,y:32822,varname:node_6229,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-1182-OUT;n:type:ShaderForge.SFN_Tex2d,id:4360,x:32584,y:32546,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:06414ef14e65d624e85a173c9f64ac64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5030,x:33146,y:32870,varname:node_5030,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8925,x:32756,y:32717,varname:node_8925,prsc:2|A-4360-RGB,B-2492-OUT;n:type:ShaderForge.SFN_Tex2d,id:6254,x:32950,y:32884,ptovrint:False,ptlb:MainTex Overlay,ptin:_MainTexOverlay,varname:node_6254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:396aa899b8c66db4788dc2f8f393344b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6569,x:33146,y:32717,varname:node_6569,prsc:2|A-7875-OUT,B-6254-RGB,T-6254-A;n:type:ShaderForge.SFN_Tex2d,id:952,x:32584,y:32342,ptovrint:False,ptlb:MainTex Underlay,ptin:_MainTexUnderlay,varname:node_952,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:06414ef14e65d624e85a173c9f64ac64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7875,x:32950,y:32717,varname:node_7875,prsc:2|A-1990-OUT,B-8925-OUT,T-6514-OUT;n:type:ShaderForge.SFN_Ceil,id:6514,x:32726,y:33009,varname:node_6514,prsc:2|IN-537-OUT;n:type:ShaderForge.SFN_Color,id:2326,x:32584,y:32169,ptovrint:False,ptlb:MainTex Underlay Color,ptin:_MainTexUnderlayColor,varname:node_2326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1990,x:32950,y:32557,varname:node_1990,prsc:2|A-2326-RGB,B-952-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:5058,x:32848,y:33176,varname:node_5058,prsc:2;n:type:ShaderForge.SFN_Transform,id:7900,x:33118,y:33089,varname:node_7900,prsc:2,tffrom:0,tfto:3|IN-5058-XYZ;proporder:1182-4599-9139-6254-4360-2326-952;pass:END;sub:END;*/

Shader "DCC/Billboard Bar Shader" {
    Properties {
        _Health ("Health", Range(0, 1)) = 0
        _ColorHealthy ("Color Healthy", Color) = (0.06135911,0.8088235,0,1)
        _ColorDying ("Color Dying", Color) = (1,0,0,1)
        _MainTexOverlay ("MainTex Overlay", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _MainTexUnderlayColor ("MainTex Underlay Color", Color) = (1,1,1,1)
        _MainTexUnderlay ("MainTex Underlay", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _Health;
            uniform float4 _ColorHealthy;
            uniform float4 _ColorDying;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MainTexOverlay; uniform float4 _MainTexOverlay_ST;
            uniform sampler2D _MainTexUnderlay; uniform float4 _MainTexUnderlay_ST;
            uniform float4 _MainTexUnderlayColor;
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
                float4x4 bbmv = UNITY_MATRIX_MV;
                bbmv._m00 = -1.0/length(unity_WorldToObject[0].xyz);
                bbmv._m10 = 0.0f;
                bbmv._m20 = 0.0f;
                bbmv._m01 = 0.0f;
                bbmv._m11 = -1.0/length(unity_WorldToObject[1].xyz);
                bbmv._m21 = 0.0f;
                bbmv._m02 = 0.0f;
                bbmv._m12 = 0.0f;
                bbmv._m22 = -1.0/length(unity_WorldToObject[2].xyz);
                o.pos = mul( UNITY_MATRIX_P, mul( bbmv, v.vertex ));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _MainTexUnderlay_var = tex2D(_MainTexUnderlay,TRANSFORM_TEX(i.uv0, _MainTexUnderlay));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _MainTexOverlay_var = tex2D(_MainTexOverlay,TRANSFORM_TEX(i.uv0, _MainTexOverlay));
                float3 emissive = lerp(lerp((_MainTexUnderlayColor.rgb*_MainTexUnderlay_var.rgb),(_MainTex_var.rgb*lerp(_ColorDying.rgb,_ColorHealthy.rgb,_Health)),ceil(((_Health*1.0+-1.0)+(i.uv0.r*-1.0+1.0)))),_MainTexOverlay_var.rgb,_MainTexOverlay_var.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
