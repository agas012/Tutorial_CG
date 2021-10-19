float3 blur = Texture2DSample(Tex_in, Tex_inSampler, UV);

for (int i=0; i<r; i++)
{
	blur += Texture2DSample(Tex_in, Tex_inSampler, UV + float2(i*dist, 0.0f));
	blur += Texture2DSample(Tex_in, Tex_inSampler, UV - float2(i*dist, 0.0f));
}

for (int j=0; j<r; j++)
{
	blur += Texture2DSample(Tex_in, Tex_inSampler, UV + float2(0.0f, j*dist));
	blur += Texture2DSample(Tex_in, Tex_inSampler, UV - float2(0.0f, j*dist));
}

blur /= 2*(2*r)+1;

return blur;