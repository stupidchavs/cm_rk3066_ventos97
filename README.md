cm_rk3066_ventos97
=========

CyanogenMod for Rockchip rk3066 TrekStor SurfTab Ventos 9.7 tablet.

This is a work in progress  and by no means usable yet. More details are
avaiable here: http://http://www.deadlock.dhs.org/rk3066/progress.html

TWRP recovery should be working now, my patch for rk3066 was merged upstream,
however you can't use the image that "make recoveryimage" spits out, you'll
need to repack it manually with my mkbootimg version. I did not yet have
the time to integrate the custom mkbootimg into the build, so that's a TODO
for later.

Still need to prepare and submit my rk3066 patches for CWM.
