# slideshow-wallpaper-ubuntu

> Shell script to set pictures in a folder as Desktop Slideshow in Ubuntu 14.04

Shotwell Photo Manager in Ubuntu already provides an option to set selected images as slideshow. However it does not give us the option to select images of an entire folder where we can add new images to the folder and the image list that is to be set as desktop wallpaper gets updated. This script allows you to do exactly that, if used with cron to run at a time interval.

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

![](https://raw.githubusercontent.com/ammarx/slideshow-wallpaper-ubuntu/master/exec.png)

By doing this, you have made the script executable. Now you need to set a scheduled task which will run the script at a given interval.

To do that, open the terminal and type:

```bash
$ crontab -e
```

This will open up a text editor inside the terminal. Scroll to the end and set the interval of time at which you want the script to be executed at. I have set it mine to run at every 0, 15, 30, 45 mins of every hr, every day. To do that, you have to type:

```
0,15,30,45 * * * * bash '/home/ammar/slideshow-wallpaper-ubuntu.sh' # JOB_ID_1
```

![](https://raw.githubusercontent.com/ammarx/slideshow-wallpaper-ubuntu/master/cron1.png)

Where '/home/ammar/slideshow-wallpaper-ubuntu.sh' is the path to the script

After doing this, you have to save the file. To do that press 'ctrl+x' and then press 'Y' and enter.

![](https://raw.githubusercontent.com/ammarx/slideshow-wallpaper-ubuntu/master/cron2.png)

If you have set everything properly, you should see your wallpaper change every 15 mins (or at interval you have set it to).

## Cron schedule examples

If you are not familiar with cron, I recommend you read this article:
http://tecadmin.net/crontab-in-linux-with-20-examples-of-cron-schedule/
