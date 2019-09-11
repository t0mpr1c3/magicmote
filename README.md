Magic Mote
==========

Wireless sensor node interfacing low-power [MSP430G2553 microcontroller]("http://www.ti.com/product/msp430g2553") with [Nordic NRF24L01+]("https://www.sparkfun.com/datasheets/Components/SMD/nRF24L01Pluss_Preliminary_Product_Specification_v1_0.pdf") 2.4 GHz RF module.

Layout designed for easy compatibility with [msprf24]("https://github.com/spirilis/msprf24") and [Enrf24]("https://github.com/spirilis/Enrf24") libraries by Spirilis.


Features
--------

* Unregulated power input from 2xAA or CR2032 Lithium coin cell
* 3.5mm jack socket/3 pin header with optional 2K2 pullup resistor on data line for 1-wire devices
* 4-pin header suitable for DHT22 temperature/humidity sensor
* Analogue input with low pass filter
* Tactile switch (can be mounted either side of board)
* Optional watch crystal
* Programming/serial header
* Dimensions suit panelization 24.5 x 49.00 mm footprint (2 panels on 5x5 cm)


Version history
---------------

_MO01_

First version.
Erratum: TXD and RXD labels permuted on 6-pin programming/serial header.

_MO02_

Switched TXD and RXD labels on 6-pin programming/serial header.
Moved from 3x8mm to 2x6mm watch crystal, with isolated ground plane, removed external capacitors.
Removed superfluous pulldown resistor on TST.
Changed programming/serial header to 2x3 footprint.
Changed switch to smaller SMD footprint and moved to more accessible position at side of board.

