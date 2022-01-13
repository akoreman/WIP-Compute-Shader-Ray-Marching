#ifndef FOLDS_DEFINED
#define FOLDS_DEFINED

float ClipToRange(float v, float r)
{
	if (v > r)
	{
		return r;
	}

	if (v < -r)
	{
		return -r;
	}

	return v;
}

float3 ApplyScaleTranslate(float3 Position, float Scale, float3 Offset)
{
	return Position * Scale - Offset * (Scale - 1.0);
}

float3 ApplySierpinskiFold(float3 Position)
{
	if (Position.x + Position.y < 0) Position.xy = -Position.yx; 
	if (Position.x + Position.z < 0) Position.xz = -Position.zx; 
	if (Position.y + Position.z < 0) Position.zy = -Position.yz;	

	return Position;
}

float3 ApplyBoxFold(float3 Position, float3 r)
{
	Position.x = ClipToRange(Position.x, r) * 2 - Position.x;
	Position.y = ClipToRange(Position.y, r) * 2 - Position.y;
	Position.z = ClipToRange(Position.z, r) * 2 - Position.z;


	return Position;
}

float3 ApplySphereFold(float3 Position, float minR, float maxR)
{
	float rSquared = dot(Position, Position);
	return Position * max(maxR / max(minR, rSquared), 1.0);
}

float3 ApplyScaleOrigin(float3 Position)
{

}


float3 ApplyAbsX(float3 Position)
{
	Position.x = abs(Position.x);
	return Position;
}

float3 ApplyAbsY(float3 Position)
{
	Position.y = abs(Position.y);
	return Position;
}

float3 ApplyAbsZ(float3 Position)
{
	Position.z = abs(Position.z);
	return Position;
}

float3 ApplyModX(float3 Position, float m)
{
	Position.x = Position.x % m;
	return Position;
}

float3 ApplyModY(float3 Position, float m)
{
	Position.y = Position.y % m;
	return Position;
}

float3 ApplyModZ(float3 Position, float m)
{
	Position.z = Position.z % m;
	return Position;
}

#endif