---
layout: post
title: "Kaiju Board"
date: 2014-05-08 12:13:37 -0700
comments: true
categories: [3dprinting, arduino, android, building]
coverimage: /images/2014-05-08-post-kaiju-board/Photo-2014-07-14_6_17_55PM.jpg
attract_cols:
attract_rows:
---
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-05-08_12_44_28AM.jpg 320 240 %}
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-05-23_2_35_23AM.jpg 320 240 %}
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-07-14_6_15_51PM.jpg 320 240 %}
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-07-14_6_16_16PM.jpg 320 240 %}
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-07-14_6_17_55PM.jpg 320 240 %}
{% img pull left /images/2014-05-08-post-kaiju-board/Photo-2014-07-14_6_19_19PM.jpg 320 240 %}
We have a large wall mounted display at the office that is intended to display the status of various systems.  We've yet to find a great app that is both informative and keeps people checking on it.

We tried [Buildron](http://skahal.com/buildron/) but after a while it crashes and needs to be restarted.  And I never could get the Gravatar integration to work.

So we've decided to build our own information radiator utilising a Pandaboard we have in the office. We've got Android on it, and Leslie has got a demo unity app to install and run.

To house this I build a wooden frame.  The back houses speakers, amplifier, Pandaboard, and an Arduino.  The Arduino controls 8 RGB LEDs embedded in the side of the frame. Long term we plan to have the Pandaboard send control messages to the Arduino that will trigger different LED sequences. Eg failing builds - shades of red.

The Pandaboard is held in place by a custom 3D clip that I created in OpenSCAD and printed. Right now everything else is held by tape, but they'll get 3D printed holders to.

I put to use the foam cutter I made from a broken toaster to cut out our team name from styrofoam. The acid etched look was achieved by using a couple of different kinds of spray paint. Solvent based spray paint dissolves styrofoam, whereas acrylic based doesn't.

