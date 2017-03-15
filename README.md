# Backpack
Backpack is a basic interpolation module for Framer. To use it, clone this repository into the 'modules' folder of your Framer project. The library and the engine are purposely separate so that you can add your own easing functions (elastic, spring, etc.)

## Basic usage

```
#Import the engine
Backpack = require 'backpack'

#Import the library
Easings = require 'lib/easings'

Backpack Easings.linear, .2, [0, 1], [0, 4], false

```
The first argument ```Easings.linear``` is the method by which the values are interpolated. The second argument is the value that you wish to interpolate. You might recognize this structure from Framer's "Utils.modulate" global method. The third argument ```[0, 1]``` is the first range. The fourth argument ```[0, 4]``` is the second range or ***output range***. The fourth and final argument is the limit condition. If the condition is set to true, the values will not surpass the boundaries of the given range at any point during the function.

More easing functions are coming soon, but feel free to add your own.