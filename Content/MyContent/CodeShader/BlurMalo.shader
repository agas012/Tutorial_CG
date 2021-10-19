int blur_samples = int(samples * 0.5f);

float3 blur = 0.0f;
float2 sample_coords = 0.0f;

for (int i=-blur_samples; i<blur_samples; i++)
{
	sample_coords.x = i * (size / blur_samples*2);
	
	blur += Texture2DSample(Tex_in, Tex_inSampler, UV + sample_coords)/(blur_samples*2);
}

return blur;