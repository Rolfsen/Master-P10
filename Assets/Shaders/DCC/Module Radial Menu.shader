// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-3244-OUT,clip-6401-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31957,y:32097,ptovrint:False,ptlb:1,ptin:_1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6622,x:29956,y:33802,varname:node_6622,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:546,x:30132,y:33802,varname:node_546,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6622-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:6401,x:30653,y:33802,varname:node_6401,prsc:2|IN-5421-OUT;n:type:ShaderForge.SFN_Length,id:373,x:30323,y:33802,varname:node_373,prsc:2|IN-546-OUT;n:type:ShaderForge.SFN_Floor,id:5421,x:30492,y:33802,varname:node_5421,prsc:2|IN-373-OUT;n:type:ShaderForge.SFN_ArcTan2,id:5303,x:30548,y:33435,varname:node_5303,prsc:2,attp:2|A-5473-G,B-5473-R;n:type:ShaderForge.SFN_ComponentMask,id:5473,x:30339,y:33435,varname:node_5473,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-546-OUT;n:type:ShaderForge.SFN_Ceil,id:6602,x:31261,y:33378,varname:node_6602,prsc:2|IN-388-OUT;n:type:ShaderForge.SFN_Subtract,id:388,x:31083,y:33378,varname:node_388,prsc:2|A-2529-OUT,B-4926-OUT;n:type:ShaderForge.SFN_Slider,id:1292,x:30414,y:33255,ptovrint:False,ptlb:Max 3,ptin:_Max3,varname:node_1292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:294.1827,max:360;n:type:ShaderForge.SFN_Multiply,id:9150,x:31641,y:33391,varname:node_9150,prsc:2|A-871-OUT,B-6401-OUT;n:type:ShaderForge.SFN_Lerp,id:9574,x:32327,y:32060,varname:node_9574,prsc:2|A-2161-OUT,B-7241-RGB,T-2746-OUT;n:type:ShaderForge.SFN_Lerp,id:4087,x:32327,y:31927,varname:node_4087,prsc:2|A-2161-OUT,B-7964-RGB,T-6401-OUT;n:type:ShaderForge.SFN_Color,id:7964,x:31957,y:31896,ptovrint:False,ptlb:BG,ptin:_BG,varname:node_7964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:4949,x:32558,y:31927,varname:node_4949,prsc:2|A-4087-OUT,B-9574-OUT,T-2746-OUT;n:type:ShaderForge.SFN_RemapRange,id:4926,x:30728,y:33255,varname:node_4926,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-1292-OUT;n:type:ShaderForge.SFN_RemapRange,id:7184,x:30728,y:33080,varname:node_7184,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-2266-OUT;n:type:ShaderForge.SFN_Slider,id:2266,x:30414,y:33080,ptovrint:False,ptlb:Min 3,ptin:_Min3,varname:_node_1292_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:20.14949,max:360;n:type:ShaderForge.SFN_Subtract,id:1050,x:31083,y:33237,varname:node_1050,prsc:2|A-2529-OUT,B-7184-OUT;n:type:ShaderForge.SFN_Ceil,id:3077,x:31261,y:33237,varname:node_3077,prsc:2|IN-1050-OUT;n:type:ShaderForge.SFN_Subtract,id:871,x:31454,y:33237,varname:node_871,prsc:2|A-3077-OUT,B-6602-OUT;n:type:ShaderForge.SFN_Clamp01,id:2746,x:31809,y:33391,varname:node_2746,prsc:2|IN-9150-OUT;n:type:ShaderForge.SFN_OneMinus,id:2529,x:30728,y:33435,varname:node_2529,prsc:2|IN-5303-OUT;n:type:ShaderForge.SFN_Color,id:7040,x:31957,y:32281,ptovrint:False,ptlb:2,ptin:_2,varname:node_7040,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:2161,x:31957,y:31807,varname:node_2161,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:8248,x:32327,y:32198,varname:node_8248,prsc:2|A-2161-OUT,B-7040-RGB,T-4004-OUT;n:type:ShaderForge.SFN_TexCoord,id:5728,x:29326,y:32728,varname:node_5728,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:1827,x:29502,y:32728,varname:node_1827,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5728-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:1413,x:30023,y:32728,varname:node_1413,prsc:2|IN-7823-OUT;n:type:ShaderForge.SFN_Length,id:3882,x:29693,y:32728,varname:node_3882,prsc:2|IN-1827-OUT;n:type:ShaderForge.SFN_Floor,id:7823,x:29862,y:32728,varname:node_7823,prsc:2|IN-3882-OUT;n:type:ShaderForge.SFN_ArcTan2,id:7467,x:29918,y:32361,varname:node_7467,prsc:2,attp:2|A-997-G,B-997-R;n:type:ShaderForge.SFN_ComponentMask,id:997,x:29709,y:32361,varname:node_997,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1827-OUT;n:type:ShaderForge.SFN_Ceil,id:3583,x:30631,y:32304,varname:node_3583,prsc:2|IN-8521-OUT;n:type:ShaderForge.SFN_Subtract,id:8521,x:30453,y:32304,varname:node_8521,prsc:2|A-7429-OUT,B-5935-OUT;n:type:ShaderForge.SFN_Slider,id:3442,x:29784,y:32181,ptovrint:False,ptlb:Max 2,ptin:_Max2,varname:_Max3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:317.3171,max:360;n:type:ShaderForge.SFN_Multiply,id:3123,x:31011,y:32317,varname:node_3123,prsc:2|A-863-OUT,B-1413-OUT;n:type:ShaderForge.SFN_RemapRange,id:5935,x:30098,y:32181,varname:node_5935,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-3442-OUT;n:type:ShaderForge.SFN_RemapRange,id:9087,x:30098,y:32006,varname:node_9087,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-3961-OUT;n:type:ShaderForge.SFN_Slider,id:3961,x:29784,y:32006,ptovrint:False,ptlb:Min 2,ptin:_Min2,varname:_Min2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:160.1976,max:360;n:type:ShaderForge.SFN_Subtract,id:6394,x:30453,y:32163,varname:node_6394,prsc:2|A-7429-OUT,B-9087-OUT;n:type:ShaderForge.SFN_Ceil,id:7515,x:30631,y:32163,varname:node_7515,prsc:2|IN-6394-OUT;n:type:ShaderForge.SFN_Subtract,id:863,x:30824,y:32163,varname:node_863,prsc:2|A-7515-OUT,B-3583-OUT;n:type:ShaderForge.SFN_Clamp01,id:4004,x:31179,y:32317,varname:node_4004,prsc:2|IN-3123-OUT;n:type:ShaderForge.SFN_OneMinus,id:7429,x:30098,y:32361,varname:node_7429,prsc:2|IN-7467-OUT;n:type:ShaderForge.SFN_Lerp,id:4676,x:32751,y:32051,varname:node_4676,prsc:2|A-4949-OUT,B-8248-OUT,T-4004-OUT;n:type:ShaderForge.SFN_TexCoord,id:6790,x:29126,y:31739,varname:node_6790,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:5252,x:29302,y:31739,varname:node_5252,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6790-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:4610,x:29823,y:31739,varname:node_4610,prsc:2|IN-7434-OUT;n:type:ShaderForge.SFN_Length,id:9556,x:29493,y:31739,varname:node_9556,prsc:2|IN-5252-OUT;n:type:ShaderForge.SFN_Floor,id:7434,x:29662,y:31739,varname:node_7434,prsc:2|IN-9556-OUT;n:type:ShaderForge.SFN_ArcTan2,id:7626,x:29718,y:31372,varname:node_7626,prsc:2,attp:2|A-2138-G,B-2138-R;n:type:ShaderForge.SFN_ComponentMask,id:2138,x:29509,y:31372,varname:node_2138,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5252-OUT;n:type:ShaderForge.SFN_Ceil,id:2623,x:30431,y:31315,varname:node_2623,prsc:2|IN-2482-OUT;n:type:ShaderForge.SFN_Subtract,id:2482,x:30253,y:31315,varname:node_2482,prsc:2|A-5292-OUT,B-1005-OUT;n:type:ShaderForge.SFN_Multiply,id:779,x:30811,y:31328,varname:node_779,prsc:2|A-2748-OUT,B-4610-OUT;n:type:ShaderForge.SFN_RemapRange,id:1005,x:29898,y:31192,varname:node_1005,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-9869-OUT;n:type:ShaderForge.SFN_RemapRange,id:6536,x:29898,y:31017,varname:node_6536,prsc:2,frmn:0,frmx:360,tomn:0,tomx:1|IN-1155-OUT;n:type:ShaderForge.SFN_Subtract,id:7654,x:30253,y:31174,varname:node_7654,prsc:2|A-5292-OUT,B-6536-OUT;n:type:ShaderForge.SFN_Ceil,id:792,x:30431,y:31174,varname:node_792,prsc:2|IN-7654-OUT;n:type:ShaderForge.SFN_Subtract,id:2748,x:30624,y:31174,varname:node_2748,prsc:2|A-792-OUT,B-2623-OUT;n:type:ShaderForge.SFN_Clamp01,id:9376,x:30979,y:31328,varname:node_9376,prsc:2|IN-779-OUT;n:type:ShaderForge.SFN_OneMinus,id:5292,x:29898,y:31372,varname:node_5292,prsc:2|IN-7626-OUT;n:type:ShaderForge.SFN_Color,id:1098,x:31957,y:32472,ptovrint:False,ptlb:3,ptin:_3,varname:_3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6983,x:32327,y:32331,varname:node_6983,prsc:2|A-2161-OUT,B-1098-RGB,T-9376-OUT;n:type:ShaderForge.SFN_Lerp,id:981,x:32902,y:32186,varname:node_981,prsc:2|A-4676-OUT,B-6983-OUT,T-9376-OUT;n:type:ShaderForge.SFN_Slider,id:1155,x:29579,y:31017,ptovrint:False,ptlb:Min 1,ptin:_Min1,varname:node_1155,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:226.1028,max:360;n:type:ShaderForge.SFN_Slider,id:9869,x:29579,y:31192,ptovrint:False,ptlb:Max 1,ptin:_Max1,varname:node_9869,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:335.9612,max:360;n:type:ShaderForge.SFN_Lerp,id:3244,x:33265,y:32621,varname:node_3244,prsc:2|A-981-OUT,B-2201-RGB,T-513-OUT;n:type:ShaderForge.SFN_TexCoord,id:1194,x:33346,y:32007,varname:node_1194,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:221,x:33548,y:32158,varname:node_221,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1194-UVOUT;n:type:ShaderForge.SFN_Length,id:3880,x:33562,y:32432,varname:node_3880,prsc:2|IN-221-OUT;n:type:ShaderForge.SFN_Color,id:2201,x:33196,y:32291,ptovrint:False,ptlb:Edge Color,ptin:_EdgeColor,varname:node_2201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:6717,x:33807,y:32342,ptovrint:False,ptlb:Edge Size,ptin:_EdgeSize,varname:node_6717,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1111111,max:1;n:type:ShaderForge.SFN_Floor,id:513,x:33842,y:32581,varname:node_513,prsc:2|IN-5584-OUT;n:type:ShaderForge.SFN_Add,id:5584,x:34086,y:32400,varname:node_5584,prsc:2|A-6717-OUT,B-3880-OUT;proporder:7241-1292-7964-2266-7040-3442-3961-1098-9869-1155-2201-6717;pass:END;sub:END;*/

Shader "DCC/Module Radial Menu" {
    Properties {
        _1 ("1", Color) = (1,0,0,1)
        _Max3 ("Max 3", Range(0, 360)) = 294.1827
        _BG ("BG", Color) = (0.5,0.5,0.5,1)
        _Min3 ("Min 3", Range(0, 360)) = 20.14949
        _2 ("2", Color) = (0,1,0,1)
        _Max2 ("Max 2", Range(0, 360)) = 317.3171
        _Min2 ("Min 2", Range(0, 360)) = 160.1976
        _3 ("3", Color) = (0,0,1,1)
        _Max1 ("Max 1", Range(0, 360)) = 335.9612
        _Min1 ("Min 1", Range(0, 360)) = 226.1028
        _EdgeColor ("Edge Color", Color) = (0,0,0,1)
        _EdgeSize ("Edge Size", Range(0, 1)) = 0.1111111
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _1;
            uniform float _Max3;
            uniform float4 _BG;
            uniform float _Min3;
            uniform float4 _2;
            uniform float _Max2;
            uniform float _Min2;
            uniform float4 _3;
            uniform float _Min1;
            uniform float _Max1;
            uniform float4 _EdgeColor;
            uniform float _EdgeSize;
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
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_546 = (i.uv0*2.0+-1.0);
                float node_6401 = (1.0 - floor(length(node_546)));
                clip(node_6401 - 0.5);
////// Lighting:
////// Emissive:
                float node_2161 = 0.0;
                float2 node_5473 = node_546.rg;
                float node_2529 = (1.0 - ((atan2(node_5473.g,node_5473.r)/6.28318530718)+0.5));
                float node_2746 = saturate(((ceil((node_2529-(_Min3*0.002777778+0.0)))-ceil((node_2529-(_Max3*0.002777778+0.0))))*node_6401));
                float2 node_1827 = (i.uv0*2.0+-1.0);
                float2 node_997 = node_1827.rg;
                float node_7429 = (1.0 - ((atan2(node_997.g,node_997.r)/6.28318530718)+0.5));
                float node_4004 = saturate(((ceil((node_7429-(_Min2*0.002777778+0.0)))-ceil((node_7429-(_Max2*0.002777778+0.0))))*(1.0 - floor(length(node_1827)))));
                float2 node_5252 = (i.uv0*2.0+-1.0);
                float2 node_2138 = node_5252.rg;
                float node_5292 = (1.0 - ((atan2(node_2138.g,node_2138.r)/6.28318530718)+0.5));
                float node_9376 = saturate(((ceil((node_5292-(_Min1*0.002777778+0.0)))-ceil((node_5292-(_Max1*0.002777778+0.0))))*(1.0 - floor(length(node_5252)))));
                float3 emissive = lerp(lerp(lerp(lerp(lerp(float3(node_2161,node_2161,node_2161),_BG.rgb,node_6401),lerp(float3(node_2161,node_2161,node_2161),_1.rgb,node_2746),node_2746),lerp(float3(node_2161,node_2161,node_2161),_2.rgb,node_4004),node_4004),lerp(float3(node_2161,node_2161,node_2161),_3.rgb,node_9376),node_9376),_EdgeColor.rgb,floor((_EdgeSize+length((i.uv0*2.0+-1.0)))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_546 = (i.uv0*2.0+-1.0);
                float node_6401 = (1.0 - floor(length(node_546)));
                clip(node_6401 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
