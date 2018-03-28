// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-8786-OUT,spec-6167-OUT,gloss-6167-OUT,alpha-7310-OUT,voffset-1112-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7310,x:32482,y:32968,varname:node_7310,prsc:2|DIST-3225-OUT;n:type:ShaderForge.SFN_Vector1,id:6167,x:32482,y:32776,varname:node_6167,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7034,x:32482,y:32861,varname:node_7034,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:3821,x:31226,y:32794,varname:node_982,prsc:2,ntxv:0,isnm:False|UVIN-5584-OUT,TEX-708-TEX;n:type:ShaderForge.SFN_Color,id:715,x:31427,y:33134,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:_WaterColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07450981,c2:0.3647059,c3:0.7058824,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7968,x:32028,y:33613,ptovrint:False,ptlb:Foam Shore Depth,ptin:_FoamShoreDepth,varname:_ShoreFoamDepth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:2823,x:32186,y:33613,varname:node_2823,prsc:2|DIST-7968-OUT;n:type:ShaderForge.SFN_Multiply,id:6358,x:31427,y:32794,varname:node_6358,prsc:2|A-3821-RGB,B-6881-RGB;n:type:ShaderForge.SFN_Color,id:6881,x:31226,y:32629,ptovrint:False,ptlb:Foam Shore Tint,ptin:_FoamShoreTint,varname:node_7456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:6798,x:31022,y:33134,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:_ShoreFoam_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:6305,x:31226,y:33134,ptovrint:False,ptlb:Foam Tint,ptin:_FoamTint,varname:_FoamTint_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1803922,c2:0.4705882,c3:0.8196079,c4:1;n:type:ShaderForge.SFN_Multiply,id:8853,x:31427,y:32949,varname:node_8853,prsc:2|A-7011-RGB,B-6305-RGB;n:type:ShaderForge.SFN_Tex2d,id:7011,x:31226,y:32949,varname:node_1087,prsc:2,ntxv:0,isnm:False|UVIN-2907-OUT,TEX-6798-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:708,x:31027,y:32465,ptovrint:False,ptlb:Foam Shore,ptin:_FoamShore,varname:node_2145,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7917,x:31635,y:32791,varname:node_7917,prsc:2|A-715-RGB,B-6358-OUT,T-3821-A;n:type:ShaderForge.SFN_Lerp,id:41,x:31635,y:32945,varname:node_41,prsc:2|A-715-RGB,B-8853-OUT,T-7011-A;n:type:ShaderForge.SFN_Lerp,id:8786,x:32330,y:32640,varname:node_8786,prsc:2|A-41-OUT,B-7917-OUT,T-1738-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3718,x:29939,y:32638,varname:node_3718,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8153-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:8153,x:29741,y:32638,varname:node_8153,prsc:2;n:type:ShaderForge.SFN_Slider,id:6415,x:29781,y:33440,ptovrint:False,ptlb:Foam Texture Wobble,ptin:_FoamTextureWobble,varname:node_7173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.002,max:0.1;n:type:ShaderForge.SFN_Time,id:3420,x:29557,y:33209,varname:node_3420,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:6207,x:29938,y:33643,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_WindNoiseTexture3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c013628570860cf408e32c638e0a5eda,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8912,x:29781,y:33535,ptovrint:False,ptlb:Water Texture Wobble,ptin:_WaterTextureWobble,varname:_node_7173_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.002,max:0.1;n:type:ShaderForge.SFN_Slider,id:7237,x:28583,y:34477,ptovrint:False,ptlb:Wave 1 X-Direction,ptin:_Wave1XDirection,varname:node_3460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.1,max:1;n:type:ShaderForge.SFN_Slider,id:1650,x:28583,y:34584,ptovrint:False,ptlb:Wave 1 Y-Direction,ptin:_Wave1YDirection,varname:_node_3460_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:104,x:29074,y:34483,varname:node_104,prsc:2|A-7237-OUT,B-1650-OUT;n:type:ShaderForge.SFN_Dot,id:4328,x:29345,y:34481,varname:node_4328,prsc:2,dt:0|A-104-OUT,B-7356-OUT;n:type:ShaderForge.SFN_Code,id:5416,x:29911,y:34430,varname:node_5416,prsc:2,code:ZgBsAG8AYQB0ACAAcABoAGEAcwBlAEMAbwBuAHMAdAAgAD0AIABTAHAAZQBlAGQAIAAqACAAVwBhAHYAZQBsAGUAbgBnAHQAaAA7AAoAZgBsAG8AYQB0ACAAeABWAGEAbAAgAD0AIABTAHQAZQBlAHAAbgBlAHMAcwAgACoAIABBAG0AcABsAGkAdAB1AGQAZQAgACoAIABEAGkAcgBlAGMAdABpAG8AbgBWAGUAYwAuAHgAIAAqACAAYwBvAHMAKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHkAVgBhAGwAIAA9ACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAAcwBpAG4AKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHoAVgBhAGwAIAA9ACAAUwB0AGUAZQBwAG4AZQBzAHMAIAAqACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAARABpAHIAZQBjAHQAaQBvAG4AVgBlAGMALgB5ACAAKgAgAGMAbwBzACgAVwBhAHYAZQBsAGUAbgBnAHQAaAAgACoAIABEAG8AdABQAHIAbwBkACAAKwAgAFQAaQBtAGUAIAAqACAAcABoAGEAcwBlAEMAbwBuAHMAdAApADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAeABWAGEAbAAsACAAeQBWAGEAbAAsACAAegBWAGEAbAApADsACgA=,output:2,fname:GerstnerVertex1,width:893,height:190,input:0,input:0,input:0,input:0,input:0,input:0,input:1,input_1_label:Steepness,input_2_label:Amplitude,input_3_label:Wavelength,input_4_label:Speed,input_5_label:Time,input_6_label:DotProd,input_7_label:DirectionVec|A-3877-OUT,B-2029-OUT,C-7390-OUT,D-5488-OUT,E-4442-OUT,F-4328-OUT,G-104-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5567,x:28814,y:35145,varname:node_5567,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:7356,x:29077,y:35107,varname:node_7356,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-5567-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:5488,x:29342,y:34407,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_3186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:7390,x:29341,y:34323,ptovrint:False,ptlb:Wave Spread,ptin:_WaveSpread,varname:node_6222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:2029,x:29341,y:34237,ptovrint:False,ptlb:Wave Height,ptin:_WaveHeight,varname:node_6460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.08;n:type:ShaderForge.SFN_ValueProperty,id:3877,x:29341,y:34152,ptovrint:False,ptlb:Wave Sharpness,ptin:_WaveSharpness,varname:node_9110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Sin,id:8857,x:30873,y:33911,varname:node_8857,prsc:2|IN-3745-OUT;n:type:ShaderForge.SFN_Time,id:2847,x:29077,y:35262,varname:node_2847,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5439,x:29348,y:35127,ptovrint:False,ptlb:Gerstner 1 Time Multiplier,ptin:_Gerstner1TimeMultiplier,varname:node_266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5204,x:31063,y:33911,varname:node_5204,prsc:2|A-8857-OUT,B-1493-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1493,x:30873,y:34072,ptovrint:False,ptlb:Wave Intensity,ptin:_WaveIntensity,varname:node_3503,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:746,x:29747,y:32941,varname:node_746,prsc:2|A-522-OUT,B-3293-OUT;n:type:ShaderForge.SFN_Add,id:2907,x:30690,y:32785,varname:node_2907,prsc:2|A-7426-OUT,B-6147-OUT;n:type:ShaderForge.SFN_Multiply,id:1452,x:30155,y:32941,varname:node_1452,prsc:2|A-3669-OUT,B-6190-OUT;n:type:ShaderForge.SFN_Add,id:5584,x:30690,y:32632,varname:node_5584,prsc:2|A-1705-OUT,B-1452-OUT;n:type:ShaderForge.SFN_Multiply,id:6147,x:30155,y:33103,varname:node_6147,prsc:2|A-3669-OUT,B-6190-OUT;n:type:ShaderForge.SFN_Power,id:9233,x:30155,y:33424,varname:node_9233,prsc:2|VAL-6207-RGB,EXP-8912-OUT;n:type:ShaderForge.SFN_Multiply,id:7426,x:30443,y:32785,varname:node_7426,prsc:2|A-3718-OUT,B-2541-OUT;n:type:ShaderForge.SFN_Power,id:3197,x:30155,y:33279,varname:node_3197,prsc:2|VAL-6207-RGB,EXP-6415-OUT;n:type:ShaderForge.SFN_Multiply,id:1705,x:30443,y:32632,varname:node_1705,prsc:2|A-3718-OUT,B-4085-OUT;n:type:ShaderForge.SFN_Normalize,id:3669,x:29901,y:32941,varname:node_3669,prsc:2|IN-746-OUT;n:type:ShaderForge.SFN_Multiply,id:6190,x:29747,y:33302,varname:node_6190,prsc:2|A-3420-T,B-5488-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3225,x:32316,y:32968,ptovrint:False,ptlb:Foam Shore Transparency Blend,ptin:_FoamShoreTransparencyBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ComponentMask,id:4085,x:30332,y:33279,varname:node_4085,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3197-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2541,x:30332,y:33424,varname:node_2541,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9233-OUT;n:type:ShaderForge.SFN_Add,id:1112,x:31307,y:33797,varname:node_1112,prsc:2|A-7232-OUT,B-5204-OUT;n:type:ShaderForge.SFN_Multiply,id:8922,x:30707,y:33618,varname:node_8922,prsc:2|A-6158-OUT,B-6207-RGB;n:type:ShaderForge.SFN_NormalVector,id:7213,x:30707,y:33748,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7232,x:30899,y:33758,varname:node_7232,prsc:2|A-7213-OUT,B-8922-OUT;n:type:ShaderForge.SFN_Slider,id:6158,x:30367,y:33775,ptovrint:False,ptlb:Gerstner Noise Intensity,ptin:_GerstnerNoiseIntensity,varname:node_6158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Code,id:6635,x:29911,y:34676,varname:node_6635,prsc:2,code:ZgBsAG8AYQB0ACAAcABoAGEAcwBlAEMAbwBuAHMAdAAgAD0AIABTAHAAZQBlAGQAIAAqACAAVwBhAHYAZQBsAGUAbgBnAHQAaAA7AAoAZgBsAG8AYQB0ACAAeABWAGEAbAAgAD0AIABTAHQAZQBlAHAAbgBlAHMAcwAgACoAIABBAG0AcABsAGkAdAB1AGQAZQAgACoAIABEAGkAcgBlAGMAdABpAG8AbgBWAGUAYwAuAHgAIAAqACAAYwBvAHMAKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHkAVgBhAGwAIAA9ACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAAcwBpAG4AKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHoAVgBhAGwAIAA9ACAAUwB0AGUAZQBwAG4AZQBzAHMAIAAqACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAARABpAHIAZQBjAHQAaQBvAG4AVgBlAGMALgB5ACAAKgAgAGMAbwBzACgAVwBhAHYAZQBsAGUAbgBnAHQAaAAgACoAIABEAG8AdABQAHIAbwBkACAAKwAgAFQAaQBtAGUAIAAqACAAcABoAGEAcwBlAEMAbwBuAHMAdAApADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAeABWAGEAbAAsACAAeQBWAGEAbAAsACAAegBWAGEAbAApADsACgA=,output:2,fname:GerstnerVertex2,width:893,height:190,input:0,input:0,input:0,input:0,input:0,input:0,input:1,input_1_label:Steepness,input_2_label:Amplitude,input_3_label:Wavelength,input_4_label:Speed,input_5_label:Time,input_6_label:DotProd,input_7_label:DirectionVec|A-3877-OUT,B-2029-OUT,C-7390-OUT,D-5488-OUT,E-6801-OUT,F-5305-OUT,G-5978-OUT;n:type:ShaderForge.SFN_Code,id:7721,x:29911,y:34923,varname:node_7721,prsc:2,code:ZgBsAG8AYQB0ACAAcABoAGEAcwBlAEMAbwBuAHMAdAAgAD0AIABTAHAAZQBlAGQAIAAqACAAVwBhAHYAZQBsAGUAbgBnAHQAaAA7AAoAZgBsAG8AYQB0ACAAeABWAGEAbAAgAD0AIABTAHQAZQBlAHAAbgBlAHMAcwAgACoAIABBAG0AcABsAGkAdAB1AGQAZQAgACoAIABEAGkAcgBlAGMAdABpAG8AbgBWAGUAYwAuAHgAIAAqACAAYwBvAHMAKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHkAVgBhAGwAIAA9ACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAAcwBpAG4AKABXAGEAdgBlAGwAZQBuAGcAdABoACAAKgAgAEQAbwB0AFAAcgBvAGQAIAArACAAVABpAG0AZQAgACoAIABwAGgAYQBzAGUAQwBvAG4AcwB0ACkAOwAKAGYAbABvAGEAdAAgAHoAVgBhAGwAIAA9ACAAUwB0AGUAZQBwAG4AZQBzAHMAIAAqACAAQQBtAHAAbABpAHQAdQBkAGUAIAAqACAARABpAHIAZQBjAHQAaQBvAG4AVgBlAGMALgB5ACAAKgAgAGMAbwBzACgAVwBhAHYAZQBsAGUAbgBnAHQAaAAgACoAIABEAG8AdABQAHIAbwBkACAAKwAgAFQAaQBtAGUAIAAqACAAcABoAGEAcwBlAEMAbwBuAHMAdAApADsACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAeABWAGEAbAAsACAAeQBWAGEAbAAsACAAegBWAGEAbAApADsACgA=,output:2,fname:GerstnerVertex3,width:893,height:190,input:0,input:0,input:0,input:0,input:0,input:0,input:1,input_1_label:Steepness,input_2_label:Amplitude,input_3_label:Wavelength,input_4_label:Speed,input_5_label:Time,input_6_label:DotProd,input_7_label:DirectionVec|A-3877-OUT,B-2029-OUT,C-7390-OUT,D-5488-OUT,E-3373-OUT,F-4115-OUT,G-8983-OUT;n:type:ShaderForge.SFN_Slider,id:4215,x:28583,y:34694,ptovrint:False,ptlb:Wave 2 X-Direction,ptin:_Wave2XDirection,varname:_Wave1XDirection_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3605,x:28583,y:34800,ptovrint:False,ptlb:Wave 2 Y-Direction,ptin:_Wave2YDirection,varname:_Wave1YDirection_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.1,max:1;n:type:ShaderForge.SFN_Append,id:5978,x:29074,y:34700,varname:node_5978,prsc:2|A-4215-OUT,B-3605-OUT;n:type:ShaderForge.SFN_Dot,id:5305,x:29345,y:34698,varname:node_5305,prsc:2,dt:0|A-5978-OUT,B-7356-OUT;n:type:ShaderForge.SFN_Slider,id:5514,x:28583,y:34905,ptovrint:False,ptlb:Wave 3 X-Direction,ptin:_Wave3XDirection,varname:_Wave1XDirection_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Slider,id:9433,x:28583,y:35012,ptovrint:False,ptlb:Wave 3 Y-Direction,ptin:_Wave3YDirection,varname:_Wave1YDirection_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:8983,x:29074,y:34911,varname:node_8983,prsc:2|A-5514-OUT,B-9433-OUT;n:type:ShaderForge.SFN_Dot,id:4115,x:29345,y:34909,varname:node_4115,prsc:2,dt:0|A-8983-OUT,B-7356-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1379,x:29348,y:35296,ptovrint:False,ptlb:Gerstner 2 Time Multiplier,ptin:_Gerstner2TimeMultiplier,varname:_Gerstner1TimeMultiplier_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:282,x:29348,y:35463,ptovrint:False,ptlb:Gerstner 3 Time Multiplier,ptin:_Gerstner3TimeMultiplier,varname:_Gerstner1TimeMultiplier_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Add,id:7121,x:31095,y:34334,varname:node_7121,prsc:2|A-5416-OUT,B-6635-OUT,C-7721-OUT;n:type:ShaderForge.SFN_Divide,id:3745,x:31281,y:34334,varname:node_3745,prsc:2|A-7121-OUT,B-100-OUT;n:type:ShaderForge.SFN_ValueProperty,id:100,x:31095,y:34491,ptovrint:False,ptlb:Gerstner Divide,ptin:_GerstnerDivide,varname:node_100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Add,id:4442,x:29555,y:35127,varname:node_4442,prsc:2|A-5439-OUT,B-2847-T;n:type:ShaderForge.SFN_Add,id:6801,x:29555,y:35296,varname:node_6801,prsc:2|A-1379-OUT,B-2847-T;n:type:ShaderForge.SFN_Add,id:3373,x:29555,y:35463,varname:node_3373,prsc:2|A-282-OUT,B-2847-T;n:type:ShaderForge.SFN_Add,id:522,x:29036,y:34086,varname:node_522,prsc:2|A-7237-OUT,B-4215-OUT,C-5514-OUT;n:type:ShaderForge.SFN_Add,id:3293,x:29036,y:34247,varname:node_3293,prsc:2|A-1650-OUT,B-3605-OUT,C-9433-OUT;n:type:ShaderForge.SFN_Slider,id:9331,x:31711,y:33890,ptovrint:False,ptlb:Foam Shore Spread,ptin:_FoamShoreSpread,varname:node_9331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Reciprocal,id:8103,x:32158,y:33890,varname:node_8103,prsc:2|IN-9331-OUT;n:type:ShaderForge.SFN_Multiply,id:192,x:32347,y:33890,varname:node_192,prsc:2|A-2823-OUT,B-8103-OUT;n:type:ShaderForge.SFN_Power,id:1140,x:32563,y:33890,varname:node_1140,prsc:2|VAL-192-OUT,EXP-6751-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6751,x:32347,y:34059,ptovrint:False,ptlb:Foam Shore Falloff,ptin:_FoamShoreFalloff,varname:node_6751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:9024,x:32740,y:33890,varname:node_9024,prsc:2|IN-1140-OUT;n:type:ShaderForge.SFN_OneMinus,id:1738,x:32107,y:32934,varname:node_1738,prsc:2|IN-9024-OUT;n:type:ShaderForge.SFN_Code,id:5097,x:31132,y:33348,varname:node_5097,prsc:2,code:ZgBsAG8AYQB0ACAAQwBvAG0AcAB1AHQAZQBkAFgAIAA9ACAAQwBvAG0AcAB1AHQAZQBkAFcAYQB2AGUALgB4ADsACgBmAGwAbwBhAHQAIABDAG8AbQBwAHUAdABlAGQAWQAgAD0AIABDAG8AbQBwAHUAdABlAGQAVwBhAHYAZQAuAHkAOwAKAGYAbABvAGEAdAAgAEMAbwBtAHAAdQB0AGUAZABaACAAPQAgAEMAbwBtAHAAdQB0AGUAZABXAGEAdgBlAC4AegA7AAoACgByAGUAdAB1AHIAbgAgAEMAbwBtAHAAdQB0AGUAZABXAGEAdgBlADsA,output:2,fname:ExportWave,width:812,height:290,input:2,input_1_label:ComputedWave|A-1112-OUT;proporder:715-7968-9331-6751-3225-6881-6798-6305-708-8912-6415-6207-6158-7237-1650-4215-3605-5514-9433-5488-7390-2029-3877-1493-5439-1379-282-100;pass:END;sub:END;*/

Shader "DCC/Water Toon V2" {
    Properties {
        _WaterColor ("Water Color", Color) = (0.07450981,0.3647059,0.7058824,1)
        _FoamShoreDepth ("Foam Shore Depth", Float ) = 1
        _FoamShoreSpread ("Foam Shore Spread", Range(0, 1)) = 1
        _FoamShoreFalloff ("Foam Shore Falloff", Float ) = 0.5
        _FoamShoreTransparencyBlend ("Foam Shore Transparency Blend", Float ) = 0.1
        _FoamShoreTint ("Foam Shore Tint", Color) = (1,1,1,1)
        _Foam ("Foam", 2D) = "black" {}
        _FoamTint ("Foam Tint", Color) = (0.1803922,0.4705882,0.8196079,1)
        _FoamShore ("Foam Shore", 2D) = "white" {}
        _WaterTextureWobble ("Water Texture Wobble", Range(0, 0.1)) = 0.002
        _FoamTextureWobble ("Foam Texture Wobble", Range(0, 0.1)) = 0.002
        _Noise ("Noise", 2D) = "white" {}
        _GerstnerNoiseIntensity ("Gerstner Noise Intensity", Range(0, 1)) = 0.1
        _Wave1XDirection ("Wave 1 X-Direction", Range(-1, 1)) = 0.1
        _Wave1YDirection ("Wave 1 Y-Direction", Range(-1, 1)) = 0
        _Wave2XDirection ("Wave 2 X-Direction", Range(-1, 1)) = 0
        _Wave2YDirection ("Wave 2 Y-Direction", Range(-1, 1)) = 0.1
        _Wave3XDirection ("Wave 3 X-Direction", Range(-1, 1)) = 0.2
        _Wave3YDirection ("Wave 3 Y-Direction", Range(-1, 1)) = 0
        _WaveSpeed ("Wave Speed", Float ) = 0.1
        _WaveSpread ("Wave Spread", Float ) = 10
        _WaveHeight ("Wave Height", Float ) = 0.08
        _WaveSharpness ("Wave Sharpness", Float ) = 1
        _WaveIntensity ("Wave Intensity", Float ) = 1
        _Gerstner1TimeMultiplier ("Gerstner 1 Time Multiplier", Float ) = 0
        _Gerstner2TimeMultiplier ("Gerstner 2 Time Multiplier", Float ) = 2
        _Gerstner3TimeMultiplier ("Gerstner 3 Time Multiplier", Float ) = 4
        _GerstnerDivide ("Gerstner Divide", Float ) = 3
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _WaterColor;
            uniform float _FoamShoreDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            uniform float _FoamTextureWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _WaterTextureWobble;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _FoamShoreTransparencyBlend;
            uniform float _GerstnerNoiseIntensity;
            float3 GerstnerVertex2( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            float3 GerstnerVertex3( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _Wave2XDirection;
            uniform float _Wave2YDirection;
            uniform float _Wave3XDirection;
            uniform float _Wave3YDirection;
            uniform float _Gerstner2TimeMultiplier;
            uniform float _Gerstner3TimeMultiplier;
            uniform float _GerstnerDivide;
            uniform float _FoamShoreSpread;
            uniform float _FoamShoreFalloff;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float4 node_2847 = _Time;
                float2 node_104 = float2(_Wave1XDirection,_Wave1YDirection);
                float2 node_7356 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float2 node_5978 = float2(_Wave2XDirection,_Wave2YDirection);
                float2 node_8983 = float2(_Wave3XDirection,_Wave3YDirection);
                float3 node_1112 = ((v.normal*(_GerstnerNoiseIntensity*_Noise_var.rgb))+(sin(((GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier+node_2847.g) , dot(node_104,node_7356) , node_104 )+GerstnerVertex2( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner2TimeMultiplier+node_2847.g) , dot(node_5978,node_7356) , node_5978 )+GerstnerVertex3( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner3TimeMultiplier+node_2847.g) , dot(node_8983,node_7356) , node_8983 ))/_GerstnerDivide))*_WaveIntensity));
                v.vertex.xyz += node_1112;
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
                float node_6167 = 0.0;
                float gloss = 1.0 - node_6167; // Convert roughness to gloss
                float perceptualRoughness = node_6167;
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
                float3 specularColor = float3(node_6167,node_6167,node_6167);
                float specularMonochrome;
                float2 node_3718 = i.posWorld.rgb.rb;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3669 = normalize(float2((_Wave1XDirection+_Wave2XDirection+_Wave3XDirection),(_Wave1YDirection+_Wave2YDirection+_Wave3YDirection)));
                float4 node_3420 = _Time;
                float node_6190 = (node_3420.g*_WaveSpeed);
                float2 node_2907 = ((node_3718*pow(_Noise_var.rgb,_WaterTextureWobble).rg)+(node_3669*node_6190));
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_2907, _Foam));
                float2 node_5584 = ((node_3718*pow(_Noise_var.rgb,_FoamTextureWobble).rg)+(node_3669*node_6190));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_5584, _FoamShore));
                float3 diffuseColor = lerp(lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a),lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_FoamShoreDepth)*(1.0 / _FoamShoreSpread)),_FoamShoreFalloff)))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
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
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                diffuseColor *= 1-specularMonochrome;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _WaterColor;
            uniform float _FoamShoreDepth;
            uniform float4 _FoamShoreTint;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _FoamTint;
            uniform sampler2D _FoamShore; uniform float4 _FoamShore_ST;
            uniform float _FoamTextureWobble;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _WaterTextureWobble;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _FoamShoreTransparencyBlend;
            uniform float _GerstnerNoiseIntensity;
            float3 GerstnerVertex2( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            float3 GerstnerVertex3( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _Wave2XDirection;
            uniform float _Wave2YDirection;
            uniform float _Wave3XDirection;
            uniform float _Wave3YDirection;
            uniform float _Gerstner2TimeMultiplier;
            uniform float _Gerstner3TimeMultiplier;
            uniform float _GerstnerDivide;
            uniform float _FoamShoreSpread;
            uniform float _FoamShoreFalloff;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float4 node_2847 = _Time;
                float2 node_104 = float2(_Wave1XDirection,_Wave1YDirection);
                float2 node_7356 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float2 node_5978 = float2(_Wave2XDirection,_Wave2YDirection);
                float2 node_8983 = float2(_Wave3XDirection,_Wave3YDirection);
                float3 node_1112 = ((v.normal*(_GerstnerNoiseIntensity*_Noise_var.rgb))+(sin(((GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier+node_2847.g) , dot(node_104,node_7356) , node_104 )+GerstnerVertex2( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner2TimeMultiplier+node_2847.g) , dot(node_5978,node_7356) , node_5978 )+GerstnerVertex3( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner3TimeMultiplier+node_2847.g) , dot(node_8983,node_7356) , node_8983 ))/_GerstnerDivide))*_WaveIntensity));
                v.vertex.xyz += node_1112;
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
                float node_6167 = 0.0;
                float gloss = 1.0 - node_6167; // Convert roughness to gloss
                float perceptualRoughness = node_6167;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = float3(node_6167,node_6167,node_6167);
                float specularMonochrome;
                float2 node_3718 = i.posWorld.rgb.rb;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float2 node_3669 = normalize(float2((_Wave1XDirection+_Wave2XDirection+_Wave3XDirection),(_Wave1YDirection+_Wave2YDirection+_Wave3YDirection)));
                float4 node_3420 = _Time;
                float node_6190 = (node_3420.g*_WaveSpeed);
                float2 node_2907 = ((node_3718*pow(_Noise_var.rgb,_WaterTextureWobble).rg)+(node_3669*node_6190));
                float4 node_1087 = tex2D(_Foam,TRANSFORM_TEX(node_2907, _Foam));
                float2 node_5584 = ((node_3718*pow(_Noise_var.rgb,_FoamTextureWobble).rg)+(node_3669*node_6190));
                float4 node_982 = tex2D(_FoamShore,TRANSFORM_TEX(node_5584, _FoamShore));
                float3 diffuseColor = lerp(lerp(_WaterColor.rgb,(node_1087.rgb*_FoamTint.rgb),node_1087.a),lerp(_WaterColor.rgb,(node_982.rgb*_FoamShoreTint.rgb),node_982.a),(1.0 - saturate(pow((saturate((sceneZ-partZ)/_FoamShoreDepth)*(1.0 / _FoamShoreSpread)),_FoamShoreFalloff)))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
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
                diffuseColor *= 1-specularMonochrome;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Wave1XDirection;
            uniform float _Wave1YDirection;
            float3 GerstnerVertex1( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _WaveSpeed;
            uniform float _WaveSpread;
            uniform float _WaveHeight;
            uniform float _WaveSharpness;
            uniform float _Gerstner1TimeMultiplier;
            uniform float _WaveIntensity;
            uniform float _GerstnerNoiseIntensity;
            float3 GerstnerVertex2( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            float3 GerstnerVertex3( float Steepness , float Amplitude , float Wavelength , float Speed , float Time , float DotProd , float2 DirectionVec ){
            float phaseConst = Speed * Wavelength;
            float xVal = Steepness * Amplitude * DirectionVec.x * cos(Wavelength * DotProd + Time * phaseConst);
            float yVal = Amplitude * sin(Wavelength * DotProd + Time * phaseConst);
            float zVal = Steepness * Amplitude * DirectionVec.y * cos(Wavelength * DotProd + Time * phaseConst);
            return float3(xVal, yVal, zVal);
            
            }
            
            uniform float _Wave2XDirection;
            uniform float _Wave2YDirection;
            uniform float _Wave3XDirection;
            uniform float _Wave3YDirection;
            uniform float _Gerstner2TimeMultiplier;
            uniform float _Gerstner3TimeMultiplier;
            uniform float _GerstnerDivide;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _Noise_var = tex2Dlod(_Noise,float4(TRANSFORM_TEX(o.uv0, _Noise),0.0,0));
                float4 node_2847 = _Time;
                float2 node_104 = float2(_Wave1XDirection,_Wave1YDirection);
                float2 node_7356 = mul(unity_ObjectToWorld, v.vertex).rgb.rb;
                float2 node_5978 = float2(_Wave2XDirection,_Wave2YDirection);
                float2 node_8983 = float2(_Wave3XDirection,_Wave3YDirection);
                float3 node_1112 = ((v.normal*(_GerstnerNoiseIntensity*_Noise_var.rgb))+(sin(((GerstnerVertex1( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner1TimeMultiplier+node_2847.g) , dot(node_104,node_7356) , node_104 )+GerstnerVertex2( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner2TimeMultiplier+node_2847.g) , dot(node_5978,node_7356) , node_5978 )+GerstnerVertex3( _WaveSharpness , _WaveHeight , _WaveSpread , _WaveSpeed , (_Gerstner3TimeMultiplier+node_2847.g) , dot(node_8983,node_7356) , node_8983 ))/_GerstnerDivide))*_WaveIntensity));
                v.vertex.xyz += node_1112;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
