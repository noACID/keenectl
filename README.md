# Controlling Keene USB FM Transmitter

See https://blog.mister-muffin.de/2011/03/14/keene-fm-transmitter/ for more details.

## Compiling on macOS:

```shell
brew install libusb-compat
gcc keenectl.o -lusb -lm -o keenectl -Wall -I/usr/local/Cellar/libusb-compat/0.1.5/include -L/usr/local/lib/ -I/usr/local/include/ -L/usr/local/Cellar/libusb-compat/0.1.5/lib
```

For a precompiled binary, see releases.

## Usage

The arguments correspond to TX (0-23), preemphasis (50us or 75us), channels (mono or stereo), frequency (floats from 76.0-108.0), PA (30 to 120), enable or disable and mute or unmute. If one of the arguments is - the default value is set. A command explicitly specifying the defaults would hence look like:

```shell
./keenectl 0 50us stereo 90.0f 120 enable unmute
./keenectl 0 50us stereo 87.60f 120 enable unmute
```

When the command runs successfully, it'll echo the following two lines:

```
usb_control_msg returned 8
usb_control_msg returned 8
```

No root required to run on macOS.
