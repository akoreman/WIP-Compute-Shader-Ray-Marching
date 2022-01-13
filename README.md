# Compute Shader Ray Marching
Work In Progress. Working on a program to use ray marching to render in real-time 3D fractals composed of (conformally) transformed primitives. Implemented using HLSL compute shaders through Unity3D. Inspired by http://blog.hvidtfeldts.net/index.php/2011/06/distance-estimated-3d-fractals-part-i/ .

**Currently Implemented:**
- Unlit rendering of fractals composed of translated primitives.
- Directional shadows by retracing from the point where a camera ray hits the geometry to the light source.
- Surface glow implemented by visualising how close non-hitting rays get to the object.
- Coarse ambient occlusion by using the number of marching steps as an analogue for the complexity of the geometry.

**To do:**
- Lit shading by normal vector approximation.
- Soft shadows.

# Images


<img src="https://raw.github.com/akoreman/WIP-Compute-Shader-Ray-Marching/main/images/MengerSponge.PNG" width="400">  

<img src="https://raw.github.com/akoreman/WIP-Compute-Shader-Ray-Marching/main/images/Shadows.PNG" width="400">  

<img src="https://raw.github.com/akoreman/WIP-Compute-Shader-Ray-Marching/main/images/Spheres.PNG" width="400">  

<img src="https://raw.github.com/akoreman/WIP-Compute-Shader-Ray-Marching/main/images/Tetra.PNG" width="400">  

