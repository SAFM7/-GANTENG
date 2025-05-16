It's tool to scaling up image resolution Practical Algorithms for General Image/Video Restoration., 
Not all of attributes is my own project. I just make thing easire to use for my own work :) 
(Tbh it's make my head hurt if I look a blurry image to printed on high dpi printer)

I used Real-ESRGAN ncnn Vulkan from 
https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan 
It's the best to scale image I ever used.
so I make some modification to make it easier to use.

Here is description of Real-ESRGAN
This project is the ncnn implementation of Real-ESRGAN. Real-ESRGAN ncnn Vulkan heavily borrows 
from realsr-ncnn-vulkan. Many thanks to nihui, ncnn and realsr-ncnn-vulkan 😁

Real-ESRGAN aims at developing Practical Algorithms for General Image Restoration. 
We also optimize it for anime images.

Real-ESRGAN: Training Real-World Blind Super-Resolution with Pure Synthetic Data
This executable file is portable and includes all the binaries and models required. No CUDA or PyTorch environment is needed.

You can simply run the following command (the Windows example, more information is in the README.md of each executable files):

./realesrgan-ncnn-vulkan.exe -i input.jpg -o output.png -n model_name
We have provided five models:

realesrgan-x4plus (default)
  realesrnet-x4plus
  realesrgan-x4plus-anime (optimized for anime images, small model size)
  realesr-animevideov3 (animation video)
You can use the -n argument for other models, for example, 
  ./realesrgan-ncnn-vulkan.exe -i input.jpg -o output.png -n realesrnet-x4plus

Usage of portable executable files
Please refer to Real-ESRGAN-ncnn-vulkan for more details.
Note that it does not support all the functions (such as outscale) as the python script inference_realesrgan.py.

Usage: realesrgan-ncnn-vulkan.exe -i infile -o outfile [options]...

I hope you dont read all of this text because I'm too lazy to make it cooler to look :D
