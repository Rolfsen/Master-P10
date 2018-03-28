// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33989,y:32662,varname:node_3138,prsc:2|diff-5609-OUT,normal-9327-OUT;n:type:ShaderForge.SFN_Lerp,id:5609,x:33307,y:32654,varname:node_5609,prsc:2|A-8120-OUT,B-5465-OUT,T-5929-OUT;n:type:ShaderForge.SFN_Lerp,id:5465,x:33054,y:32654,varname:node_5465,prsc:2|A-6729-RGB,B-5443-RGB,T-5929-OUT;n:type:ShaderForge.SFN_Vector1,id:5929,x:33054,y:32789,varname:node_5929,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:5443,x:32732,y:32667,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:1288,x:32536,y:32488,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1288,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6729,x:32732,y:32488,varname:node_6729,prsc:2,ntxv:0,isnm:False|TEX-1288-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:8120,x:33066,y:33009,varname:node_8120,prsc:2,chbt:0|M-7534-OUT,R-2786-RGB,G-2534-RGB,B-5797-RGB,A-4044-RGB;n:type:ShaderForge.SFN_Append,id:7534,x:32199,y:32700,varname:node_7534,prsc:2|A-7359-RGB,B-7359-A;n:type:ShaderForge.SFN_Tex2dAsset,id:2708,x:32199,y:32887,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:node_2708,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7926,x:32199,y:33121,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_node_2708_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5787,x:32199,y:33335,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_node_2708_copy_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5656,x:32199,y:33578,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_node_2708_copy_copy_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5978,x:31799,y:32700,ptovrint:False,ptlb:Control,ptin:_Control,varname:_node_2708_copy_copy_copy_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7359,x:31981,y:32700,varname:node_3365,prsc:2,ntxv:0,isnm:False|TEX-5978-TEX;n:type:ShaderForge.SFN_Slider,id:1080,x:33307,y:32822,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_1080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6842,x:33307,y:32936,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_node_1080_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ChannelBlend,id:9327,x:33066,y:33257,varname:node_9327,prsc:2,chbt:0|M-7534-OUT,R-1751-RGB,G-5047-RGB,B-7449-RGB,A-8397-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:6718,x:32199,y:33815,ptovrint:False,ptlb:Normal0,ptin:_Normal0,varname:_Splat1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:8649,x:32199,y:34049,ptovrint:False,ptlb:Normal1,ptin:_Normal1,varname:_Splat2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9646,x:32199,y:34263,ptovrint:False,ptlb:Normal2,ptin:_Normal2,varname:_Splat3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2509,x:32199,y:34506,ptovrint:False,ptlb:Normal3,ptin:_Normal3,varname:_Splat4,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5797,x:32379,y:33335,varname:_Splat12D_copy,prsc:2,ntxv:0,isnm:False|TEX-5787-TEX;n:type:ShaderForge.SFN_Tex2d,id:4044,x:32379,y:33578,varname:_Splat12D_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-5656-TEX;n:type:ShaderForge.SFN_Tex2d,id:1751,x:32379,y:33815,varname:_Splat12D_copy_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-6718-TEX;n:type:ShaderForge.SFN_Tex2d,id:5047,x:32379,y:34049,varname:_Splat12D_copy_copy_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-8649-TEX;n:type:ShaderForge.SFN_Tex2d,id:7449,x:32379,y:34263,varname:_Splat12D_copy_copy_copy_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-9646-TEX;n:type:ShaderForge.SFN_Tex2d,id:8397,x:32379,y:34506,varname:_Splat12D_copy_copy_copy_copy_copy_copy,prsc:2,ntxv:0,isnm:False|TEX-2509-TEX;n:type:ShaderForge.SFN_Tex2d,id:2534,x:32375,y:33121,varname:_Splat02D_copy,prsc:2,ntxv:0,isnm:False|TEX-7926-TEX;n:type:ShaderForge.SFN_Tex2d,id:2786,x:32375,y:32887,varname:node_2786,prsc:2,ntxv:0,isnm:False|TEX-2708-TEX;proporder:5443-1288-5978-2708-7926-5787-5656-1080-6842-6718-8649-9646-2509;pass:END;sub:END;*/

Shader "DCC/Terrain Shader/FirstPass" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Control ("Control", 2D) = "white" {}
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _Specular ("Specular", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Normal0 ("Normal0", 2D) = "white" {}
        _Normal1 ("Normal1", 2D) = "white" {}
        _Normal2 ("Normal2", 2D) = "white" {}
        _Normal3 ("Normal3", 2D) = "white" {}
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Normal0; uniform float4 _Normal0_ST;
            uniform sampler2D _Normal1; uniform float4 _Normal1_ST;
            uniform sampler2D _Normal2; uniform float4 _Normal2_ST;
            uniform sampler2D _Normal3; uniform float4 _Normal3_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3365 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_7534 = float4(node_3365.rgb,node_3365.a);
                float4 _Splat12D_copy_copy_copy = tex2D(_Normal0,TRANSFORM_TEX(i.uv0, _Normal0));
                float4 _Splat12D_copy_copy_copy_copy = tex2D(_Normal1,TRANSFORM_TEX(i.uv0, _Normal1));
                float4 _Splat12D_copy_copy_copy_copy_copy = tex2D(_Normal2,TRANSFORM_TEX(i.uv0, _Normal2));
                float4 _Splat12D_copy_copy_copy_copy_copy_copy = tex2D(_Normal3,TRANSFORM_TEX(i.uv0, _Normal3));
                float3 normalLocal = (node_7534.r*_Splat12D_copy_copy_copy.rgb + node_7534.g*_Splat12D_copy_copy_copy_copy.rgb + node_7534.b*_Splat12D_copy_copy_copy_copy_copy.rgb + node_7534.a*_Splat12D_copy_copy_copy_copy_copy_copy.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 node_2786 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat02D_copy = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat12D_copy = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat12D_copy_copy = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_6729 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5929 = 0.0;
                float3 diffuseColor = lerp((node_7534.r*node_2786.rgb + node_7534.g*_Splat02D_copy.rgb + node_7534.b*_Splat12D_copy.rgb + node_7534.a*_Splat12D_copy_copy.rgb),lerp(node_6729.rgb,_Color.rgb,node_5929),node_5929);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor,1);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Normal0; uniform float4 _Normal0_ST;
            uniform sampler2D _Normal1; uniform float4 _Normal1_ST;
            uniform sampler2D _Normal2; uniform float4 _Normal2_ST;
            uniform sampler2D _Normal3; uniform float4 _Normal3_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3365 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_7534 = float4(node_3365.rgb,node_3365.a);
                float4 _Splat12D_copy_copy_copy = tex2D(_Normal0,TRANSFORM_TEX(i.uv0, _Normal0));
                float4 _Splat12D_copy_copy_copy_copy = tex2D(_Normal1,TRANSFORM_TEX(i.uv0, _Normal1));
                float4 _Splat12D_copy_copy_copy_copy_copy = tex2D(_Normal2,TRANSFORM_TEX(i.uv0, _Normal2));
                float4 _Splat12D_copy_copy_copy_copy_copy_copy = tex2D(_Normal3,TRANSFORM_TEX(i.uv0, _Normal3));
                float3 normalLocal = (node_7534.r*_Splat12D_copy_copy_copy.rgb + node_7534.g*_Splat12D_copy_copy_copy_copy.rgb + node_7534.b*_Splat12D_copy_copy_copy_copy_copy.rgb + node_7534.a*_Splat12D_copy_copy_copy_copy_copy_copy.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_2786 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat02D_copy = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat12D_copy = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat12D_copy_copy = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_6729 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5929 = 0.0;
                float3 diffuseColor = lerp((node_7534.r*node_2786.rgb + node_7534.g*_Splat02D_copy.rgb + node_7534.b*_Splat12D_copy.rgb + node_7534.a*_Splat12D_copy_copy.rgb),lerp(node_6729.rgb,_Color.rgb,node_5929),node_5929);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
