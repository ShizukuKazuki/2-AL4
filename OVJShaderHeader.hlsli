cbuffer cbuff0 : register(b0)
{
	matrix mat; //３D変換行列
};

cbuffer cbuff1 : register(b1)
{
	float3 m_ambient : packoffset(c0); //アンビエント係数
	float3 m_diffuse : packoffset(c1); //ディフーズ係数
	float3 m_specular : packoffset(c2); //スペキュラー係数
	float m_alpha : packoffset(c2.w); //アルファ
}

//頂点シェーダーからピクセルシェーダー
strut VSOutput
{
	float4 vspos : VS_POSITION; //システム用項点座標
  float3 normal : NORMAL; //法線ベクトル
  float2 uv : TEXCOORD; //un値
};