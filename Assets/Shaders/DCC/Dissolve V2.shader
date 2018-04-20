// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34208,y:32251,varname:node_2865,prsc:2|diff-307-OUT;n:type:ShaderForge.SFN_Color,id:4078,x:33073,y:32167,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5055,x:33246,y:32072,varname:node_5055,prsc:2|A-7899-OUT,B-4078-RGB;n:type:ShaderForge.SFN_Slider,id:9117,x:31532,y:32958,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_4039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:308,x:32221,y:33066,varname:node_308,prsc:2|A-9201-OUT,B-5272-OUT;n:type:ShaderForge.SFN_RemapRange,id:9201,x:32017,y:32958,varname:node_9201,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.9|IN-9117-OUT;n:type:ShaderForge.SFN_OneMinus,id:4507,x:31855,y:32958,varname:node_4507,prsc:2|IN-9117-OUT;n:type:ShaderForge.SFN_Slider,id:7547,x:32239,y:32959,ptovrint:False,ptlb:Dissolve Max,ptin:_DissolveMax,varname:node_7359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:5,max:10;n:type:ShaderForge.SFN_Slider,id:2326,x:32239,y:32864,ptovrint:False,ptlb:Dissolve Min,ptin:_DissolveMin,varname:node_8221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-2,max:10;n:type:ShaderForge.SFN_Vector1,id:5663,x:32396,y:33198,varname:node_5663,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6949,x:32396,y:33261,varname:node_6949,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6789,x:32786,y:33027,varname:node_6789,prsc:2|IN-8946-OUT,IMIN-5663-OUT,IMAX-6949-OUT,OMIN-2326-OUT,OMAX-7547-OUT;n:type:ShaderForge.SFN_Vector1,id:8427,x:32705,y:32578,varname:node_8427,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:7279,x:32868,y:32545,varname:node_7279,prsc:2|A-7460-OUT,B-8427-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6735,x:32868,y:32710,ptovrint:False,ptlb:Dissolve Ramp,ptin:_DissolveRamp,varname:node_1715,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6fa2da5812151d44080768c7ba24c1fd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:8946,x:32396,y:33066,varname:node_8946,prsc:2|IN-308-OUT;n:type:ShaderForge.SFN_Color,id:6798,x:33073,y:32389,ptovrint:False,ptlb:Dissolve Color,ptin:_DissolveColor,varname:node_3412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5523,x:33073,y:32545,varname:node_1591,prsc:2,tex:6fa2da5812151d44080768c7ba24c1fd,ntxv:0,isnm:False|UVIN-7279-OUT,TEX-6735-TEX;n:type:ShaderForge.SFN_Clamp01,id:7460,x:32962,y:33027,varname:node_7460,prsc:2|IN-6789-OUT;n:type:ShaderForge.SFN_Lerp,id:4087,x:33754,y:32324,varname:node_4087,prsc:2|A-2397-OUT,B-5055-OUT,T-5312-OUT;n:type:ShaderForge.SFN_Clamp01,id:5312,x:33246,y:32545,varname:node_5312,prsc:2|IN-5523-R;n:type:ShaderForge.SFN_Code,id:5272,x:31559,y:33300,varname:node_5272,prsc:2,code:ZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwAIAA9ACAAcABvAHcAKABhAGIAcwAoAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoAE4AbwByAG0AYQBsAEQAaQByAGUAYwB0AGkAbwBuACwAMAApACAAKQAuAHgAeQB6AC4AcgBnAGIAKQAsAEQAZQB0AGEAaQBsACkAOwANAAoAbABvAGMAYQBsAE4AbwByAG0AYQBsACAAPQAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAHIAZwBiACAALwAgACgAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AcgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgBnACAAKwAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKQA7AA0ACgANAAoAZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuACAAPQAgAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoACgAVwBvAHIAbABkAFAAbwBzAGkAdABpAG8AbgAuAHIAZwBiAC0ATwBiAGoAZQBjAHQAUABvAHMAaQB0AGkAbwBuAC4AcgBnAGIAKQAsADAAKQAgACkALgByAGcAYgAvAFMAYwBhAGwAZQA7AA0ACgBmAGwAbwBhAHQANAAgAHQAZQB4ADEAIAA9ACAAdABlAHgAMgBEACgAVABlAHgALABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuAC4AcgBnACkAOwANAAoAZgBsAG8AYQB0ADQAIAB0AGUAeAAyACAAPQAgAHQAZQB4ADIARAAoAFQAZQB4ACwAbABvAGMAYQBsAFAAbwBzAGkAdABpAG8AbgAuAHIAYgApADsADQAKAGYAbABvAGEAdAA0ACAAdABlAHgAMwAgAD0AIAB0AGUAeAAyAEQAKABUAGUAeAAsAGwAbwBjAGEAbABQAG8AcwBpAHQAaQBvAG4ALgBnAGIAKQA7AA0ACgANAAoAcgBlAHQAdQByAG4AIAAoAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKgB0AGUAeAAxAC4AcgBnAGIAIAArACAAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AZwAqAHQAZQB4ADIALgByAGcAYgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgByACoAdABlAHgAMwAuAHIAZwBiACkAOwA=,output:2,fname:DissolveMappingLocalTriplanar,width:562,height:182,input:12,input:2,input:2,input:2,input:0,input:0,input_1_label:Tex,input_2_label:WorldPosition,input_3_label:ObjectPosition,input_4_label:NormalDirection,input_5_label:Detail,input_6_label:Scale|A-5017-TEX,B-19-XYZ,C-5714-XYZ,D-1992-OUT,E-1247-OUT,F-4930-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5017,x:31091,y:32954,ptovrint:False,ptlb:Dissolve Noise,ptin:_DissolveNoise,varname:node_6058,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:05424ee8b833b064ab273c2b70d23ea0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:1247,x:31091,y:33567,ptovrint:False,ptlb:Dissolve Detail,ptin:_DissolveDetail,varname:node_6000,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4930,x:31091,y:33666,ptovrint:False,ptlb:Dissolve Scale,ptin:_DissolveScale,varname:node_4238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:19,x:31091,y:33113,varname:node_19,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:5714,x:31091,y:33235,varname:node_5714,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1992,x:31091,y:33379,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:2397,x:33246,y:32302,varname:node_2397,prsc:2|A-9399-OUT,B-6798-RGB;n:type:ShaderForge.SFN_Code,id:9399,x:31640,y:32481,varname:node_9399,prsc:2,code:ZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwAIAA9ACAAcABvAHcAKABhAGIAcwAoAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoAE4AbwByAG0AYQBsAEQAaQByAGUAYwB0AGkAbwBuACwAMAApACAAKQAuAHgAeQB6AC4AcgBnAGIAKQAsAEQAZQB0AGEAaQBsACkAOwANAAoAbABvAGMAYQBsAE4AbwByAG0AYQBsACAAPQAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAHIAZwBiACAALwAgACgAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AcgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgBnACAAKwAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKQA7AA0ACgANAAoAZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuACAAPQAgAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoACgAVwBvAHIAbABkAFAAbwBzAGkAdABpAG8AbgAuAHIAZwBiAC0ATwBiAGoAZQBjAHQAUABvAHMAaQB0AGkAbwBuAC4AcgBnAGIAKQAsADAAKQAgACkALgByAGcAYgAvAFMAYwBhAGwAZQA7AA0ACgBmAGwAbwBhAHQANAAgAHQAZQB4ADEAIAA9ACAAdABlAHgAMgBEACgAVABlAHgALABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuAC4AcgBnACkAOwANAAoAZgBsAG8AYQB0ADQAIAB0AGUAeAAyACAAPQAgAHQAZQB4ADIARAAoAFQAZQB4ACwAbABvAGMAYQBsAFAAbwBzAGkAdABpAG8AbgAuAHIAYgApADsADQAKAGYAbABvAGEAdAA0ACAAdABlAHgAMwAgAD0AIAB0AGUAeAAyAEQAKABUAGUAeAAsAGwAbwBjAGEAbABQAG8AcwBpAHQAaQBvAG4ALgBnAGIAKQA7AA0ACgANAAoAcgBlAHQAdQByAG4AIAAoAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKgB0AGUAeAAxAC4AcgBnAGIAIAArACAAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AZwAqAHQAZQB4ADIALgByAGcAYgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgByACoAdABlAHgAMwAuAHIAZwBiACkAOwA=,output:2,fname:DissolveLocalTriplanar,width:562,height:182,input:12,input:2,input:2,input:2,input:0,input:0,input_1_label:Tex,input_2_label:WorldPosition,input_3_label:ObjectPosition,input_4_label:NormalDirection,input_5_label:Detail,input_6_label:Scale|A-9894-TEX,B-19-XYZ,C-5714-XYZ,D-1992-OUT,E-4650-OUT,F-7208-OUT;n:type:ShaderForge.SFN_Code,id:7899,x:31640,y:32235,varname:node_7899,prsc:2,code:ZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwAIAA9ACAAcABvAHcAKABhAGIAcwAoAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoAE4AbwByAG0AYQBsAEQAaQByAGUAYwB0AGkAbwBuACwAMAApACAAKQAuAHgAeQB6AC4AcgBnAGIAKQAsAEQAZQB0AGEAaQBsACkAOwANAAoAbABvAGMAYQBsAE4AbwByAG0AYQBsACAAPQAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAHIAZwBiACAALwAgACgAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AcgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgBnACAAKwAgAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKQA7AA0ACgANAAoAZgBsAG8AYQB0ADMAIABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuACAAPQAgAG0AdQBsACgAIABfAFcAbwByAGwAZAAyAE8AYgBqAGUAYwB0ACwAIABmAGwAbwBhAHQANAAoACgAVwBvAHIAbABkAFAAbwBzAGkAdABpAG8AbgAuAHIAZwBiAC0ATwBiAGoAZQBjAHQAUABvAHMAaQB0AGkAbwBuAC4AcgBnAGIAKQAsADAAKQAgACkALgByAGcAYgAvAFMAYwBhAGwAZQA7AA0ACgBmAGwAbwBhAHQANAAgAHQAZQB4ADEAIAA9ACAAdABlAHgAMgBEACgAVABlAHgALABsAG8AYwBhAGwAUABvAHMAaQB0AGkAbwBuAC4AcgBnACkAOwANAAoAZgBsAG8AYQB0ADQAIAB0AGUAeAAyACAAPQAgAHQAZQB4ADIARAAoAFQAZQB4ACwAbABvAGMAYQBsAFAAbwBzAGkAdABpAG8AbgAuAHIAYgApADsADQAKAGYAbABvAGEAdAA0ACAAdABlAHgAMwAgAD0AIAB0AGUAeAAyAEQAKABUAGUAeAAsAGwAbwBjAGEAbABQAG8AcwBpAHQAaQBvAG4ALgBnAGIAKQA7AA0ACgANAAoAcgBlAHQAdQByAG4AIAAoAGwAbwBjAGEAbABOAG8AcgBtAGEAbAAuAGIAKgB0AGUAeAAxAC4AcgBnAGIAIAArACAAbABvAGMAYQBsAE4AbwByAG0AYQBsAC4AZwAqAHQAZQB4ADIALgByAGcAYgAgACsAIABsAG8AYwBhAGwATgBvAHIAbQBhAGwALgByACoAdABlAHgAMwAuAHIAZwBiACkAOwA=,output:2,fname:MaintexLocalTriplanar,width:562,height:182,input:12,input:2,input:2,input:2,input:0,input:0,input_1_label:Tex,input_2_label:WorldPosition,input_3_label:ObjectPosition,input_4_label:NormalDirection,input_5_label:Detail,input_6_label:Scale|A-7297-TEX,B-19-XYZ,C-5714-XYZ,D-1992-OUT,E-4650-OUT,F-7208-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7297,x:31091,y:32537,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_7297,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:191a11b8e4471d7479b650889ce7bd23,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9894,x:31091,y:32751,ptovrint:False,ptlb:Dissolve Texture,ptin:_DissolveTexture,varname:node_9894,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:30f3a350ae91f59429d2aa1f165d209e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:4650,x:31113,y:32281,ptovrint:False,ptlb:Detail,ptin:_Detail,varname:_Detail_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:7208,x:31113,y:32380,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:_Scale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Slider,id:6734,x:33271,y:31847,ptovrint:False,ptlb:Silhouette Intensity,ptin:_SilhouetteIntensity,varname:node_8352,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Fresnel,id:589,x:33428,y:31696,varname:node_589,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1259,x:33621,y:31544,varname:node_1259,prsc:2|A-556-RGB,B-589-OUT,C-6734-OUT;n:type:ShaderForge.SFN_Color,id:556,x:33428,y:31544,ptovrint:False,ptlb:Silhouette Color,ptin:_SilhouetteColor,varname:node_2589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:307,x:33930,y:32153,varname:node_307,prsc:2|A-1259-OUT,B-4087-OUT;proporder:4078-7297-6798-9894-7208-4650-5017-6735-9117-4930-1247-7547-2326-556-6734;pass:END;sub:END;*/

Shader "DCC/Dissolve V2" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _Maintex ("Maintex", 2D) = "white" {}
        _DissolveColor ("Dissolve Color", Color) = (1,1,1,1)
        _DissolveTexture ("Dissolve Texture", 2D) = "white" {}
        _Scale ("Scale", Float ) = 0.1
        _Detail ("Detail", Float ) = 2
        _DissolveNoise ("Dissolve Noise", 2D) = "white" {}
        _DissolveRamp ("Dissolve Ramp", 2D) = "white" {}
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0
        _DissolveScale ("Dissolve Scale", Float ) = 0.5
        _DissolveDetail ("Dissolve Detail", Float ) = 2
        _DissolveMax ("Dissolve Max", Range(-10, 10)) = 5
        _DissolveMin ("Dissolve Min", Range(-10, 10)) = -2
        _SilhouetteColor ("Silhouette Color", Color) = (1,1,1,1)
        _SilhouetteIntensity ("Silhouette Intensity", Range(0, 10)) = 0
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform sampler2D _DissolveRamp; uniform float4 _DissolveRamp_ST;
            uniform float4 _DissolveColor;
            float3 DissolveMappingLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _DissolveDetail;
            uniform float _DissolveScale;
            float3 DissolveLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            float3 MaintexLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _DissolveTexture; uniform float4 _DissolveTexture_ST;
            uniform float _Detail;
            uniform float _Scale;
            uniform float _SilhouetteIntensity;
            uniform float4 _SilhouetteColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_5663 = 0.0;
                float4 node_7279 = float4(saturate((_DissolveMin + ( ((1.0 - ((_DissolveAmount*1.5+-0.6)+DissolveMappingLocalTriplanar( _DissolveNoise , i.posWorld.rgb , objPos.rgb , i.normalDir , _DissolveDetail , _DissolveScale ))) - node_5663) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_5663))),0.0);
                float4 node_1591 = tex2D(_DissolveRamp,TRANSFORM_TEX(node_7279, _DissolveRamp));
                float3 diffuseColor = ((_SilhouetteColor.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))*_SilhouetteIntensity)+lerp((DissolveLocalTriplanar( _DissolveTexture , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale )*_DissolveColor.rgb),(MaintexLocalTriplanar( _Maintex , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale )*_MaintexColor.rgb),saturate(node_1591.r)));
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
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _MaintexColor;
            uniform float _DissolveAmount;
            uniform float _DissolveMax;
            uniform float _DissolveMin;
            uniform sampler2D _DissolveRamp; uniform float4 _DissolveRamp_ST;
            uniform float4 _DissolveColor;
            float3 DissolveMappingLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _DissolveNoise; uniform float4 _DissolveNoise_ST;
            uniform float _DissolveDetail;
            uniform float _DissolveScale;
            float3 DissolveLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            float3 MaintexLocalTriplanar( sampler2D Tex , float3 WorldPosition , float3 ObjectPosition , float3 NormalDirection , float Detail , float Scale ){
            float3 localNormal = pow(abs(mul( unity_WorldToObject, float4(NormalDirection,0) ).xyz.rgb),Detail);
            localNormal = localNormal.rgb / (localNormal.r + localNormal.g + localNormal.b);
            
            float3 localPosition = mul( unity_WorldToObject, float4((WorldPosition.rgb-ObjectPosition.rgb),0) ).rgb/Scale;
            float4 tex1 = tex2D(Tex,localPosition.rg);
            float4 tex2 = tex2D(Tex,localPosition.rb);
            float4 tex3 = tex2D(Tex,localPosition.gb);
            
            return (localNormal.b*tex1.rgb + localNormal.g*tex2.rgb + localNormal.r*tex3.rgb);
            }
            
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _DissolveTexture; uniform float4 _DissolveTexture_ST;
            uniform float _Detail;
            uniform float _Scale;
            uniform float _SilhouetteIntensity;
            uniform float4 _SilhouetteColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_5663 = 0.0;
                float4 node_7279 = float4(saturate((_DissolveMin + ( ((1.0 - ((_DissolveAmount*1.5+-0.6)+DissolveMappingLocalTriplanar( _DissolveNoise , i.posWorld.rgb , objPos.rgb , i.normalDir , _DissolveDetail , _DissolveScale ))) - node_5663) * (_DissolveMax - _DissolveMin) ) / (1.0 - node_5663))),0.0);
                float4 node_1591 = tex2D(_DissolveRamp,TRANSFORM_TEX(node_7279, _DissolveRamp));
                float3 diffColor = ((_SilhouetteColor.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))*_SilhouetteIntensity)+lerp((DissolveLocalTriplanar( _DissolveTexture , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale )*_DissolveColor.rgb),(MaintexLocalTriplanar( _Maintex , i.posWorld.rgb , objPos.rgb , i.normalDir , _Detail , _Scale )*_MaintexColor.rgb),saturate(node_1591.r)));
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
