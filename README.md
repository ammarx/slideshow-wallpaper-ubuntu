# slideshow-wallpaper-ubuntu

> Shell script to set pictures in a folder as Desktop Slideshow in Ubuntu 14.04

![](https://raw.githubusercontent.com/ammarx/slideshow-wallpaper-ubuntu/master/exec.png)

Shotwell Photo Manager in Ubuntu already provides an option to set selected images as slideshow. However it does not give us the option to select images of an entire folder where we can add new images to the folder and the image list that is to be set as desktop wallpaper gets updated. This script allows you to do exactly that, if used with cron to run at a time intervel.

## Installation

Download the script to Home directory:

```bash
$ wget https://raw.githubusercontent.com/ammarx/slideshow-wallpaper-ubuntu/master/src/slideshow-wallpaper-ubuntu.sh
```

By default, the script is going to set any image it finds in the pictures folder. However, you can change it by opening the script with a text editor (example: gedit) and changing path of the saveDir variable:

```bash
saveDir="$HOME/Pictures/"
```

Now that we have configured the path, we need to make the script executable. To do that, right click slideshow-wallpaper-ubuntu.sh > Properties > Permissions

and check the "Allow executing file as program" checkbox.
