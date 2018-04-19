// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:3,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33181,y:32561,varname:node_4013,prsc:2|diff-4720-OUT,clip-9770-OUT;n:type:ShaderForge.SFN_Color,id:2361,x:31487,y:33030,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:9326,x:30833,y:31048,ptovrint:False,ptlb:Overlay U Speed,ptin:_OverlayUSpeed,varname:_OverlayUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:973,x:30833,y:31136,ptovrint:False,ptlb:Overlay V Speed,ptin:_OverlayVSpeed,varname:_OverlayVspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:3802,x:31102,y:31107,varname:node_3802,prsc:2|A-9326-OUT,B-973-OUT;n:type:ShaderForge.SFN_TexCoord,id:6295,x:31353,y:31107,varname:node_6295,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5279,x:31532,y:31260,varname:node_5279,prsc:2|A-6295-UVOUT,B-9836-OUT;n:type:ShaderForge.SFN_Multiply,id:9836,x:31353,y:31260,varname:node_9836,prsc:2|A-3802-OUT,B-7551-OUT;n:type:ShaderForge.SFN_Time,id:3266,x:30913,y:31345,varname:node_3266,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7267,x:31683,y:33030,varname:node_7267,prsc:2|A-2361-RGB,B-8153-RGB;n:type:ShaderForge.SFN_Slider,id:8927,x:31770,y:33463,ptovrint:False,ptlb:Total Opacity Intensity,ptin:_TotalOpacityIntensity,varname:node_3023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:0;n:type:ShaderForge.SFN_Tex2d,id:8153,x:31487,y:33199,varname:node_9150,prsc:2,tex:166596c1c4410427a8b4936910f5c1f9,ntxv:0,isnm:False|TEX-4225-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4225,x:31170,y:33162,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_9355,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:166596c1c4410427a8b4936910f5c1f9,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:6976,x:30756,y:31265,ptovrint:False,ptlb:Overlay Speed,ptin:_OverlaySpeed,varname:_Noise2speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.406617,max:10;n:type:ShaderForge.SFN_Multiply,id:7551,x:31102,y:31260,varname:node_7551,prsc:2|A-6976-OUT,B-3266-T;n:type:ShaderForge.SFN_Vector1,id:4604,x:32297,y:33524,varname:node_4604,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:757,x:32127,y:33466,varname:node_757,prsc:2|IN-8927-OUT;n:type:ShaderForge.SFN_Slider,id:5169,x:29367,y:32777,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_4039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3461309,max:1;n:type:ShaderForge.SFN_Add,id:9113,x:30056,y:32885,varname:node_9113,prsc:2|A-6803-OUT,B-512-OUT;n:type:ShaderForge.SFN_RemapRange,id:6803,x:29852,y:32777,varname:node_6803,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.9|IN-1055-OUT;n:type:ShaderForge.SFN_OneMinus,id:1055,x:29690,y:32777,varname:node_1055,prsc:2|IN-5169-OUT;n:type:ShaderForge.SFN_Slider,id:6613,x:30074,y:32778,ptovrint:False,ptlb:Dissolve Max,ptin:_DissolveMax,varname:node_7359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:5,max:10;n:type:ShaderForge.SFN_Slider,id:8221,x:30074,y:32683,ptovrint:False,ptlb:Dissolve Min,ptin:_DissolveMin,varname:node_8221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-2,max:10;n:type:ShaderForge.SFN_Vector1,id:2055,x:30231,y:33017,varname:node_2055,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2812,x:30231,y:33080,varname:node_2812,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1331,x:30231,y:33211,varname:node_1331,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:2011,x:30231,y:33144,varname:node_2011,prsc:2,v1:-2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9991,x:30621,y:32846,varname:node_9991,prsc:2|IN-7770-OUT,IMIN-2055-OUT,IMAX-2812-OUT,OMIN-8221-OUT,OMAX-6613-OUT;n:type:ShaderForge.SFN_Clamp01,id:1071,x:30985,y:32846,varname:node_1071,prsc:2|IN-5602-OUT;n:type:ShaderForge.SFN_Vector1,id:2773,x:30540,y:32397,varname:node_2773,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:3986,x:30703,y:32363,varname:node_3986,prsc:2|A-1071-OUT,B-2773-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5736,x:30703,y:32529,ptovrint:False,ptlb:Dissolve Ramp,ptin:_DissolveRamp,varname:node_1715,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ce27195f30a15f341811cc7e48f8f668,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:7770,x:30231,y:32885,varname:node_7770,prsc:2|IN-9113-OUT;n:type:ShaderForge.SFN_Color,id:9852,x:30906,y:32215,ptovrint:False,ptlb:Dissolve Color,ptin:_DissolveColor,varname:node_3412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5103,x:30906,y:32364,varname:node_1591,prsc:2,tex:ce27195f30a15f341811cc7e48f8f668,ntxv:0,isnm:False|UVIN-3986-OUT,TEX-5736-TEX;n:type:ShaderForge.SFN_Lerp,id:9770,x:32473,y:33398,varname:node_9770,prsc:2|A-757-OUT,B-4604-OUT,T-6083-OUT;n:type:ShaderForge.SFN_Slider,id:1148,x:31085,y:32406,ptovrint:False,ptlb:Dissolve Color Intensity,ptin:_DissolveColorIntensity,varname:node_9403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_ComponentMask,id:6083,x:30906,y:32530,varname:node_6083,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3986-OUT;n:type:ShaderForge.SFN_Clamp01,id:5602,x:30797,y:32846,varname:node_5602,prsc:2|IN-9991-OUT;n:type:ShaderForge.SFN_Tex2d,id:4643,x:31715,y:31260,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_4643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a6413edcec50bd34b93c506373c83fe1,ntxv:0,isnm:False|UVIN-5279-OUT;n:type:ShaderForge.SFN_Lerp,id:6177,x:32264,y:31746,varname:node_6177,prsc:2|A-8360-OUT,B-7267-OUT,T-3093-OUT;n:type:ShaderForge.SFN_Tex2d,id:2442,x:30850,y:31738,ptovrint:False,ptlb:Overlay Mask,ptin:_OverlayMask,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:051d2a9667ced154e9f1b4f730916cc2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:5377,x:31060,y:32009,ptovrint:False,ptlb:Overlay Intensity,ptin:_OverlayIntensity,varname:node_5377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:5433,x:31715,y:31454,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_5433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4889706,c2:0.5935091,c3:0.9779412,c4:1;n:type:ShaderForge.SFN_Multiply,id:8360,x:32025,y:31656,varname:node_8360,prsc:2|A-4643-RGB,B-5433-RGB;n:type:ShaderForge.SFN_Slider,id:3689,x:30693,y:31925,ptovrint:False,ptlb:Overlay Mask Intensity,ptin:_OverlayMaskIntensity,varname:node_3689,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Append,id:3658,x:28434,y:33445,varname:node_3658,prsc:2|A-8642-G,B-8642-B;n:type:ShaderForge.SFN_Append,id:9091,x:28434,y:33657,varname:node_9091,prsc:2|A-8642-B,B-8642-R;n:type:ShaderForge.SFN_Append,id:2620,x:28602,y:33876,varname:node_2620,prsc:2|A-4666-OUT,B-8642-G;n:type:ShaderForge.SFN_FragmentPosition,id:2209,x:28034,y:33657,varname:node_2209,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3705,x:28817,y:33445,varname:node_6671,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:2,isnm:False|UVIN-8833-OUT,TEX-995-TEX;n:type:ShaderForge.SFN_Tex2d,id:8019,x:28817,y:33657,varname:node_9365,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-9555-OUT,TEX-995-TEX;n:type:ShaderForge.SFN_Tex2d,id:8186,x:28817,y:33876,varname:node_9943,prsc:2,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False|UVIN-2620-OUT,TEX-995-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:995,x:28602,y:34051,ptovrint:False,ptlb:Dissolve Noise,ptin:_DissolveNoise,varname:node_9932,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5216,x:29039,y:33445,varname:node_5216,prsc:2|A-5120-R,B-3705-RGB;n:type:ShaderForge.SFN_Multiply,id:4871,x:29039,y:33657,varname:node_4871,prsc:2|A-5120-G,B-8019-RGB;n:type:ShaderForge.SFN_Multiply,id:6358,x:29039,y:33876,varname:node_6358,prsc:2|A-5120-B,B-8186-RGB;n:type:ShaderForge.SFN_Add,id:5046,x:29273,y:33449,varname:node_5046,prsc:2|A-5216-OUT,B-4871-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8642,x:28205,y:33657,varname:node_8642,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2209-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8833,x:28602,y:33445,varname:node_8833,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-3658-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9555,x:28602,y:33657,varname:node_9555,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-9091-OUT;n:type:ShaderForge.SFN_Negate,id:4666,x:28434,y:33876,varname:node_4666,prsc:2|IN-8642-R;n:type:ShaderForge.SFN_Abs,id:5457,x:27710,y:33317,varname:node_5457,prsc:2|IN-4579-OUT;n:type:ShaderForge.SFN_NormalVector,id:4579,x:27504,y:33317,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:9224,x:27553,y:33222,ptovrint:False,ptlb:Blend Sharpness,ptin:_BlendSharpness,varname:node_7914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:4248,x:28089,y:33189,varname:node_4248,prsc:2|VAL-5457-OUT,EXP-9224-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2793,x:27710,y:33020,varname:node_2793,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-4248-OUT;n:type:ShaderForge.SFN_Add,id:4693,x:27893,y:32898,varname:node_4693,prsc:2|A-2793-R,B-2793-G;n:type:ShaderForge.SFN_Add,id:7730,x:28089,y:33027,varname:node_7730,prsc:2|A-4693-OUT,B-2793-B;n:type:ShaderForge.SFN_Divide,id:7472,x:28306,y:33027,varname:node_7472,prsc:2|A-4248-OUT,B-7730-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5120,x:28489,y:33027,varname:node_5120,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7472-OUT;n:type:ShaderForge.SFN_Add,id:512,x:29452,y:33611,varname:node_512,prsc:2|A-5046-OUT,B-6358-OUT;n:type:ShaderForge.SFN_Lerp,id:4720,x:32585,y:31863,varname:node_4720,prsc:2|A-6177-OUT,B-9852-RGB,T-4369-OUT;n:type:ShaderForge.SFN_Multiply,id:4369,x:31457,y:32474,varname:node_4369,prsc:2|A-1148-OUT,B-7211-OUT;n:type:ShaderForge.SFN_Multiply,id:5928,x:31138,y:31779,varname:node_5928,prsc:2|A-2442-R,B-3689-OUT;n:type:ShaderForge.SFN_Clamp01,id:7211,x:31278,y:32489,varname:node_7211,prsc:2|IN-6083-OUT;n:type:ShaderForge.SFN_OneMinus,id:8198,x:31387,y:32009,varname:node_8198,prsc:2|IN-5377-OUT;n:type:ShaderForge.SFN_Clamp01,id:3900,x:31313,y:31779,varname:node_3900,prsc:2|IN-5928-OUT;n:type:ShaderForge.SFN_Lerp,id:3093,x:31662,y:31748,varname:node_3093,prsc:2|A-8198-OUT,B-672-OUT,T-3900-OUT;n:type:ShaderForge.SFN_Vector1,id:672,x:31138,y:31705,varname:node_672,prsc:2,v1:1;proporder:2361-9326-973-4225-6976-5169-6613-8221-5736-9852-1148-8927-4643-2442-5377-5433-3689-995-9224;pass:END;sub:END;*/

Shader "DCC/Dissolve Overlay" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _OverlayUSpeed ("Overlay U Speed", Float ) = 0
        _OverlayVSpeed ("Overlay V Speed", Float ) = 0.1
        _Maintex ("Maintex", 2D) = "black" {}
        _OverlaySpeed ("Overlay Speed", Range(0, 10)) = 3.406617
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0.3461309
        _DissolveMax ("Dissolve Max", Range(-10, 10)) = 5
        _DissolveMin ("Dissolve Min", Range(-10, 10)) = -2
        _DissolveRamp ("Dissolve Ramp", 2D) = "white" {}
        _DissolveColor ("Dissolve Color", Color) = (0,0,0,1)
        _DissolveColorIntensity ("Dissolve Color Intensity", Range(0, 10)) = 1
        _TotalOpacityIntensity ("Total Opacity Intensity", Range(1, 0)) = 1
        _Overlay ("Overlay", 2D) = "white" {}
        _OverlayMask ("Overlay Mask", 2D) = "white" {}
        _OverlayIntensity ("Overlay Intensity", Range(0, 1)) = 1
        _OverlayColor ("Overlay Color", Color) = (0.4889706,0.5935091,0.9779412,1)
        _OverlayMaskIntensity ("Overlay Mask Intensity", Range(0, 10)) = 10
        _DissolveNoise ("Dissolve Noise", 2D) = "white" {}
        _BlendSharpness ("Blend Sharpness", Range(0, 10)) = 10
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _MaintexColor;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _TotalOpacityIntensity;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _OverlaySpeed;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _DissolveColor;
            uniform float _DissolveColorIntensity;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _OverlayMaskIntensity;
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _BlendSharpness;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 node_4248 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2793 = node_4248.rgb;
                float3 node_5120 = (node_4248/((node_2793.r+node_2793.g)+node_2793.b)).rgb;
                float3 node_8642 = i.posWorld.rgb.rgb;
                float2 node_8833 = float2(node_8642.g,node_8642.b).gr;
                float4 node_6671 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_8833, _DissolveNoise));
                float2 node_9555 = float2(node_8642.b,node_8642.r).gr;
                float4 node_9365 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_9555, _DissolveNoise));
                float2 node_2620 = float2((-1*node_8642.r),node_8642.g);
                float4 node_9943 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_2620, _DissolveNoise));
                float node_2055 = 0.0;
                float4 node_3986 = float4(saturate(saturate((_DissolveMin + ( ((1.0 - (((1.0 - _DissolveAmount)*1.5+-0.6)+(((node_5120.r*node_6671.rgb)+(node_5120.g*node_9365.rgb))+(node_5120.b*node_9943.rgb)))) - node_2055) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_2055)))),0.0);
                float node_6083 = node_3986.r;
                clip(lerp(saturate(_TotalOpacityIntensity),0.0,node_6083) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_3266 = _Time;
                float2 node_5279 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*(_OverlaySpeed*node_3266.g)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_5279, _Overlay));
                float4 node_9150 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(i.uv0, _OverlayMask));
                float3 diffuseColor = lerp(lerp((_Overlay_var.rgb*_OverlayColor.rgb),(_MaintexColor.rgb*node_9150.rgb),lerp((1.0 - _OverlayIntensity),1.0,saturate((_OverlayMask_var.r*_OverlayMaskIntensity)))),_DissolveColor.rgb,(_DissolveColorIntensity*saturate(node_6083)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _MaintexColor;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _TotalOpacityIntensity;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _OverlaySpeed;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform float4 _DissolveColor;
            uniform float _DissolveColorIntensity;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform sampler2D _OverlayMask; uniform float4 _OverlayMask_ST;
            uniform float _OverlayIntensity;
            uniform float4 _OverlayColor;
            uniform float _OverlayMaskIntensity;
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _BlendSharpness;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 node_4248 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2793 = node_4248.rgb;
                float3 node_5120 = (node_4248/((node_2793.r+node_2793.g)+node_2793.b)).rgb;
                float3 node_8642 = i.posWorld.rgb.rgb;
                float2 node_8833 = float2(node_8642.g,node_8642.b).gr;
                float4 node_6671 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_8833, _DissolveNoise));
                float2 node_9555 = float2(node_8642.b,node_8642.r).gr;
                float4 node_9365 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_9555, _DissolveNoise));
                float2 node_2620 = float2((-1*node_8642.r),node_8642.g);
                float4 node_9943 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_2620, _DissolveNoise));
                float node_2055 = 0.0;
                float4 node_3986 = float4(saturate(saturate((_DissolveMin + ( ((1.0 - (((1.0 - _DissolveAmount)*1.5+-0.6)+(((node_5120.r*node_6671.rgb)+(node_5120.g*node_9365.rgb))+(node_5120.b*node_9943.rgb)))) - node_2055) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_2055)))),0.0);
                float node_6083 = node_3986.r;
                clip(lerp(saturate(_TotalOpacityIntensity),0.0,node_6083) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_3266 = _Time;
                float2 node_5279 = (i.uv0+(float2(_OverlayUSpeed,_OverlayVSpeed)*(_OverlaySpeed*node_3266.g)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_5279, _Overlay));
                float4 node_9150 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float4 _OverlayMask_var = tex2D(_OverlayMask,TRANSFORM_TEX(i.uv0, _OverlayMask));
                float3 diffuseColor = lerp(lerp((_Overlay_var.rgb*_OverlayColor.rgb),(_MaintexColor.rgb*node_9150.rgb),lerp((1.0 - _OverlayIntensity),1.0,saturate((_OverlayMask_var.r*_OverlayMaskIntensity)))),_DissolveColor.rgb,(_DissolveColorIntensity*saturate(node_6083)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _TotalOpacityIntensity;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _BlendSharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 node_4248 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2793 = node_4248.rgb;
                float3 node_5120 = (node_4248/((node_2793.r+node_2793.g)+node_2793.b)).rgb;
                float3 node_8642 = i.posWorld.rgb.rgb;
                float2 node_8833 = float2(node_8642.g,node_8642.b).gr;
                float4 node_6671 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_8833, _DissolveNoise));
                float2 node_9555 = float2(node_8642.b,node_8642.r).gr;
                float4 node_9365 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_9555, _DissolveNoise));
                float2 node_2620 = float2((-1*node_8642.r),node_8642.g);
                float4 node_9943 = tex2D(_DissolveNoise,TRANSFORM_TEX(node_2620, _DissolveNoise));
                float node_2055 = 0.0;
                float4 node_3986 = float4(saturate(saturate((_DissolveMin + ( ((1.0 - (((1.0 - _DissolveAmount)*1.5+-0.6)+(((node_5120.r*node_6671.rgb)+(node_5120.g*node_9365.rgb))+(node_5120.b*node_9943.rgb)))) - node_2055) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_2055)))),0.0);
                float node_6083 = node_3986.r;
                clip(lerp(saturate(_TotalOpacityIntensity),0.0,node_6083) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
