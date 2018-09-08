---
layout: post
title:  "Starting Point"
date:   2018-07-16
tags: ["Motor", "Controller", "Propeller", "Battery"]
---

This is the starting point of this blog, but it's more of a midpoint in my efforts.  Much has been done since I completed the OneX in January.  But I only recently decided to create this blog. Details about my activities will come in later blog entries, but what's on my mind now is batteries.

First some background.  Now that I've built a conventional plane, my next focus is on electric propulsion.  And the major project here is to electrify a conventional airplane. 

Although I had hoped to sell the OneX or keep it as a toy, I've decided that it's a decent candidate for electrification.  And with that decision made, a million questions arise.

 * Where do I get an electric motor?
 * How much power? Torque? RPM?
 * What kind of propeller will be needed?
 * How do I get the controller for the motor?
 * How do I make a battery?
 * ...
 
It took a few months of research but I've answered most of these questions.

##### Motor

The [Emrax 268](http://emrax.com/products/emrax-268/) is on order.  Emrax makes the most powerful motors for their weight, making them very popular for aircraft.  So popular that it'll take them 14 weeks to fulfill my order.

##### Controller

Emrax had a short list of recommended controllers for their motor.  Choosing the [Unitek Bamorcar](https://www.unitek-industrie-elektronik.de/bamocar-d3) was easy.  I look forward to playing with it in a few weeks when it arrive.

##### Propeller

Lonnie Prince of [Prince Aircraft Company](http://www.princeaircraft.com/) has been very helpful.  Given the power of the motor and anticipated cruise speed, he can build the ideal propeller.

##### Battery

My current story card.  The requirements are determined by the motor/controller: **700V, 400A max.**

Tesla's first car, the Roadster, used laptop batteries.  Thousands of 18650 lithium batteries.  Since then, that's what everyone's been doing.  As shall I.  How many cells do I need?

A single 18650 cell has a nominal voltage of about ~3.6V.  Cell in series add their voltage. 700 / 3.6 = **~195 cells in series** at least!

Cells in parallel add their current.  But the discharge current of cells varies with the chemestry of the cell.  I want the most energy for the least amount of weight.  One of the highest capacity cells is the Samsung 35E.  It has a max continuous discharge rate of **8A**, capacity of **3500 mAh**, and a weight of **50g**.   
 
400 / 8 = 50 cells minimum to achieve 400A.  How many cells are needed to satisfy both Amps and Volts?  50 * 195 = 9750 cells. Yike!  That many cells would weight 488kg, 1073lbs.  Way too much!  Let's work this from the other side.

The weight allocation for batteries is about 250lbs, ~114kg.  That's 2280 cells.  400V should yield plenty of power.  That's 111 cells in series, allowing 20 parallel groups yielding 160 amps.  That'd be 65kW which is about 80HP, the same as the motor in the plane now.  I want more.  Maybe I need to reconsider the weight allocation.  Either way, I need to put all this in a spreadsheet.  

More later.

##### Eye Candy

This image is just eye candy.  I'll talk about the CAD design later.

![OneX plans](/eflight/img/2018-07-16/1.jpg)


