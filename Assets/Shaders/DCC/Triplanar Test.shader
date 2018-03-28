// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32300,y:31996,varname:node_4013,prsc:2|diff-7984-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31590,y:31937,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7984,x:32098,y:31996,varname:node_7984,prsc:2|A-1304-RGB,B-7513-OUT;n:type:ShaderForge.SFN_Code,id:7513,x:31255,y:32119,varname:node_7513,prsc:2,code:ZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwAIAA9ACAAcABvAHcAKABhAGIAcwAoAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoAE4AbwByAG0AYQBsAEQAaQByAGUAYwB0AGkAbwBuACwAMAApACAAKQAuAHgAeQB6AC4AcgBnAGIAKQAsAEQAZQB0AGEAaQBsACkAOwANAAoAbABvAGMAYQBsAE4AbwByAG0AYQBsACAAPQAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAHIAZwBiACAALwAgACgAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AcgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgBnACAAKwAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKQA7AA0ACgANAAoAZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuACAAPQAgAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoACgAVwBvAHIAbABkAFAAbwBzAGkAdABpAG8AbgAuAHIAZwBiAC0ATwBiAGoAZQBjAHQAUABvAHMAaQB0AGkAbwBuAC4AcgBnAGIAKQAsADAAKQAgACkALgByAGcAYgAvAFMAYwBhAGwAZQA7AA0ACgBmAGwAbwBhAHQANAAgAHQAZQB4ADEAIAA9ACAAdABlAHgAMgBEACgAVABlAHgALABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuAC4AcgBnACkAOwANAAoAZgBsAG8AYQB0ADQAIAB0AGUAeAAyACAAPQAgAHQAZQB4ADIARAAoAFQAZQB4ACwAbABvAGMAYQBsAFAAbwBzAGkAdABpAG8AbgAuAHIAYgApADsADQAKAGYAbABvAGEAdAA0ACAAdABlAHgAMwAgAD0AIAB0AGUAeAAyAEQAKABUAGUAeAAsAGwAbwBjAGEAbABQAG8AcwBpAHQAaQBvAG4ALgBnAGIAKQA7AA0ACgANAAoAcgBlAHQAdQByAG4AIAAoAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKgB0AGUAeAAxAC4AcgBnAGIAIAArACAAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AZwAqAHQAZQB4ADIALgByAGcAYgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgByACoAdABlAHgAMwAuAHIAZwBiACkAOwA=,output:2,fname:Object_TPM,width:768,height:182,input:12,input:2,input:2,input:2,input:0,input:0,input_1_label:Tex,input_2_label:WorldPosition,input_3_label:ObjectPosition,input_4_label:NormalDirection,input_5_label:Detail,input_6_label:Scale|A-6058-TEX,B-1613-XYZ,C-6775-XYZ,D-9927-OUT,E-6000-OUT,F-4238-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6058,x:30957,y:31815,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6058,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6000,x:30987,y:32430,ptovrint:False,ptlb:Detail,ptin:_Detail,varname:node_6000,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4238,x:30987,y:32529,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_4238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_FragmentPosition,id:1613,x:30957,y:31974,varname:node_1613,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:6775,x:30957,y:32096,varname:node_6775,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9927,x:30987,y:32242,prsc:2,pt:False;proporder:1304-6058-6000-4238;pass:END;sub:END;*/

Shader "TheMasonX/Triplanar Mapping/Object Space" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Texture ("Texture", 2D) = "white" {}
        _Detail ("Detail", Float ) = 2
        _Scale ("Scale", Float ) = 2
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
            uniform float4 _Color;
            float3 Object_TPM( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Detail;
            uniform float _Scale;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float3 diffuseColor = (_Color.rgb*Object_TPM( _Texture , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale ));
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
            uniform float4 _Color;
            float3 Object_TPM( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Detail;
            uniform float _Scale;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
                float3 diffuseColor = (_Color.rgb*Object_TPM( _Texture , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale ));
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
