---
layout: post
title: "Printer Music"
date: 2014-08-02 11:58:06 -0700
comments: true
categories: [3dprinting, midi, gcode]

---

If you look around the internet you can find videos and articles describing various ways of making 3d printers, laser cutters, CNC machines, and other computer controlled devices make sounds.

This goes back a long time- when I was in high-school, one of my friends used to make the Apple IIe drives play music.

Most of these techniques involve moving a part of the machine rapidly back-and-forward hundreds to thousands of times a second.

For a well built, sturdy machine, there's probably no harm. 

Then again, those Apple IIe's often seemed to have failing drives...

But did you know that many 3D Printers include a buzzer?

Take a look at the [`M300`](http://reprap.org/wiki/G-code#M300:_Play_beep_sound) command.

Wouldn't it be nice to have the printer play a tune when it's finished?

But what to do - it's a bit hard to figure out how to write music out as combinations of frequency and duration.

Luckily there are some standard ways of storing musical data, such as [MIDI](http://en.wikipedia.org/wiki/MIDI), and we can write a program to convert from that to `M300` commands.

MIDI records music as a note number and a relative duration. So converting the timing of the notes is going to be pretty easy: `MIDI Duration * time per beat = M300 duration`.

The note numbers represent octave and regualar "C, D, E, F, G, A, B" notes.

We need a way of converting from these octave/notes to a frequency (how many times the speaker will move per second).

A couple of facts that will help us:

* Going from a lower note to the same note one octave higher means a doubling in frequency
* there are 12 notes per octice (including sharps and flats)
* most tunings are based on 'Concert A' which is the A above Middle C
* concert A is defined as being 440Hz
* MIDI represents concert A as not number 69

If you combine all of these together, you'll get a formula like:

`freq = 440 * 2^((n-69)/12)`

(I admit- I cheated a bit, and found this [Python snippet](http://www.dzone.com/snippets/midi-note-number-and-frequency).)

So now we have some rules, or formulae, that will let us convert from MIDI note number/duration pairs to `M300` g-code commands.

But how do we read the MIDI data.


```
>>> for message in track:
...     if message.type == 'note_on':
...             if message.time > 0:
...                     print "M300 S%d S%d" % (440.0*pow(2.0, ((message.note - 69.0) / 12.0)), message.time * 10)

```

