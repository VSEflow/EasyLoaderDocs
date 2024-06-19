---
search:
  exclude: true
---

# VSE EasyLoader Software

## What is VSE EasyLoader?

### Motivation

!!! rocket inline end "Quick Start"
    To quickly get started, you can [click here](2basics.md#configuration-workflow) to find out how to make an example configuration.

The EasyLoader software was developed to simplify the parametrization of VSE's flow evaluation units A341, A350, FU252 and FU210. Due to the fact that many different calculations are needed in order to manually calculate the right settings for these devices, the parametrization process is usually done by VSE. With the EasyLoader the customer gets a simple tool to set up the device with a selectable flowmeter type and upload the configuration to the device. Additional options such as analog scaling, filter levels and linearization are also changeable through the software. 

The EasyLoader represents the (_imaginary_) bridge between the _easy-to-configure_ flowmeter settings and the device's register values. Even though the calculation of the device registers is partially described in each device's user manual, it is very cumbersome to do so by hand.

### Main features
EasyLoader offers the following main features:

* Simple windows tool to connect with VSE's evaluation units
* Specialized specifically for VSE's flowmeters (integrated flowmeter database)
* Support for A341-28, A350-28 and FU210-28 (no support for older FU252-28 in ```v6.0```)
* Easy configuration of settings using only few input fields
* Integrated formulas and calculations for all devices
* New register editor for advanced users (with search and filter functions)
* Copy-Paste input of calibration data
* Embedded connection diagrams and user manuals
* Live Readout of current measurement values
* Up-/Download of ```*.xml``` files
* Save/Restore of configuration presets (```*.easyConf```)


### Software download
VSE EasyLoader is available free of charge. While older versions ```<=v5.9``` are standalone executable files, the newest version ```v6.0``` has to be installed using an msi-Installer package (__no__ admin rights are required for the installation). Both software versions can be downloaded from our homepage [:material-link: vse-flow.com](https://www.vse-flow.com/en/downloads.html?scrollTo=software).


## Structure

This documentation is structured into the following main chapters:

* [Basics](2basics.md) explains how to connect a device and how the configuration workflow works
* [Features](3features.md) describes all available program features in-depth
* [Advanced Features](4advanced.md) contains the documentation of more complicated extra features
<!---
* [Register Reference](4devregs.md) explains the functionality of important device registers and how they are calculated
* [Up-/Download](5updownload.md) shows how the XML-Up-/Download functionality works
-->
* [FAQs](6faqs.md) shows how to solve the commonly asked questions and problems

## License info

Disclaimers and license information of used software components can be found in the [About](7about.md) section.