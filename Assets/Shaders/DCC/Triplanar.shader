// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32585,y:32492,varname:node_4013,prsc:2|diff-2378-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:2378,x:32257,y:32494,varname:node_2378,prsc:2,chbt:0|M-2445-OUT,R-6671-RGB,G-9365-RGB,B-9943-RGB;n:type:ShaderForge.SFN_Multiply,id:2445,x:32033,y:32363,varname:node_2445,prsc:2|A-7665-OUT,B-7665-OUT;n:type:ShaderForge.SFN_Abs,id:7665,x:31830,y:32363,varname:node_7665,prsc:2|IN-2593-OUT;n:type:ShaderForge.SFN_NormalVector,id:2593,x:31624,y:32363,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:6671,x:31830,y:32536,ptovrint:False,ptlb:Front,ptin:_Front,varname:node_6671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-1289-OUT;n:type:ShaderForge.SFN_Tex2d,id:9365,x:31830,y:32748,ptovrint:False,ptlb:Top,ptin:_Top,varname:node_9365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7540-OUT;n:type:ShaderForge.SFN_Tex2d,id:9943,x:31830,y:32966,ptovrint:False,ptlb:Side,ptin:_Side,varname:node_9943,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2725-OUT;n:type:ShaderForge.SFN_Append,id:1289,x:31624,y:32536,varname:node_1289,prsc:2|A-2590-Z,B-2590-Y;n:type:ShaderForge.SFN_Append,id:7540,x:31624,y:32748,varname:node_7540,prsc:2|A-2590-X,B-2590-Z;n:type:ShaderForge.SFN_Append,id:2725,x:31624,y:32966,varname:node_2725,prsc:2|A-2590-X,B-2590-Y;n:type:ShaderForge.SFN_FragmentPosition,id:2590,x:31384,y:32748,varname:node_2590,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:4557,x:32347,y:33209,varname:node_4557,prsc:2|IN-660-OUT;n:type:ShaderForge.SFN_Add,id:660,x:32157,y:33209,varname:node_660,prsc:2|A-9943-A,B-9650-OUT;n:type:ShaderForge.SFN_Slider,id:1229,x:31610,y:33230,ptovrint:False,ptlb:Blend Strength,ptin:_BlendStrength,varname:node_3676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:9650,x:31973,y:33209,varname:node_9650,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-1229-OUT;n:type:ShaderForge.SFN_Lerp,id:7453,x:32229,y:32968,varname:node_7453,prsc:2|B-9943-RGB,T-4557-OUT;proporder:6671-9365-9943;pass:END;sub:END;*/

Shader "DCC/Triplanar Mapping" {
    Properties {
        _Front ("Front", 2D) = "black" {}
        _Top ("Top", 2D) = "white" {}
        _Side ("Side", 2D) = "white" {}
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Front; uniform float4 _Front_ST;
            uniform sampler2D _Top; uniform float4 _Top_ST;
            uniform sampler2D _Side; uniform float4 _Side_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 node_7665 = abs(i.normalDir);
                float3 node_2445 = (node_7665*node_7665);
                float2 node_1289 = float2(i.posWorld.b,i.posWorld.g);
                float4 _Front_var = tex2D(_Front,TRANSFORM_TEX(node_1289, _Front));
                float2 node_7540 = float2(i.posWorld.r,i.posWorld.b);
                float4 _Top_var = tex2D(_Top,TRANSFORM_TEX(node_7540, _Top));
                float2 node_2725 = float2(i.posWorld.r,i.posWorld.g);
                float4 _Side_var = tex2D(_Side,TRANSFORM_TEX(node_2725, _Side));
                float3 diffuseColor = (node_2445.r*_Front_var.rgb + node_2445.g*_Top_var.rgb + node_2445.b*_Side_var.rgb);
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Front; uniform float4 _Front_ST;
            uniform sampler2D _Top; uniform float4 _Top_ST;
            uniform sampler2D _Side; uniform float4 _Side_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 node_7665 = abs(i.normalDir);
                float3 node_2445 = (node_7665*node_7665);
                float2 node_1289 = float2(i.posWorld.b,i.posWorld.g);
                float4 _Front_var = tex2D(_Front,TRANSFORM_TEX(node_1289, _Front));
                float2 node_7540 = float2(i.posWorld.r,i.posWorld.b);
                float4 _Top_var = tex2D(_Top,TRANSFORM_TEX(node_7540, _Top));
                float2 node_2725 = float2(i.posWorld.r,i.posWorld.g);
                float4 _Side_var = tex2D(_Side,TRANSFORM_TEX(node_2725, _Side));
                float3 diffuseColor = (node_2445.r*_Front_var.rgb + node_2445.g*_Top_var.rgb + node_2445.b*_Side_var.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
