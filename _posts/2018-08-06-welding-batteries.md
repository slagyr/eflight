---
layout: post
title:  "Welding Batteries"
date:   2018-08-06
tags: ["Battery"]
---

In the [previous post on the electric skateboard](/eflight/2018/07/18/electric-skateboard.html) I alluded to a better way to connect batteries.  The steel springs and screw I had originally used led to voltage sag because of the relatively high resistance of steel.  A better solution is to use Nickel strips and spot weld them to the battery terminals.

Here's a picture of new welded battery pack for the skateboard.

![New Battery Pack](/eflight/img/2018-08-06/1.jpg)

#### Spot Welding

A spot welder works by releasing a pulse (or two) of high current through two leads.  The leads should be touching the material, let's assume Nickel, to be welded.  The high current heats up the Nickel beyond it's melting point and once cooled, the metal surfaces are welded together.

Most spot welders actually release two pulses of current.  The first is a short pulse that will soften the Nickel and burn any contaminants.  Afterwards the leads make much better contact with the Nickel.  This makes the second, longer pulse more effective.  It's the second pulse that causes the welding.

#### Nickel

Pure Nickel is a great material for spot welding batteries.  1) Nickel is 12 times more conductive than stainless steel.  It can carry the high current loads without significant voltage sag.  2) Nickel is 4 times more resistive (25% the conductivity) of copper.  Now, Copper, Silver, Gold, and Aluminum are all better conductors than Nickel, but when it comes to spot welding, we need one metal to melt.  If we tried spot welding copper strips, the copper leads would end up welded to the copper strips.  Not good!  Nickel has enough resistance to soak up some current and heat to it's melting point first.

For the purpose of building battery packs, I purchased a big roll of 8mm x 0.15mm Nickel tape.  With these dimensions, one strip can safely carry 5 Amps.  But the pack needs to deliver 20 Amps.  So in many places there are multiple strips of Nickle overlapping and welded together.  The combined strips are sufficient to carry the 20A load.

#### Arduino Spot Welder

Try shopping for a spot welder online.  You'll find industrial welders, the kind used on cars.  And you'll find welders made in China with chinese labels.  I was pleased to see that there's a [DYI welder built using an Ardiuno](https://www.instructables.com/id/DIY-Arduino-Battery-Spot-Welder/).  Not only does tham mean I can download the source code and play with it, but this welder has hand-held leads and a pedal to trigger the pulses.  

I shared a few emails with [Marc from Malectrics](https://malectrics.eu/) and I gotta say, he's a good guy.  Very helpful!  

I hooked up the Arduino welder to my backup EarthX battery for the OneX, and it worked awesome!  Love it.      

![Sopt Welder](/eflight/img/2018-08-06/2.jpg) 

#### Why Not Solder?

It would be tempting to just solder copper wire between the batteries.  If you're like me, you already have a soldering iron and plenty of copper wire.  Whereas, spot welders are not so common and are rather pricey.  

With Lithium batteries, heat is the enemy.  It's always fun to watch [Youtube videos of thermal runaway of Li-ion cells](https://www.youtube.com/results?search_query=Li-ion+Thermal+runaway).  Cells reaching temperatures higher than 265°F are susceptible to thermal runaway.  Solder melts at 370°F and soldering irons often reach 600°F or more.  Li-ion batteries do indeed absorb the heat of the solder and the soldering iron and the internal chemicals almost certainly reach 265°.  

Now, brand name 18650 batteries are well made and will not likely explode when you solder them.  But there's a risk.  And certainly, the heat will damage the cells.  They'll have less capacity and a shorter life.  

Spot welding get's hot too.  But the heated area is so small and the duration is so short, the head barely penetrates into the cell.  Here's a [video comparing soldering and spot welding with a thermal camera](https://www.youtube.com/watch?v=byvr-dwwao4).      

