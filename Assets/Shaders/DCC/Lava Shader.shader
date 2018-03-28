// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32761,y:32595,varname:node_2865,prsc:2|diff-4117-OUT,spec-2098-OUT,gloss-2643-OUT,emission-7418-OUT,alpha-8229-OUT;n:type:ShaderForge.SFN_Multiply,id:7327,x:31668,y:31873,varname:node_7327,prsc:2|A-7920-RGB,B-3440-RGB;n:type:ShaderForge.SFN_Color,id:3440,x:31475,y:31966,ptovrint:False,ptlb:Maintex Color,ptin:_MaintexColor,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7920,x:31475,y:31781,ptovrint:True,ptlb:Maintex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fdc3268fe0d5514bbe874b997e89107,ntxv:0,isnm:False|UVIN-7176-OUT;n:type:ShaderForge.SFN_Slider,id:2098,x:32187,y:32450,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2643,x:32187,y:32552,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:5150,x:32144,y:32271,varname:node_5150,prsc:2|A-7327-OUT,B-3085-OUT,T-1674-OUT;n:type:ShaderForge.SFN_Tex2d,id:3055,x:29149,y:32576,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:_A_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:201464c9ccd445544acb742fb3245737,ntxv:2,isnm:False|UVIN-8044-OUT;n:type:ShaderForge.SFN_Multiply,id:3085,x:29344,y:32668,varname:node_3085,prsc:2|A-3055-RGB,B-6453-RGB;n:type:ShaderForge.SFN_Append,id:8202,x:27579,y:32395,varname:node_8202,prsc:2|A-5340-OUT,B-2156-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8935,x:31489,y:31188,ptovrint:False,ptlb:Shore Depth,ptin:_ShoreDepth,varname:_ShoreFoamDepth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_DepthBlend,id:6058,x:31647,y:31188,varname:node_6058,prsc:2|DIST-8935-OUT;n:type:ShaderForge.SFN_Reciprocal,id:3867,x:31619,y:31465,varname:node_3867,prsc:2|IN-4809-OUT;n:type:ShaderForge.SFN_Multiply,id:6890,x:31808,y:31465,varname:node_6890,prsc:2|A-6058-OUT,B-3867-OUT;n:type:ShaderForge.SFN_Power,id:221,x:32024,y:31465,varname:node_221,prsc:2|VAL-6890-OUT,EXP-6689-OUT;n:type:ShaderForge.SFN_Clamp01,id:8534,x:32201,y:31465,varname:node_8534,prsc:2|IN-221-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6689,x:31808,y:31634,ptovrint:False,ptlb:Shore Falloff,ptin:_ShoreFalloff,varname:node_6751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_Slider,id:4809,x:31172,y:31465,ptovrint:False,ptlb:Foam Shore Spread,ptin:_FoamShoreSpread,varname:node_9331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_DepthBlend,id:8229,x:32427,y:32990,varname:node_8229,prsc:2|DIST-7892-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7892,x:32241,y:32990,ptovrint:False,ptlb:Shore Transparency Blend,ptin:_ShoreTransparencyBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_OneMinus,id:9311,x:32376,y:31465,varname:node_9311,prsc:2|IN-8534-OUT;n:type:ShaderForge.SFN_Lerp,id:4117,x:32579,y:32333,varname:node_4117,prsc:2|A-5150-OUT,B-3229-OUT,T-9311-OUT;n:type:ShaderForge.SFN_Color,id:4803,x:32119,y:32028,ptovrint:False,ptlb:Shore Color,ptin:_ShoreColor,varname:node_4803,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:265,x:32119,y:31844,ptovrint:False,ptlb:Shore,ptin:_Shore,varname:node_265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:782b4e5f7e347334e85a83026df95ed6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3229,x:32344,y:32149,varname:node_3229,prsc:2|A-265-RGB,B-4803-RGB;n:type:ShaderForge.SFN_ComponentMask,id:3147,x:27823,y:33502,varname:node_3147,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5527-OUT;n:type:ShaderForge.SFN_Power,id:5527,x:27646,y:33502,varname:node_5527,prsc:2|VAL-5295-RGB,EXP-9777-OUT;n:type:ShaderForge.SFN_Slider,id:9777,x:27272,y:33522,ptovrint:False,ptlb:Lava Wobble,ptin:_LavaWobble,varname:_node_7173_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.003,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:5295,x:27429,y:33336,ptovrint:False,ptlb:Lava Wobble Noise,ptin:_LavaWobbleNoise,varname:_WindNoiseTexture3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:37990a6f54d604844a48aac94548194c,ntxv:0,isnm:False|UVIN-5933-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6691,x:29318,y:33737,ptovrint:False,ptlb:Overlay Mask A,ptin:_OverlayMaskA,varname:node_6691,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:16f375fdc2fff30498dc61127350b1bb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5058,x:29587,y:33440,varname:node_5058,prsc:2,tex:16f375fdc2fff30498dc61127350b1bb,ntxv:0,isnm:False|UVIN-8044-OUT,TEX-6691-TEX;n:type:ShaderForge.SFN_Sin,id:5999,x:29790,y:33031,varname:node_5999,prsc:2|IN-3859-OUT;n:type:ShaderForge.SFN_Multiply,id:3859,x:29587,y:33031,varname:node_3859,prsc:2|A-6582-OUT,B-3010-OUT;n:type:ShaderForge.SFN_Slider,id:3010,x:29161,y:33181,ptovrint:False,ptlb:Overlay A Fade Speed,ptin:_OverlayAFadeSpeed,varname:node_3010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:1209,x:29770,y:33440,varname:node_1209,prsc:2|A-4527-OUT,B-5058-R;n:type:ShaderForge.SFN_Slider,id:2218,x:29161,y:33507,ptovrint:False,ptlb:Overlay Mask A Intensity,ptin:_OverlayMaskAIntensity,varname:node_2218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.64,max:1;n:type:ShaderForge.SFN_Abs,id:1023,x:29997,y:33031,varname:node_1023,prsc:2|IN-5999-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4527,x:29587,y:33280,varname:node_4527,prsc:2|IN-1023-OUT,IMIN-8467-OUT,IMAX-6982-OUT,OMIN-4831-OUT,OMAX-2218-OUT;n:type:ShaderForge.SFN_Vector1,id:8467,x:29318,y:33267,varname:node_8467,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6982,x:29318,y:33329,varname:node_6982,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:4831,x:29161,y:33409,ptovrint:False,ptlb:Overlay Mask A Offset,ptin:_OverlayMaskAOffset,varname:_OverlayMaskAIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:4332,x:29161,y:33031,varname:node_4332,prsc:2;n:type:ShaderForge.SFN_Color,id:6453,x:29154,y:32762,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:_OverlayColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2528,x:29323,y:34804,ptovrint:False,ptlb:Overlay Mask B,ptin:_OverlayMaskB,varname:_OverlayMaskA_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea059a6febe5ab54bbeef8b8b90ea453,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Sin,id:4126,x:29795,y:34098,varname:node_4126,prsc:2|IN-3530-OUT;n:type:ShaderForge.SFN_Multiply,id:3530,x:29592,y:34098,varname:node_3530,prsc:2|A-6078-OUT,B-546-OUT;n:type:ShaderForge.SFN_Slider,id:546,x:29166,y:34248,ptovrint:False,ptlb:Overlay B Fade Speed,ptin:_OverlayBFadeSpeed,varname:_OverlayAFadeSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:439,x:29775,y:34493,varname:node_439,prsc:2|A-8488-OUT,B-4168-R;n:type:ShaderForge.SFN_Abs,id:2102,x:30002,y:34098,varname:node_2102,prsc:2|IN-4126-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8488,x:29592,y:34347,varname:node_8488,prsc:2|IN-2102-OUT,IMIN-4343-OUT,IMAX-6798-OUT,OMIN-7035-OUT,OMAX-8748-OUT;n:type:ShaderForge.SFN_Vector1,id:4343,x:29323,y:34334,varname:node_4343,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6798,x:29323,y:34396,varname:node_6798,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:7035,x:29166,y:34476,ptovrint:False,ptlb:Overlay Mask B Offset,ptin:_OverlayMaskBOffset,varname:_OverlayMaskAOffset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:896,x:29166,y:34083,varname:node_896,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:9405,x:29327,y:35912,ptovrint:False,ptlb:Overlay Mask C,ptin:_OverlayMaskC,varname:_OverlayMaskA_copy_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9abb97f968d94e940b59cb3b8c201067,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Sin,id:6088,x:29799,y:35206,varname:node_6088,prsc:2|IN-226-OUT;n:type:ShaderForge.SFN_Multiply,id:226,x:29596,y:35206,varname:node_226,prsc:2|A-4092-OUT,B-1747-OUT;n:type:ShaderForge.SFN_Slider,id:1747,x:29170,y:35356,ptovrint:False,ptlb:Overlay C Fade Speed,ptin:_OverlayCFadeSpeed,varname:_OverlayAFadeSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:3735,x:29773,y:35599,varname:node_3735,prsc:2|A-697-OUT,B-5125-R;n:type:ShaderForge.SFN_Slider,id:2501,x:29170,y:35682,ptovrint:False,ptlb:Overlay Mask C Intensity,ptin:_OverlayMaskCIntensity,varname:_OverlayMaskAIntensity_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.6,max:1;n:type:ShaderForge.SFN_Abs,id:5406,x:30006,y:35206,varname:node_5406,prsc:2|IN-6088-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:697,x:29596,y:35455,varname:node_697,prsc:2|IN-5406-OUT,IMIN-4850-OUT,IMAX-3512-OUT,OMIN-5760-OUT,OMAX-2501-OUT;n:type:ShaderForge.SFN_Vector1,id:4850,x:29327,y:35442,varname:node_4850,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3512,x:29327,y:35504,varname:node_3512,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:5760,x:29170,y:35584,ptovrint:False,ptlb:Overlay Mask C Offset,ptin:_OverlayMaskCOffset,varname:_OverlayMaskAOffset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Time,id:5357,x:29170,y:35193,varname:node_5357,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4168,x:29592,y:34493,varname:node_4168,prsc:2,tex:ea059a6febe5ab54bbeef8b8b90ea453,ntxv:0,isnm:False|UVIN-8044-OUT,TEX-2528-TEX;n:type:ShaderForge.SFN_Tex2d,id:5125,x:29596,y:35599,varname:node_5125,prsc:2,tex:9abb97f968d94e940b59cb3b8c201067,ntxv:0,isnm:False|UVIN-8044-OUT,TEX-9405-TEX;n:type:ShaderForge.SFN_Slider,id:8748,x:29160,y:34567,ptovrint:False,ptlb:Overlay Mask B Intensity,ptin:_OverlayMaskBIntensity,varname:node_8748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.62,max:1;n:type:ShaderForge.SFN_Slider,id:8616,x:29004,y:32961,ptovrint:False,ptlb:Overlay A Time Offset,ptin:_OverlayATimeOffset,varname:node_8616,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Add,id:6582,x:29318,y:33031,varname:node_6582,prsc:2|A-8616-OUT,B-4332-T;n:type:ShaderForge.SFN_Slider,id:9555,x:29009,y:34013,ptovrint:False,ptlb:Overlay B Time Offset,ptin:_OverlayBTimeOffset,varname:_OverlayATimeOffset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:10;n:type:ShaderForge.SFN_Add,id:6078,x:29323,y:34083,varname:node_6078,prsc:2|A-9555-OUT,B-896-T;n:type:ShaderForge.SFN_Slider,id:3793,x:29013,y:35123,ptovrint:False,ptlb:Overlay C Time Offset,ptin:_OverlayCTimeOffset,varname:_OverlayATimeOffset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:4092,x:29327,y:35193,varname:node_4092,prsc:2|A-3793-OUT,B-5357-T;n:type:ShaderForge.SFN_Clamp01,id:98,x:31842,y:34228,varname:node_98,prsc:2|IN-3934-OUT;n:type:ShaderForge.SFN_Append,id:9759,x:31842,y:34389,varname:node_9759,prsc:2|A-3934-OUT,B-3635-OUT;n:type:ShaderForge.SFN_Tex2d,id:1704,x:32109,y:34452,varname:node_1196,prsc:2,tex:6fa2da5812151d44080768c7ba24c1fd,ntxv:0,isnm:False|UVIN-9759-OUT,TEX-6120-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6120,x:31842,y:34566,ptovrint:False,ptlb:Edge Ramp Mask,ptin:_EdgeRampMask,varname:node_4088,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6fa2da5812151d44080768c7ba24c1fd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:3635,x:31648,y:34504,varname:node_3635,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8262,x:32357,y:34300,varname:node_8262,prsc:2|A-2145-RGB,B-8859-RGB;n:type:ShaderForge.SFN_Color,id:2145,x:32109,y:34300,ptovrint:False,ptlb:Dissolve Ramp Color,ptin:_DissolveRampColor,varname:node_4447,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:9624,x:30524,y:34279,varname:node_9624,prsc:2|IN-1209-OUT;n:type:ShaderForge.SFN_Clamp01,id:4964,x:30524,y:34486,varname:node_4964,prsc:2|IN-439-OUT;n:type:ShaderForge.SFN_Step,id:299,x:30786,y:34277,varname:node_299,prsc:2|A-9624-OUT,B-4964-OUT;n:type:ShaderForge.SFN_Lerp,id:7779,x:30786,y:34492,varname:node_7779,prsc:2|A-9624-OUT,B-4964-OUT,T-299-OUT;n:type:ShaderForge.SFN_Step,id:403,x:30996,y:34654,varname:node_403,prsc:2|A-7779-OUT,B-9676-OUT;n:type:ShaderForge.SFN_Clamp01,id:9676,x:30524,y:34654,varname:node_9676,prsc:2|IN-3735-OUT;n:type:ShaderForge.SFN_Lerp,id:3934,x:30996,y:34833,varname:node_3934,prsc:2|A-7779-OUT,B-9676-OUT,T-403-OUT;n:type:ShaderForge.SFN_Append,id:966,x:32357,y:34496,varname:node_966,prsc:2|A-1704-R,B-7961-OUT;n:type:ShaderForge.SFN_Vector1,id:7961,x:32163,y:34611,varname:node_7961,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:3235,x:32388,y:34720,ptovrint:False,ptlb:Edge Color Ramp,ptin:_EdgeColorRamp,varname:_EdgeRampMask_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9f55036eef458924bbf2e9de61f85dd6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8859,x:32673,y:34592,varname:node_8859,prsc:2,tex:9f55036eef458924bbf2e9de61f85dd6,ntxv:0,isnm:False|UVIN-966-OUT,TEX-3235-TEX;n:type:ShaderForge.SFN_Multiply,id:682,x:32539,y:34300,varname:node_682,prsc:2|A-7446-OUT,B-8262-OUT;n:type:ShaderForge.SFN_Slider,id:7446,x:32200,y:34225,ptovrint:False,ptlb:Edge Glow Intensity,ptin:_EdgeGlowIntensity,varname:node_7446,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7,max:1;n:type:ShaderForge.SFN_ComponentMask,id:2575,x:31479,y:32779,varname:node_2575,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-966-OUT;n:type:ShaderForge.SFN_OneMinus,id:1674,x:31636,y:32779,varname:node_1674,prsc:2|IN-2575-OUT;n:type:ShaderForge.SFN_Lerp,id:5230,x:32106,y:32710,varname:node_5230,prsc:2|A-7327-OUT,B-1860-OUT,T-1674-OUT;n:type:ShaderForge.SFN_Vector1,id:1860,x:31925,y:32729,varname:node_1860,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:7418,x:32484,y:32711,varname:node_7418,prsc:2|A-2848-OUT,B-682-OUT,T-98-OUT;n:type:ShaderForge.SFN_Multiply,id:2848,x:32286,y:32711,varname:node_2848,prsc:2|A-5230-OUT,B-5947-OUT;n:type:ShaderForge.SFN_Slider,id:5947,x:31806,y:32870,ptovrint:False,ptlb:Maintex Emission Intensity,ptin:_MaintexEmissionIntensity,varname:node_5947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Append,id:4770,x:27579,y:32689,varname:node_4770,prsc:2|A-8242-OUT,B-9581-OUT;n:type:ShaderForge.SFN_Normalize,id:7865,x:27757,y:32689,varname:node_7865,prsc:2|IN-4770-OUT;n:type:ShaderForge.SFN_Time,id:9720,x:27567,y:32853,varname:node_9720,prsc:2;n:type:ShaderForge.SFN_Multiply,id:762,x:27757,y:32946,varname:node_762,prsc:2|A-9720-T,B-8033-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8033,x:27567,y:33023,ptovrint:False,ptlb:Maintex Speed,ptin:_MaintexSpeed,varname:node_3186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.03;n:type:ShaderForge.SFN_Multiply,id:20,x:28062,y:32687,varname:node_20,prsc:2|A-7865-OUT,B-5098-OUT;n:type:ShaderForge.SFN_Multiply,id:6402,x:28023,y:33353,varname:node_6402,prsc:2|A-5933-OUT,B-3147-OUT;n:type:ShaderForge.SFN_Add,id:8044,x:28277,y:32687,varname:node_8044,prsc:2|A-6402-OUT,B-20-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5933,x:27823,y:33353,varname:node_5933,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8952-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2171,x:27646,y:33353,varname:node_2171,prsc:2;n:type:ShaderForge.SFN_Normalize,id:9345,x:27760,y:32395,varname:node_9345,prsc:2|IN-8202-OUT;n:type:ShaderForge.SFN_Multiply,id:9507,x:28053,y:32451,varname:node_9507,prsc:2|A-9345-OUT,B-762-OUT;n:type:ShaderForge.SFN_Add,id:7176,x:28277,y:32451,varname:node_7176,prsc:2|A-6402-OUT,B-9507-OUT;n:type:ShaderForge.SFN_Slider,id:5703,x:27021,y:33224,ptovrint:False,ptlb:Texture Scale,ptin:_TextureScale,varname:node_5703,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:8952,x:27730,y:33215,varname:node_8952,prsc:2|A-5703-OUT,B-2171-XYZ;n:type:ShaderForge.SFN_Slider,id:5340,x:27253,y:32395,ptovrint:False,ptlb:Maintex U Speed,ptin:_MaintexUSpeed,varname:node_5340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:2156,x:27255,y:32490,ptovrint:False,ptlb:Maintex V Speed,ptin:_MaintexVSpeed,varname:_node_5340_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:8242,x:27255,y:32689,ptovrint:False,ptlb:Overlay U Speed,ptin:_OverlayUSpeed,varname:_node_5340_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9581,x:27255,y:32786,ptovrint:False,ptlb:Overlay V Speed,ptin:_OverlayVSpeed,varname:_node_5340_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_ValueProperty,id:6288,x:27567,y:33124,ptovrint:False,ptlb:Overlay Speed,ptin:_OverlaySpeed,varname:_LavaSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;n:type:ShaderForge.SFN_Multiply,id:5098,x:27757,y:33090,varname:node_5098,prsc:2|A-9720-T,B-6288-OUT;proporder:5703-7920-3440-2643-2098-265-4803-7892-8935-4809-6689-5295-9777-6691-2528-9405-2218-8748-2501-3010-546-1747-4831-7035-5760-8616-3793-9555-3055-6453-6120-2145-3235-7446-5947-8033-6288-5340-2156-8242-9581;pass:END;sub:END;*/

Shader "DCC/Lava Shader" {
    Properties {
        _TextureScale ("Texture Scale", Range(0, 1)) = 0.2
        _MainTex ("Maintex", 2D) = "white" {}
        _MaintexColor ("Maintex Color", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Shore ("Shore", 2D) = "white" {}
        _ShoreColor ("Shore Color", Color) = (1,1,1,1)
        _ShoreTransparencyBlend ("Shore Transparency Blend", Float ) = 0.1
        _ShoreDepth ("Shore Depth", Float ) = 0.4
        _FoamShoreSpread ("Foam Shore Spread", Range(0, 1)) = 1
        _ShoreFalloff ("Shore Falloff", Float ) = 0.4
        _LavaWobbleNoise ("Lava Wobble Noise", 2D) = "white" {}
        _LavaWobble ("Lava Wobble", Range(0, 0.1)) = 0.003
        _OverlayMaskA ("Overlay Mask A", 2D) = "white" {}
        _OverlayMaskB ("Overlay Mask B", 2D) = "white" {}
        _OverlayMaskC ("Overlay Mask C", 2D) = "white" {}
        _OverlayMaskAIntensity ("Overlay Mask A Intensity", Range(0.6, 1)) = 0.64
        _OverlayMaskBIntensity ("Overlay Mask B Intensity", Range(0.6, 1)) = 0.62
        _OverlayMaskCIntensity ("Overlay Mask C Intensity", Range(0.6, 1)) = 0.6
        _OverlayAFadeSpeed ("Overlay A Fade Speed", Range(0, 1)) = 0.2
        _OverlayBFadeSpeed ("Overlay B Fade Speed", Range(0, 1)) = 0.2
        _OverlayCFadeSpeed ("Overlay C Fade Speed", Range(0, 1)) = 0.2
        _OverlayMaskAOffset ("Overlay Mask A Offset", Range(0, 1)) = 0.5
        _OverlayMaskBOffset ("Overlay Mask B Offset", Range(0, 1)) = 0.5
        _OverlayMaskCOffset ("Overlay Mask C Offset", Range(0, 1)) = 0.5
        _OverlayATimeOffset ("Overlay A Time Offset", Range(0, 10)) = 0
        _OverlayCTimeOffset ("Overlay C Time Offset", Range(0, 10)) = 10
        _OverlayBTimeOffset ("Overlay B Time Offset", Range(0, 10)) = 5
        _Overlay ("Overlay", 2D) = "black" {}
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _EdgeRampMask ("Edge Ramp Mask", 2D) = "white" {}
        _DissolveRampColor ("Dissolve Ramp Color", Color) = (1,1,1,1)
        _EdgeColorRamp ("Edge Color Ramp", 2D) = "white" {}
        _EdgeGlowIntensity ("Edge Glow Intensity", Range(0, 1)) = 0.7
        _MaintexEmissionIntensity ("Maintex Emission Intensity", Range(0, 1)) = 0.5
        _MaintexSpeed ("Maintex Speed", Float ) = 0.03
        _OverlaySpeed ("Overlay Speed", Float ) = 0.02
        _MaintexUSpeed ("Maintex U Speed", Range(-1, 1)) = 1
        _MaintexVSpeed ("Maintex V Speed", Range(-1, 1)) = 1
        _OverlayUSpeed ("Overlay U Speed", Range(-1, 1)) = 1
        _OverlayVSpeed ("Overlay V Speed", Range(-1, 1)) = 1
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
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _ShoreDepth;
            uniform float _ShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float _ShoreTransparencyBlend;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _LavaWobble;
            uniform sampler2D _LavaWobbleNoise; uniform float4 _LavaWobbleNoise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            uniform sampler2D _EdgeRampMask; uniform float4 _EdgeRampMask_ST;
            uniform float4 _DissolveRampColor;
            uniform sampler2D _EdgeColorRamp; uniform float4 _EdgeColorRamp_ST;
            uniform float _EdgeGlowIntensity;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpeed;
            uniform float _TextureScale;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _OverlaySpeed;
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
                float2 node_5933 = (_TextureScale*i.posWorld.rgb).rb;
                float4 _LavaWobbleNoise_var = tex2D(_LavaWobbleNoise,TRANSFORM_TEX(node_5933, _LavaWobbleNoise));
                float2 node_6402 = (node_5933*pow(_LavaWobbleNoise_var.rgb,_LavaWobble).rg);
                float4 node_9720 = _Time;
                float2 node_7176 = (node_6402+(normalize(float2(_MaintexUSpeed,_MaintexVSpeed))*(node_9720.g*_MaintexSpeed)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7176, _MainTex));
                float3 node_7327 = (_MainTex_var.rgb*_MaintexColor.rgb);
                float2 node_8044 = (node_6402+(normalize(float2(_OverlayUSpeed,_OverlayVSpeed))*(node_9720.g*_OverlaySpeed)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_8044, _Overlay));
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_8044, _OverlayMaskA));
                float node_9624 = saturate(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_8044, _OverlayMaskB));
                float node_4964 = saturate(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_7779 = lerp(node_9624,node_4964,step(node_9624,node_4964));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8044, _OverlayMaskC));
                float node_9676 = saturate(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_3934 = lerp(node_7779,node_9676,step(node_7779,node_9676));
                float2 node_9759 = float2(node_3934,0.0);
                float4 node_1196 = tex2D(_EdgeRampMask,TRANSFORM_TEX(node_9759, _EdgeRampMask));
                float2 node_966 = float2(node_1196.r,0.0);
                float node_1674 = (1.0 - node_966.r);
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffuseColor = lerp(lerp(node_7327,(_Overlay_var.rgb*_OverlayColor.rgb),node_1674),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_ShoreDepth)*(1.0 / _FoamShoreSpread)),_ShoreFalloff)))); // Need this for specular when using metallic
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
////// Emissive:
                float node_1860 = 0.0;
                float4 node_8859 = tex2D(_EdgeColorRamp,TRANSFORM_TEX(node_966, _EdgeColorRamp));
                float3 emissive = lerp((lerp(node_7327,float3(node_1860,node_1860,node_1860),node_1674)*_MaintexEmissionIntensity),(_EdgeGlowIntensity*(_DissolveRampColor.rgb*node_8859.rgb)),saturate(node_3934));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,saturate((sceneZ-partZ)/_ShoreTransparencyBlend));
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
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _ShoreDepth;
            uniform float _ShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float _ShoreTransparencyBlend;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _LavaWobble;
            uniform sampler2D _LavaWobbleNoise; uniform float4 _LavaWobbleNoise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            uniform sampler2D _EdgeRampMask; uniform float4 _EdgeRampMask_ST;
            uniform float4 _DissolveRampColor;
            uniform sampler2D _EdgeColorRamp; uniform float4 _EdgeColorRamp_ST;
            uniform float _EdgeGlowIntensity;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpeed;
            uniform float _TextureScale;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _OverlaySpeed;
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
                float2 node_5933 = (_TextureScale*i.posWorld.rgb).rb;
                float4 _LavaWobbleNoise_var = tex2D(_LavaWobbleNoise,TRANSFORM_TEX(node_5933, _LavaWobbleNoise));
                float2 node_6402 = (node_5933*pow(_LavaWobbleNoise_var.rgb,_LavaWobble).rg);
                float4 node_9720 = _Time;
                float2 node_7176 = (node_6402+(normalize(float2(_MaintexUSpeed,_MaintexVSpeed))*(node_9720.g*_MaintexSpeed)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7176, _MainTex));
                float3 node_7327 = (_MainTex_var.rgb*_MaintexColor.rgb);
                float2 node_8044 = (node_6402+(normalize(float2(_OverlayUSpeed,_OverlayVSpeed))*(node_9720.g*_OverlaySpeed)));
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_8044, _Overlay));
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_8044, _OverlayMaskA));
                float node_9624 = saturate(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_8044, _OverlayMaskB));
                float node_4964 = saturate(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_7779 = lerp(node_9624,node_4964,step(node_9624,node_4964));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8044, _OverlayMaskC));
                float node_9676 = saturate(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_3934 = lerp(node_7779,node_9676,step(node_7779,node_9676));
                float2 node_9759 = float2(node_3934,0.0);
                float4 node_1196 = tex2D(_EdgeRampMask,TRANSFORM_TEX(node_9759, _EdgeRampMask));
                float2 node_966 = float2(node_1196.r,0.0);
                float node_1674 = (1.0 - node_966.r);
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffuseColor = lerp(lerp(node_7327,(_Overlay_var.rgb*_OverlayColor.rgb),node_1674),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_ShoreDepth)*(1.0 / _FoamShoreSpread)),_ShoreFalloff)))); // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * saturate((sceneZ-partZ)/_ShoreTransparencyBlend),0);
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
            uniform sampler2D _Overlay; uniform float4 _Overlay_ST;
            uniform float _ShoreDepth;
            uniform float _ShoreFalloff;
            uniform float _FoamShoreSpread;
            uniform float4 _ShoreColor;
            uniform sampler2D _Shore; uniform float4 _Shore_ST;
            uniform float _LavaWobble;
            uniform sampler2D _LavaWobbleNoise; uniform float4 _LavaWobbleNoise_ST;
            uniform sampler2D _OverlayMaskA; uniform float4 _OverlayMaskA_ST;
            uniform float _OverlayAFadeSpeed;
            uniform float _OverlayMaskAIntensity;
            uniform float _OverlayMaskAOffset;
            uniform float4 _OverlayColor;
            uniform sampler2D _OverlayMaskB; uniform float4 _OverlayMaskB_ST;
            uniform float _OverlayBFadeSpeed;
            uniform float _OverlayMaskBOffset;
            uniform sampler2D _OverlayMaskC; uniform float4 _OverlayMaskC_ST;
            uniform float _OverlayCFadeSpeed;
            uniform float _OverlayMaskCIntensity;
            uniform float _OverlayMaskCOffset;
            uniform float _OverlayMaskBIntensity;
            uniform float _OverlayATimeOffset;
            uniform float _OverlayBTimeOffset;
            uniform float _OverlayCTimeOffset;
            uniform sampler2D _EdgeRampMask; uniform float4 _EdgeRampMask_ST;
            uniform float4 _DissolveRampColor;
            uniform sampler2D _EdgeColorRamp; uniform float4 _EdgeColorRamp_ST;
            uniform float _EdgeGlowIntensity;
            uniform float _MaintexEmissionIntensity;
            uniform float _MaintexSpeed;
            uniform float _TextureScale;
            uniform float _MaintexUSpeed;
            uniform float _MaintexVSpeed;
            uniform float _OverlayUSpeed;
            uniform float _OverlayVSpeed;
            uniform float _OverlaySpeed;
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
                
                float2 node_5933 = (_TextureScale*i.posWorld.rgb).rb;
                float4 _LavaWobbleNoise_var = tex2D(_LavaWobbleNoise,TRANSFORM_TEX(node_5933, _LavaWobbleNoise));
                float2 node_6402 = (node_5933*pow(_LavaWobbleNoise_var.rgb,_LavaWobble).rg);
                float4 node_9720 = _Time;
                float2 node_7176 = (node_6402+(normalize(float2(_MaintexUSpeed,_MaintexVSpeed))*(node_9720.g*_MaintexSpeed)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7176, _MainTex));
                float3 node_7327 = (_MainTex_var.rgb*_MaintexColor.rgb);
                float node_1860 = 0.0;
                float4 node_4332 = _Time;
                float node_8467 = 0.0;
                float2 node_8044 = (node_6402+(normalize(float2(_OverlayUSpeed,_OverlayVSpeed))*(node_9720.g*_OverlaySpeed)));
                float4 node_5058 = tex2D(_OverlayMaskA,TRANSFORM_TEX(node_8044, _OverlayMaskA));
                float node_9624 = saturate(((_OverlayMaskAOffset + ( (abs(sin(((_OverlayATimeOffset+node_4332.g)*_OverlayAFadeSpeed))) - node_8467) * (_OverlayMaskAIntensity - _OverlayMaskAOffset) ) / (1.0 - node_8467))*node_5058.r));
                float4 node_896 = _Time;
                float node_4343 = 0.0;
                float4 node_4168 = tex2D(_OverlayMaskB,TRANSFORM_TEX(node_8044, _OverlayMaskB));
                float node_4964 = saturate(((_OverlayMaskBOffset + ( (abs(sin(((_OverlayBTimeOffset+node_896.g)*_OverlayBFadeSpeed))) - node_4343) * (_OverlayMaskBIntensity - _OverlayMaskBOffset) ) / (1.0 - node_4343))*node_4168.r));
                float node_7779 = lerp(node_9624,node_4964,step(node_9624,node_4964));
                float4 node_5357 = _Time;
                float node_4850 = 0.0;
                float4 node_5125 = tex2D(_OverlayMaskC,TRANSFORM_TEX(node_8044, _OverlayMaskC));
                float node_9676 = saturate(((_OverlayMaskCOffset + ( (abs(sin(((_OverlayCTimeOffset+node_5357.g)*_OverlayCFadeSpeed))) - node_4850) * (_OverlayMaskCIntensity - _OverlayMaskCOffset) ) / (1.0 - node_4850))*node_5125.r));
                float node_3934 = lerp(node_7779,node_9676,step(node_7779,node_9676));
                float2 node_9759 = float2(node_3934,0.0);
                float4 node_1196 = tex2D(_EdgeRampMask,TRANSFORM_TEX(node_9759, _EdgeRampMask));
                float2 node_966 = float2(node_1196.r,0.0);
                float node_1674 = (1.0 - node_966.r);
                float4 node_8859 = tex2D(_EdgeColorRamp,TRANSFORM_TEX(node_966, _EdgeColorRamp));
                o.Emission = lerp((lerp(node_7327,float3(node_1860,node_1860,node_1860),node_1674)*_MaintexEmissionIntensity),(_EdgeGlowIntensity*(_DissolveRampColor.rgb*node_8859.rgb)),saturate(node_3934));
                
                float4 _Overlay_var = tex2D(_Overlay,TRANSFORM_TEX(node_8044, _Overlay));
                float4 _Shore_var = tex2D(_Shore,TRANSFORM_TEX(i.uv0, _Shore));
                float3 diffColor = lerp(lerp(node_7327,(_Overlay_var.rgb*_OverlayColor.rgb),node_1674),(_Shore_var.rgb*_ShoreColor.rgb),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_ShoreDepth)*(1.0 / _FoamShoreSpread)),_ShoreFalloff))));
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
