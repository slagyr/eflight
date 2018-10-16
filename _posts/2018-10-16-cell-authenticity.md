---
layout: post
title:  "Cell Authenticity"
date:   2018-10-16
tags: ["Battery"]
---

Li-ion cells, especially 18650 cells, are ripe for fraud.  They are such a commodity these days that sketchy distributors can make a handy profit by wrapping cheap low-quality cells in name brand skins and selling them for a premium.  They get creative.  Sometimes they'll take low-end cells from a certain name brand, re-wrap them as high-end cells of the same brand and sell them.  Sometimes they'll take an order of authentic cells and radnomly replace some of the cells with frauds.

I want authentic cells going into my airplane.  So I've been testing the cells that I recently received.  These are LG Chem, MJ1 cells.  LG Chem publishes a product specification that describes the attributes and performance characteristics of their cells.  We can test our cells against these specifications.  I've been taking sample cells at random from the packing that they came in and testing them.  Here's a sample of my data.

|ID|case|out of box V|weight (g)|charged voltage|capacity @0.5mA (mAh)|capacity @0.2C|	capacity @1C|% loss 0.2 - 1C|
| :-: | :-: | :-:   | :-: | :-:   | :-:  | :-:  | :-:  | :-:   |
| 1   | 1   | 3.599 | 47  | 4.139 | 3783 | 3410 | 3330 | 2.35% |
| 2   | 1   | 3.599 | 47  | 4.144 | 3728 | 3430 |      |       |
| 3   | 1   | 3.599 | 47  | 4.142 | 3864 |      |      |       |
| 4   | 1   | 3.599 | 47  | 4.141 | 3719 |      |      |       |
| 5   | 2   | 3.601 | 47  | 4.139 | 3753 | 3410 | 3290 | 3.52% |
| 6   | 2   | 3.601 | 46  | 4.139 | 3701 | 3410 |      |       |
| 7   | 2   | 3.601 | 46  | 4.145 | 3828 |      |      |       |
| 8   | 2   | 3.600 | 46  | 4.146 | 3701 |      |      |       |
| 9   | 3   | 3.599 | 47  | 4.150 | 3778 | 3400 | 3250 | 4.41% |
| 10  | 3   | 3.599 | 47  | 4.155 | 3722 | 3460 |      |       |
| 11  | 3   | 3.599 | 47  | 4.150 | 3853 |      |      |       |
| 12  | 3   | 3.599 | 47  | 4.150 | 3702 |      |      |       |
| 13  | 4   | 3.599 | 47  | 4.141 | 3771 | 3410 | 3320 | 2.64% |
| 14  | 4   | 3.600 | 46  | 4.142 | 3709 | 3410 |      |       |
| 15  | 4   | 3.599 | 46  | 4.145 | 3865 |      |      |       |
| 16  | 4   | 3.599 | 47  | 4.147 | 3696 | 3310 |      |       |  

##### Appearance 

MJ1 cells are wrapped in green PVC, printed with identification, and "no defects such as deep scratch, rust, discoloration or leakage".  Not only do all the cells match the specification, but they are beautifully smooth, clean, and shiny.

##### Dimensions

The 18650 category of cells are so named because they are 18mm in diameter and 65mm in length.  MJ1's are actually 18.4mm in diameter though.  The specifications allow a tolerance of +0.1/-0.3mm in diameter and +-0.2mm in length.  A quick measurement of a few cells confirms the dimensions, and with all the cells lined up in the packaging, it's easy to confirm that they are all identical. 

##### Weight

The specs say each cell should weight a max of 49g.  My data indicates an average of roughly 46.5g.

##### Nominal Voltage

Specs: 3.635V.  This is not something I can simply measure.  It's more of a calculation... the average voltage during a standard discharge.  But I can measure the voltage of the cells as I pull them out of the factory packaging.  The manufacture delivers the cells at a state of charge that is ideal for shipping.  They're not full and they're not empty.  And they happen to be quite close to the nominal voltage.  What's remarkable is how consistent the voltages are: 3.600V += 0.001V.  Amazing!  That indicates a high quality manufacturing process.  

##### Max/Min Voltage

The specs give a Max cell voltage of 4.2V and a Min of 2.5V.  Now, these are not so much specifications as they are instructions for the user.  One could charge a cell above 4.2V and one could discharge a cell below 2.5V. But one really shouldn't lest they desire exploding cells (worst case scenario).


##### Capacity

Specs:  Nominal: 3500 mAh.  Minimum: 3400 mAh.  And as I understand it, manufacturers are optimistic about their "nominal" capacity.  We should expect to see capacities just above the minimum.  

Up to this point, testing the authenticity of the cells has been easy.  Testing capacity required considerable more effort on my behalf. 

I have a [cheap 18650 charger](https://www.amazon.com/Charger-Display-Intelligent-Battery-Batteries/dp/B071GKZB2G/ref=sr_1_24) that tests cell capacity.  As I [describe in the previous blog](/eflight/2018/10/02/voltage-alarm.html#testing-battery-authenticity), the device gave results averaging around 3750 mAh.  That's higher then the specs say because the charger only runs at 0.5A where as the specs say a standard discharge rate is 0.2C (0.68A).         

The [constant current load tester](https://www.amazon.com/gp/product/B07F3NHHST/ref=oh_aui_search_detailpage?ie=UTF8&psc=1) that I got off Amazon allowed me to drain the batteries at a precise rate of my choosing.  So I gave it a shot.  See below.
 
![Initial Test Setup](/eflight/img/2018-10-16/2.jpg)

That test was performed on a cell that I identified as #16.  The resulting capacity at the "standard discharge rate" was 3310 mAh.  Too low! Well, after inspecting the setup, I attribute the error to the poor connections of that cell holder along with it's skinny wires. We were experiencing voltage sag.

I've found that spot welding Nickel strips onto the terminals of the cells gives a much better contact.  Nickel strips were welded to all the other test cells.


#####  Stopping the Capacity Test

In [my last blog](/eflight/2018/10/02/voltage-alarm.html#testing-battery-authenticity), I tell the whole story about how I compromised the integrity of a few cells because the load tests doesn't stop draining the batteries, and how I solved the problem by creating a voltage alarm circuit to disconnect the load tester when the minimum voltage is detected.

The next photo below shows the combined setup with the load tester and the voltage alarm circuit.

![Final Test Setup](/eflight/img/2018-10-02/5.jpg)

This setup worked great.  It protected the cells and gave accurate results which match the specifications.

#####  High Rate Discharge

The standard discharge rate yields relatively low power levels.  When these cells are installed in an airplane, they will need to deliver significantly more power.  So I ran so capacity tests at higher discharge rates.  

At 1C (3.4A), the load tester barely got warm.  You can see that it has a nice fan surrounded by a hugh surface area of colling fins.  That's a repurposed CPU cooling system for computers.  My little voltage alarm circuit however has no such cooling system.  The MOSFET, through which all the battery current passes, got scolding hot.  Only a few seconds in to the first 1C test I touched the MOSFET and sizzled my finger tip, just a bit.  After installing some tiny cooling fins and placing a USB fan over the top its temperature stabilized at about 110º Celsius.  

I was comforted to see that the loss of capacity due to higher rates of discharge was minimal.  Only about 4% capacity loss.

The specs give a max discharge rate of 10A.  For this test I didn't bother using the voltage alarm.  And I figured I had the patience to wait for the 20 minutes it would take to discharge the cell so I didn't need it.  I took a thermal image of the cell under test and you can see that it got pretty warm too!  Over 50º C.  Li-ion cells are not perfect power supplies.  They contain internal impedance which causes them to warn up under high loads.       

![10A Test](/eflight/img/2018-10-16/1.jpg)

##### Conclusion

The capacity testing is time consuming with each standard rate test taking 5 hours.  So although I am continuing with random testing, I have collected enough data at this point to claim with a high level of certainty that the cells I have are authentic.  -* thumbs up *- 
