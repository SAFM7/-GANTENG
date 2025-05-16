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
You can use the -n argument for other models, for example, ./realesrgan-ncnn-vulkan.exe -i input.jpg -o output.png -n realesrnet-x4plus

Usage of portable executable files
Please refer to Real-ESRGAN-ncnn-vulkan for more details.
Note that it does not support all the functions (such as outscale) as the python script inference_realesrgan.py.
Usage: realesrgan-ncnn-vulkan.exe -i infile -o outfile [options]...

  -h                   show this help
  -i input-path        input image path (jpg/png/webp) or directory
  -o output-path       output image path (jpg/png/webp) or directory
  -s scale             upscale ratio (can be 2, 3, 4. default=4)
  -t tile-size         tile size (>=32/0=auto, default=0) can be 0,0,0 for multi-gpu
  -m model-path        folder path to the pre-trained models. default=models
  -n model-name        model name (default=realesr-animevideov3, can be realesr-animevideov3 | realesrgan-x4plus | realesrgan-x4plus-anime | realesrnet-x4plus)
  -g gpu-id            gpu device to use (default=auto) can be 0,1,2 for multi-gpu
  -j load:proc:save    thread count for load/proc/save (default=1:2:2) can be 1:2,2,2:2 for multi-gpu
  -x                   enable tta mode"
  -f format            output image format (jpg/png/webp, default=ext/png)
  -v                   verbose output
Note that it may introduce block inconsistency (and also generate slightly different results from the PyTorch implementation), 
because this executable file first crops the input image into several tiles, and then processes them separately, 
finally stitches together.
