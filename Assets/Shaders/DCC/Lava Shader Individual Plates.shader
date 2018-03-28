// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2039216,fgcg:0.6235294,fgcb:0.8274511,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32761,y:32595,varname:node_2865,prsc:2|diff-4117-OUT,spec-2098-OUT,gloss-2643-OUT,alpha-8229-OUT;n:type:ShaderForge.SFN_Multiply,id:7327,x:31668,y:31873,varname:node_7327,prsc:2|A-7920-RGB,B-3440-RGB;n:type:ShaderForge.SFN_Color,id:3440,x:31475,y:31966,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7920,x:31475,y:31781,ptovrint:True,ptlb:Maintex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fdc3268fe0d5514bbe874b997e89107,ntxv:0,isnm:False|UVIN-9325-OUT;n:type:ShaderForge.SFN_Slider,id:2098,x:32187,y:32450,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2643,x:32187,y:32552,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6564,x:32408,y:34029,ptovrint:False,ptlb:Maintex Normal Intensity,ptin:_MaintexNormalIntensity,varname:node_9862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:7531,x:32753,y:33867,varname:node_7531,prsc:2|A-652-OUT,B-5181-RGB,T-6564-OUT;n:type:ShaderForge.SFN_Vector3,id:652,x:32189,y:33861,varname:node_652,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:9298,x:32296,y:34609,ptovrint:False,ptlb:Maintex Emission Map,ptin:_MaintexEmissionMap,varname:node_2964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5150,x:32344,y:32289,varname:node_5150,prsc:2|A-7327-OUT,B-701-OUT,T-9770-OUT;n:type:ShaderForge.SFN_Tex2d,id:3055,x:29318,y:33969,varname:_A_copy,prsc:2,tex:201464c9ccd445544acb742fb3245737,ntxv:2,isnm:False|UVIN-6261-OUT,TEX-9155-TEX;n:type:ShaderForge.SFN_Multiply,id:3085,x:29506,y:34048,varname:node_3085,prsc:2|A-3055-RGB,B-6453-RGB;n:type:ShaderForge.SFN_Lerp,id:4480,x:32987,y:33816,varname:node_4480,prsc:2|A-7531-OUT,B-9087-OUT;n:type:ShaderForge.SFN_Lerp,id:9087,x:32752,y:34186,varname:node_9087,prsc:2|A-1190-OUT,B-5048-RGB,T-3134-OUT;n:type:ShaderForge.SFN_Vector3,id:1190,x:32188,y:34178,varname:node_1190,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:5048,x:32188,y:34325,ptovrint:False,ptlb:Overlay Normal Map,ptin:_OverlayNormalMap,varname:node_9017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5181,x:32188,y:33987,ptovrint:False,ptlb:Maintex Normal Map,ptin:_MaintexNormalMap,varname:_OverlayNormalMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:3134,x:32408,y:34129,ptovrint:False,ptlb:Overlay Normal Intensity,ptin:_OverlayNormalIntensity,varname:_NormalIntensityMaintex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9413,x:32296,y:34994,ptovrint:False,ptlb:Overlay Emission Map,ptin:_OverlayEmissionMap,varname:_MaintexEmissionMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:2591,x:32626,y:34571,varname:node_2591,prsc:2|A-9851-OUT,B-9298-RGB,T-4378-OUT;n:type:ShaderForge.SFN_Slider,id:4378,x:32139,y:34793,ptovrint:False,ptlb:Maintex Emission Intensity,ptin:_MaintexEmissionIntensity,varname:node_3275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Slider,id:949,x:32139,y:35187,ptovrint:False,ptlb:Overlay Emission Intensity,ptin:_OverlayEmissionIntensity,varname:node_5276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector3,id:9851,x:32296,y:34498,varname:node_9851,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:8760,x:32626,y:34770,varname:node_8760,prsc:2|A-5356-OUT,B-1973-OUT,T-949-OUT;n:type:ShaderForge.SFN_Vector3,id:5356,x:32296,y:34877,varname:node_5356,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:9239,x:32820,y:34571,varname:node_9239,prsc:2|A-2591-OUT,B-8760-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9269,x:28203,y:33596,ptovrint:False,ptlb:Overlay A U Speed,ptin:_OverlayAUSpeed,varname:node_9269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.004;n:type:ShaderForge.SFN_ValueProperty,id:5559,x:28203,y:33684,ptovrint:False,ptlb:Overlay A V Speed,ptin:_OverlayAVSpeed,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.004;n:type:ShaderForge.SFN_Append,id:9049,x:28426,y:33468,varname:node_9049,prsc:2|A-9269-OUT,B-5559-OUT;n:type:ShaderForge.SFN_TexCoord,id:1459,x:28646,y:33458,varname:node_1459,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6261,x:28847,y:33562,varname:node_6261,prsc:2|A-1459-UVOUT,B-5964-OUT;n:type:ShaderForge.SFN_Multiply,id:5964,x:28646,y:33629,varname:node_5964,prsc:2|A-9049-OUT,B-4177-T;n:type:ShaderForge.SFN_Time,id:4177,x:28426,y:33629,varname:node_4177,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9654,x:29956,y:32534,ptovrint:False,ptlb:Maintex U Speed,ptin:_MaintexUSpeed,varname:_OverlayUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.005;n:type:ShaderForge.SFN_ValueProperty,id:3350,x:29956,y:32622,ptovrint:False,ptlb:Maintex V Speed,ptin:_MaintexVSpeed,varname:_OverlayVspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.005;n:type:ShaderForge.SFN_Append,id:8202,x:30179,y:32406,varname:node_8202,prsc:2|A-9654-OUT,B-3350-OUT;n:type:ShaderForge.SFN_TexCoord,id:2570,x:30399,y:32396,varname:node_2570,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3654,x:30600,y:32500,varname:node_3654,prsc:2|A-2570-UVOUT,B-4712-OUT;n:type:ShaderForge.SFN_Multiply,id:4712,x:30399,y:32567,varname:node_4712,prsc:2|A-8202-OUT,B-3620-T;n:type:ShaderForge.SFN_Time,id:3620,x:30179,y:32567,varname:node_3620,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8935,x:31489,y:31188,ptovrint:False,ptlb:Foam Shore Depth,ptin:_FoamShoreDepth,varname:_ShoreFoamDepth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_DepthBlend,id:6058,x:31647,y:31188,varname:node_6058,prsc:2|DIST-8935-OUT;n:type:ShaderForge.SFN_Reciprocal,id:3867,x:31619,y:31465,varname:node_3867,prsc:2|IN-4809-OUT;n:type:ShaderForge.SFN_Multiply,id:6890,x:31808,y:31465,varname:node_6890,prsc:2|A-6058-OUT,B-3867-OUT;n:type:ShaderForge.SFN_Power,id:221,x:32024,y:31465,varname:node_221,prsc:2|VAL-6890-OUT,EXP-6689-OUT;n:type:ShaderForge.SFN_Clamp01,id:8534,x:32201,y:31465,varname:node_8534,prsc:2|IN-221-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6689,x:31808,y:31634,ptovrint:False,ptlb:Foam Shore Falloff,ptin:_FoamShoreFalloff,varname:node_6751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_Slider,id:4809,x:31172,y:31465,ptovrint:False,ptlb:Foam Shore Spread,ptin:_FoamShoreSpread,varname:node_9331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_DepthBlend,id:8229,x:32343,y:32928,varname:node_8229,prsc:2|DIST-7892-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7892,x:32157,y:32928,ptovrint:False,ptlb:Foam Shore Transparency Blend,ptin:_FoamShoreTransparencyBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_OneMinus,id:9311,x:32376,y:31465,varname:node_9311,prsc:2|IN-8534-OUT;n:type:ShaderForge.SFN_Lerp,id:4117,x:32579,y:32333,varname:node_4117,prsc:2|A-5150-OUT,B-3229-OUT,T-9311-OUT;n:type:ShaderForge.SFN_Color,id:4803,x:32119,y:32028,ptovrint:False,ptlb:Shore Color,ptin:_ShoreColor,varname:node_4803,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:265,x:32119,y:31844,ptovrint:False,ptlb:Shore,ptin:_Shore,varname:node_265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:782b4e5f7e347334e85a83026df95ed6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3229,x:32344,y:32149,varname:node_3229,prsc:2|A-265-RGB,B-4803-RGB;n:type:ShaderForge.SFN_Multiply,id:1973,x:32486,y:34994,varname:node_1973,prsc:2|A-9413-RGB,B-3927-RGB;n:type:ShaderForge.SFN_Color,id:3927,x:32296,y:35282,ptovrint:False,ptlb:Overlay Emission Color,ptin:_OverlayEmissionColor,varname:node_3927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:9325,x:31204,y:31717,varname:node_9325,prsc:2|A-3147-OUT,B-3654-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3147,x:30784,y:31700,varname:node_3147,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5527-OUT;n:type:ShaderForge.SFN_Power,id:5527,x:30607,y:31700,varname:node_5527,prsc:2|VAL-5295-RGB,EXP-9777-OUT;n:type:ShaderForge.SFN_Slider,id:9777,x:30233,y:31811,ptovrint:False,ptlb:Water Texture Wobble,ptin:_WaterTextureWobble,varname:_node_7173_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:5295,x:30390,y:31919,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_WindNoiseTexture3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:37990a6f54d604844a48aac94548194c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:6691,x:29318,y:33737,ptovrint:False,ptlb:Overlay Mask A,ptin:_OverlayMaskA,varname:node_6691,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:16f375fdc2fff30498dc61127350b1bb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5058,x:29587,y:33440,varname:node_5058,prsc:2,tex:16f375fdc2fff30498dc61127350b1bb,ntxv:0,isnm:False|UVIN-2380-OUT,TEX-6691-TEX;n:type:ShaderForge.SFN_Clamp01,id:701,x:31895,y:33623,varname:node_701,prsc:2|IN-585-OUT;n:type:ShaderForge.SFN_Sin,id:5999,x:29790,y:33031,varname:node_5999,prsc:2|IN-3859-OUT;n:type:ShaderForge.SFN_Multiply,id:3859,x:29587,y:33031,varname:node_3859,prsc:2|A-6582-OUT,B-3010-OUT;n:type:ShaderForge.SFN_Slider,id:3010,x:29161,y:33181,ptovrint:False,ptlb:Overlay A Fade Speed,ptin:_OverlayAFadeSpeed,varname:node_3010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:1209,x:29776,y:33280,varname:node_1209,prsc:2|A-4527-OUT,B-5058-R;n:type:ShaderForge.SFN_Slider,id:2218,x:29161,y:33507,ptovrint:False,ptlb:Overlay Mask A Intensity,ptin:_OverlayMaskAIntensity,varname:node_2218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.62,max:1;n:type:ShaderForge.SFN_Add,id:2380,x:29318,y:33583,varname:node_2380,prsc:2|A-3147-OUT,B-6261-OUT;n:type:ShaderForge.SFN_Round,id:4493,x:30711,y:33584,varname:node_4493,prsc:2|IN-1209-OUT;n:type:ShaderForge.SFN_Round,id:105,x:30711,y:33746,varname:node_105,prsc:2|IN-439-OUT;n:type:ShaderForge.SFN_Lerp,id:4031,x:31469,y:33443,varname:node_4031,prsc:2|A-2557-OUT,B-3717-OUT,T-5284-OUT;n:type:ShaderForge.SFN_Abs,id:1023,x:29997,y:33031,varname:node_1023,prsc:2|IN-5999-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4527,x:29587,y:33280,varname:node_4527,prsc:2|IN-1023-OUT,IMIN-8467-OUT,IMAX-6982-OUT,OMIN-4831-OUT,OMAX-2218-OUT;n:type:ShaderForge.SFN_Vector1,id:8467,x:29318,y:33267,varname:node_8467,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6982,x:29318,y:33329,varname:node_6982,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:4831,x:29161,y:33409,ptovrint:False,ptlb:Overlay Mask A Offset,ptin:_OverlayMaskAOffset,varname:_OverlayMaskAIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:4332,x:29161,y:33031,varname:node_4332,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:9155,x:27727,y:33808,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_9155,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:201464c9ccd445544acb742fb3245737,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Round,id:631,x:30711,y:33897,varname:node_631,prsc:2|IN-3735-OUT;n:type:ShaderForge.SFN_Lerp,id:585,x:31663,y:33572,varname:node_585,prsc:2|A-4031-OUT,B-6258-OUT,T-872-OUT;n:type:ShaderForge.SFN_Multiply,id:9252,x:29511,y:35431,varname:node_9252,prsc:2|A-3019-RGB,B-6453-RGB;n:type:ShaderForge.SFN_Color,id:6453,x:27727,y:34006,ptovrint:False,ptlb:Overlay Color_copy,ptin:_OverlayColor_copy,varname:_OverlayColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3400,x:28208,y:34979,ptovrint:False,ptlb:Overlay B U Speed,ptin:_OverlayBUSpeed,varname:_OverlayAUSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.006;n:type:ShaderForge.SFN_ValueProperty,id:9199,x:28208,y:35067,ptovrint:False,ptlb:Overlay B V Speed,ptin:_OverlayBVSpeed,varname:_OverlayAVSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.006;n:type:ShaderForge.SFN_Append,id:9529,x:28431,y:34851,varname:node_9529,prsc:2|A-3400-OUT,B-9199-OUT;n:type:ShaderForge.SFN_TexCoord,id:1708,x:28651,y:34841,varname:node_1708,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1673,x:28852,y:34945,varname:node_1673,prsc:2|A-1708-UVOUT,B-7125-OUT;n:type:ShaderForge.SFN_Multiply,id:7125,x:28651,y:35012,varname:node_7125,prsc:2|A-9529-OUT,B-4971-T;n:type:ShaderForge.SFN_Time,id:4971,x:28431,y:35012,varname:node_4971,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:2528,x:29323,y:35120,ptovrint:False,ptlb:Overlay Mask B,ptin:_OverlayMaskB,varname:_OverlayMaskA_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea059a6febe5ab54bbeef8b8b90ea453,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Sin,id:4126,x:29795,y:34414,varname:node_4126,prsc:2|IN-3530-OUT;n:type:ShaderForge.SFN_Multiply,id:3530,x:29592,y:34414,varname:node_3530,prsc:2|A-6078-OUT,B-546-OUT;n:type:ShaderForge.SFN_Slider,id:546,x:29166,y:34564,ptovrint:False,ptlb:Overlay B Fade Speed,ptin:_OverlayBFadeSpeed,varname:_OverlayAFadeSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:439,x:29781,y:34663,varname:node_439,prsc:2|A-8488-OUT,B-4168-R;n:type:ShaderForge.SFN_Add,id:5834,x:29323,y:34966,varname:node_5834,prsc:2|A-3147-OUT,B-1673-OUT;n:type:ShaderForge.SFN_Abs,id:2102,x:30002,y:34414,varname:node_2102,prsc:2|IN-4126-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8488,x:29592,y:34663,varname:node_8488,prsc:2|IN-2102-OUT,IMIN-4343-OUT,IMAX-6798-OUT,OMIN-7035-OUT,OMAX-8748-OUT;n:type:ShaderForge.SFN_Vector1,id:4343,x:29323,y:34650,varname:node_4343,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6798,x:29323,y:34712,varname:node_6798,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:7035,x:29166,y:34792,ptovrint:False,ptlb:Overlay Mask B Offset,ptin:_OverlayMaskBOffset,varname:_OverlayMaskAOffset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:896,x:29166,y:34399,varname:node_896,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1267,x:29320,y:36704,varname:_node_6590_copy,prsc:2,tex:201464c9ccd445544acb742fb3245737,ntxv:2,isnm:False|UVIN-2919-OUT,TEX-9155-TEX;n:type:ShaderForge.SFN_Multiply,id:2462,x:29508,y:36783,varname:node_2462,prsc:2|A-1267-RGB,B-6453-RGB;n:type:ShaderForge.SFN_ValueProperty,id:8518,x:28205,y:36331,ptovrint:False,ptlb:Overlay C U Speed,ptin:_OverlayCUSpeed,varname:_OverlayAUSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.008;n:type:ShaderForge.SFN_ValueProperty,id:1889,x:28205,y:36419,ptovrint:False,ptlb:Overlay C V Speed,ptin:_OverlayCVSpeed,varname:_OverlayAVSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.008;n:type:ShaderForge.SFN_Append,id:8680,x:28428,y:36203,varname:node_8680,prsc:2|A-8518-OUT,B-1889-OUT;n:type:ShaderForge.SFN_TexCoord,id:7187,x:28648,y:36193,varname:node_7187,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:2919,x:28849,y:36297,varname:node_2919,prsc:2|A-7187-UVOUT,B-9173-OUT;n:type:ShaderForge.SFN_Multiply,id:9173,x:28648,y:36364,varname:node_9173,prsc:2|A-8680-OUT,B-5082-T;n:type:ShaderForge.SFN_Time,id:5082,x:28428,y:36364,varname:node_5082,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:9405,x:29320,y:36472,ptovrint:False,ptlb:Overlay Mask C,ptin:_OverlayMaskC,varname:_OverlayMaskA_copy_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9abb97f968d94e940b59cb3b8c201067,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Sin,id:6088,x:29792,y:35766,varname:node_6088,prsc:2|IN-226-OUT;n:type:ShaderForge.SFN_Multiply,id:226,x:29589,y:35766,varname:node_226,prsc:2|A-4092-OUT,B-1747-OUT;n:type:ShaderForge.SFN_Slider,id:1747,x:29163,y:35916,ptovrint:False,ptlb:Overlay C Fade Speed,ptin:_OverlayCFadeSpeed,varname:_OverlayAFadeSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:3735,x:29778,y:36015,varname:node_3735,prsc:2|A-697-OUT,B-5125-R;n:type:ShaderForge.SFN_Slider,id:2501,x:29163,y:36242,ptovrint:False,ptlb:Overlay Mask C Intensity,ptin:_OverlayMaskCIntensity,varname:_OverlayMaskAIntensity_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.62,max:1;n:type:ShaderForge.SFN_Add,id:8588,x:29320,y:36318,varname:node_8588,prsc:2|A-3147-OUT,B-2919-OUT;n:type:ShaderForge.SFN_Abs,id:5406,x:29999,y:35766,varname:node_5406,prsc:2|IN-6088-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:697,x:29589,y:36015,varname:node_697,prsc:2|IN-5406-OUT,IMIN-4850-OUT,IMAX-3512-OUT,OMIN-5760-OUT,OMAX-2501-OUT;n:type:ShaderForge.SFN_Vector1,id:4850,x:29320,y:36002,varname:node_4850,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3512,x:29320,y:36064,varname:node_3512,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:5760,x:29163,y:36144,ptovrint:False,ptlb:Overlay Mask C Offset,ptin:_OverlayMaskCOffset,varname:_OverlayMaskAOffset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:5357,x:29163,y:35753,varname:node_5357,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4168,x:29592,y:34809,varname:node_4168,prsc:2,tex:ea059a6febe5ab54bbeef8b8b90ea453,ntxv:0,isnm:False|UVIN-5834-OUT,TEX-2528-TEX;n:type:ShaderForge.SFN_Tex2d,id:5125,x:29589,y:36159,varname:node_5125,prsc:2,tex:9abb97f968d94e940b59cb3b8c201067,ntxv:0,isnm:False|UVIN-8588-OUT,TEX-9405-TEX;n:type:ShaderForge.SFN_Slider,id:8748,x:29160,y:34883,ptovrint:False,ptlb:Overlay Mask B Intensity,ptin:_OverlayMaskBIntensity,varname:node_8748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.62,max:1;n:type:ShaderForge.SFN_Slider,id:8616,x:29004,y:32961,ptovrint:False,ptlb:Overlay A Time Offset,ptin:_OverlayATimeOffset,varname:node_8616,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Add,id:6582,x:29318,y:33031,varname:node_6582,prsc:2|A-8616-OUT,B-4332-T;n:type:ShaderForge.SFN_Slider,id:9555,x:29009,y:34329,ptovrint:False,ptlb:Overlay B Time Offset,ptin:_OverlayBTimeOffset,varname:_OverlayATimeOffset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:10;n:type:ShaderForge.SFN_Add,id:6078,x:29323,y:34399,varname:node_6078,prsc:2|A-9555-OUT,B-896-T;n:type:ShaderForge.SFN_Slider,id:3793,x:29006,y:35683,ptovrint:False,ptlb:Overlay C Time Offset,ptin:_OverlayCTimeOffset,varname:_OverlayATimeOffset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6,max:10;n:type:ShaderForge.SFN_Add,id:4092,x:29320,y:35753,varname:node_4092,prsc:2|A-3793-OUT,B-5357-T;n:type:ShaderForge.SFN_Lerp,id:2557,x:31375,y:33741,varname:node_2557,prsc:2|A-3724-OUT,B-3085-OUT,T-7336-OUT;n:type:ShaderForge.SFN_Lerp,id:3717,x:31375,y:33903,varname:node_3717,prsc:2|A-3724-OUT,B-9252-OUT,T-5284-OUT;n:type:ShaderForge.SFN_Lerp,id:6258,x:31375,y:34054,varname:node_6258,prsc:2|A-3724-OUT,B-2462-OUT,T-872-OUT;n:type:ShaderForge.SFN_Vector1,id:3724,x:30547,y:33691,varname:node_3724,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:3019,x:29323,y:35313,varname:node_3019,prsc:2,tex:201464c9ccd445544acb742fb3245737,ntxv:0,isnm:False|UVIN-1673-OUT,TEX-9155-TEX;n:type:ShaderForge.SFN_Lerp,id:9770,x:31640,y:33269,varname:node_9770,prsc:2|A-938-OUT,B-631-OUT,T-631-OUT;n:type:ShaderForge.SFN_Lerp,id:938,x:31446,y:33140,varname:node_938,prsc:2|A-4493-OUT,B-105-OUT,T-105-OUT;n:type:ShaderForge.SFN_Color,id:2843,x:30698,y:33335,ptovrint:False,ptlb:node_2843,ptin:_node_2843,varname:node_2843,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:4854,x:30916,y:33321,ptovrint:False,ptlb:node_2843_copy,ptin:_node_2843_copy,varname:_node_2843_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5130,x:31103,y:33321,ptovrint:False,ptlb:node_2843_copy_copy,ptin:_node_2843_copy_copy,varname:_node_2843_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:7336,x:31001,y:33707,varname:node_7336,prsc:2|IN-4493-OUT;n:type:ShaderForge.SFN_Clamp01,id:5284,x:31001,y:33833,varname:node_5284,prsc:2|IN-105-OUT;n:type:ShaderForge.SFN_Clamp01,id:872,x:31001,y:33962,varname:node_872,prsc:2|IN-631-OUT;proporder:3440-7920-2643-2098-6564-5181-9298-4378-9654-3350-5048-3134-9413-949-7892-8935-6689-4809-4803-265-3927-9777-5295-9155-6691-2528-9405-6453-2218-8748-2501-3010-546-1747-4831-7035-5760-9269-5559-3400-9199-8518-1889-8616-3793-9555-2843-4854-5130;pass:END;sub:END;*/

Shader "DCC/Lava Shader Individual Plates" {
    Properties {
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _MainTex ("Maintex", 2D) = "white" {}
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Metallic ("Metallic", Range(0, 1)) = 0
        _MaintexNormalIntensity ("Maintex Normal Intensity", Range(0, 1)) = 0
        _MaintexNormalMap ("Maintex Normal Map", 2D) = "bump" {}
        _MaintexEmissionMap ("Maintex Emission Map", 2D) = "black" {}
        _MaintexEmissionIntensity ("Maintex Emission Intensity", Range(0, 1)) = 0.2
        _MaintexUSpeed ("Maintex U Speed", Float ) = 0.005
        _MaintexVSpeed ("Maintex V Speed", Float ) = 0.005
        _OverlayNormalMap ("Overlay Normal Map", 2D) = "bump" {}
        _OverlayNormalIntensity ("Overlay Normal Intensity", Range(0, 1)) = 0
        _OverlayEmissionMap ("Overlay Emission Map", 2D) = "black" {}
        _OverlayEmissionIntensity ("Overlay Emission Intensity", Range(0, 1)) = 1
        _FoamShoreTransparencyBlend ("Foam Shore Transparency Blend", Float ) = 0.1
        _FoamShoreDepth ("Foam Shore Depth", Float ) = 0.4
        _FoamShoreFalloff ("Foam Shore Falloff", Float ) = 0.4
        _FoamShoreSpread ("Foam Shore Spread", Range(0, 1)) = 1
        _ShoreColor ("Shore Color", Color) = (1,1,1,1)
        _Shore ("Shore", 2D) = "white" {}
        _OverlayEmissionColor ("Overlay Emission Color", Color) = (1,0.5,0,1)
        _WaterTextureWobble ("Water Texture Wobble", Range(0, 0.1)) = 0.01
        _Noise ("Noise", 2D) = "white" {}
        _Overlay ("Overlay", 2D) = "white" {}
        _OverlayMaskA ("Overlay Mask A", 2D) = "white" {}
        _OverlayMaskB ("Overlay Mask B", 2D) = "white" {}
        _OverlayMaskC ("Overlay Mask C", 2D) = "white" {}
        _OverlayColor_copy ("Overlay Color_copy", Color) = (1,1,1,1)
        _OverlayMaskAIntensity ("Overlay Mask A Intensity", Range(0.6, 1)) = 0.62
        _OverlayMaskBIntensity ("Overlay Mask B Intensity", Range(0.6, 1)) = 0.62
        _OverlayMaskCIntensity ("Overlay Mask C Intensity", Range(0.6, 1)) = 0.62
        _OverlayAFadeSpeed ("Overlay A Fade Speed", Range(0, 1)) = 0.2
        _OverlayBFadeSpeed ("Overlay B Fade Speed", Range(0, 1)) = 0.2
        _OverlayCFadeSpeed ("Overlay C Fade Speed", Range(0, 1)) = 0.2
        _OverlayMaskAOffset ("Overlay Mask A Offset", Range(0, 1)) = 0.5
        _OverlayMaskBOffset ("Overlay Mask B Offset", Range(0, 1)) = 0.5
        _OverlayMaskCOffset ("Overlay Mask C Offset", Range(0, 1)) = 0.5
        _OverlayAUSpeed ("Overlay A U Speed", Float ) = 0.004
        _OverlayAVSpeed ("Overlay A V Speed", Float ) = 0.004
        _OverlayBUSpeed ("Overlay B U Speed", Float ) = 0.006
        _OverlayBVSpeed ("Overlay B V Speed", Float ) = 0.006
        _OverlayCUSpeed ("Overlay C U Speed", Float ) = 0.008
        _OverlayCVSpeed ("Overlay C V Speed", Float ) = 0.008
        _OverlayATimeOffset ("Overlay A Time Offset", Range(0, 10)) = 0
        _OverlayCTimeOffset ("Overlay C Time Offset", Range(0, 10)) = 6
        _OverlayBTimeOffset ("Overlay B Time Offset", Range(0, 10)) = 3
        _node_2843 ("node_2843", Color) = (1,0,0,1)
        _node_2843_copy ("node_2843_copy", Color) = (0,1,0,1)
        _node_2843_copy_copy ("node_2843_copy_copy", Color) = (0,0,1,1)
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _OverlayAUSpeed;
            uniform float _OverlayAVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _FoamShoreDepth;
            uniform float _FoamShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float _FoamShoreTransparencyBlend;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _WaterTextureWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float4 _OverlayColor_copy;
            uniform float _OverlayBUSpeed;
            uniform float _OverlayBVSpeed;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform float _OverlayCUSpeed;
            uniform float _OverlayCVSpeed;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
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
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3147 = pow(_Noise_var.rgb,_WaterTextureWobble).rg;
                float4 node_3620 = _Time;
                float2 node_9325 = (node_3147+(i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9325, _MainTex));
                float node_3724 = 0.0;
                float4 node_4177 = _Time;
                float2 node_6261 = (i.uv0+(float2(_OverlayAUSpeed,_OverlayAVSpeed)*node_4177.g));
                float4 _A_copy = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float2 node_2380 = (node_3147+node_6261);
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_2380, _OverlayMaskA));
                float node_4493 = round(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_4971 = _Time;
                float2 node_1673 = (i.uv0+(float2(_OverlayBUSpeed,_OverlayBVSpeed)*node_4971.g));
                float4 node_3019 = tex2D(_Overlay,TRANSFORM_TEX(node_1673, _Overlay));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float2 node_5834 = (node_3147+node_1673);
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_5834, _OverlayMaskB));
                float node_105 = round(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_5284 = saturate(node_105);
                float4 node_5082 = _Time;
                float2 node_2919 = (i.uv0+(float2(_OverlayCUSpeed,_OverlayCVSpeed)*node_5082.g));
                float4 _node_6590_copy = tex2D(_Overlay,TRANSFORM_TEX(node_2919, _Overlay));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float2 node_8588 = (node_3147+node_2919);
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8588, _OverlayMaskC));
                float node_631 = round(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_872 = saturate(node_631);
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffuseColor = lerp(lerp((_MainTex_var.rgb*_MaintexColor.rgb),saturate(lerp(lerp(lerp(float3(node_3724,node_3724,node_3724),(_A_copy.rgb*_OverlayColor_copy.rgb),saturate(node_4493)),lerp(float3(node_3724,node_3724,node_3724),(node_3019.rgb*_OverlayColor_copy.rgb),node_5284),node_5284),lerp(float3(node_3724,node_3724,node_3724),(_node_6590_copy.rgb*_OverlayColor_copy.rgb),node_872),node_872)),lerp(lerp(node_4493,node_105,node_105),node_631,node_631)),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_FoamShoreDepth)*(1.0 / _FoamShoreSpread)),_FoamShoreFalloff)))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,saturate((sceneZ-partZ)/_FoamShoreTransparencyBlend));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _OverlayAUSpeed;
            uniform float _OverlayAVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _FoamShoreDepth;
            uniform float _FoamShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float _FoamShoreTransparencyBlend;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _WaterTextureWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float4 _OverlayColor_copy;
            uniform float _OverlayBUSpeed;
            uniform float _OverlayBVSpeed;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform float _OverlayCUSpeed;
            uniform float _OverlayCVSpeed;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3147 = pow(_Noise_var.rgb,_WaterTextureWobble).rg;
                float4 node_3620 = _Time;
                float2 node_9325 = (node_3147+(i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9325, _MainTex));
                float node_3724 = 0.0;
                float4 node_4177 = _Time;
                float2 node_6261 = (i.uv0+(float2(_OverlayAUSpeed,_OverlayAVSpeed)*node_4177.g));
                float4 _A_copy = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float2 node_2380 = (node_3147+node_6261);
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_2380, _OverlayMaskA));
                float node_4493 = round(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_4971 = _Time;
                float2 node_1673 = (i.uv0+(float2(_OverlayBUSpeed,_OverlayBVSpeed)*node_4971.g));
                float4 node_3019 = tex2D(_Overlay,TRANSFORM_TEX(node_1673, _Overlay));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float2 node_5834 = (node_3147+node_1673);
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_5834, _OverlayMaskB));
                float node_105 = round(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_5284 = saturate(node_105);
                float4 node_5082 = _Time;
                float2 node_2919 = (i.uv0+(float2(_OverlayCUSpeed,_OverlayCVSpeed)*node_5082.g));
                float4 _node_6590_copy = tex2D(_Overlay,TRANSFORM_TEX(node_2919, _Overlay));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float2 node_8588 = (node_3147+node_2919);
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8588, _OverlayMaskC));
                float node_631 = round(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_872 = saturate(node_631);
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffuseColor = lerp(lerp((_MainTex_var.rgb*_MaintexColor.rgb),saturate(lerp(lerp(lerp(float3(node_3724,node_3724,node_3724),(_A_copy.rgb*_OverlayColor_copy.rgb),saturate(node_4493)),lerp(float3(node_3724,node_3724,node_3724),(node_3019.rgb*_OverlayColor_copy.rgb),node_5284),node_5284),lerp(float3(node_3724,node_3724,node_3724),(_node_6590_copy.rgb*_OverlayColor_copy.rgb),node_872),node_872)),lerp(lerp(node_4493,node_105,node_105),node_631,node_631)),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_FoamShoreDepth)*(1.0 / _FoamShoreSpread)),_FoamShoreFalloff)))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * saturate((sceneZ-partZ)/_FoamShoreTransparencyBlend),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _MaintexColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _OverlayAUSpeed;
            uniform float _OverlayAVSpeed;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _FoamShoreDepth;
            uniform float _FoamShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _WaterTextureWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float4 _OverlayColor_copy;
            uniform float _OverlayBUSpeed;
            uniform float _OverlayBVSpeed;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform float _OverlayCUSpeed;
            uniform float _OverlayCVSpeed;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3147 = pow(_Noise_var.rgb,_WaterTextureWobble).rg;
                float4 node_3620 = _Time;
                float2 node_9325 = (node_3147+(i.uv0+(float2(_MaintexUSpeed,_MaintexVSpeed)*node_3620.g)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9325, _MainTex));
                float node_3724 = 0.0;
                float4 node_4177 = _Time;
                float2 node_6261 = (i.uv0+(float2(_OverlayAUSpeed,_OverlayAVSpeed)*node_4177.g));
                float4 _A_copy = tex2D(_Overlay,TRANSFORM_TEX(node_6261, _Overlay));
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float2 node_2380 = (node_3147+node_6261);
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_2380, _OverlayMaskA));
                float node_4493 = round(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_4971 = _Time;
                float2 node_1673 = (i.uv0+(float2(_OverlayBUSpeed,_OverlayBVSpeed)*node_4971.g));
                float4 node_3019 = tex2D(_Overlay,TRANSFORM_TEX(node_1673, _Overlay));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float2 node_5834 = (node_3147+node_1673);
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_5834, _OverlayMaskB));
                float node_105 = round(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_5284 = saturate(node_105);
                float4 node_5082 = _Time;
                float2 node_2919 = (i.uv0+(float2(_OverlayCUSpeed,_OverlayCVSpeed)*node_5082.g));
                float4 _node_6590_copy = tex2D(_Overlay,TRANSFORM_TEX(node_2919, _Overlay));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float2 node_8588 = (node_3147+node_2919);
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8588, _OverlayMaskC));
                float node_631 = round(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_872 = saturate(node_631);
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffColor = lerp(lerp((_MainTex_var.rgb*_MaintexColor.rgb),saturate(lerp(lerp(lerp(float3(node_3724,node_3724,node_3724),(_A_copy.rgb*_OverlayColor_copy.rgb),saturate(node_4493)),lerp(float3(node_3724,node_3724,node_3724),(node_3019.rgb*_OverlayColor_copy.rgb),node_5284),node_5284),lerp(float3(node_3724,node_3724,node_3724),(_node_6590_copy.rgb*_OverlayColor_copy.rgb),node_872),node_872)),lerp(lerp(node_4493,node_105,node_105),node_631,node_631)),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_FoamShoreDepth)*(1.0 / _FoamShoreSpread)),_FoamShoreFalloff))));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
