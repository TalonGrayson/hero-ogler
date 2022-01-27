# HeroOgler - Please Read!
HeroOgler is an assistant for using OGLE and GLIntercept to capture 3D models of City of Heroes. It has been designed to work with Homecoming, and other flavours of CoX may not work.

OGLE and GLIntercept only work on Windows (as far as I'm aware), so HeroOgler has been designed to run in Windows only.

You can use this to capture a model of your toon, of scenery, or of anything else represented in the OpenGL space.

Once captured, the .obj file can be imported into your 3D modelling software of choice and fixed up, ready for 3D printing, rigging/animation, etc.

### How to Use
- Extract the zip into a convenient folder. It doesn't really matter where, **so long as the file path has no spaces** (e.g. `C:\City Of Heroes\HeroOgler` will not work, but `C:\CityOfHeroes\HeroOgler` will work).
- Run HeroOgler.bat - **you'll need to run this as an administrator the first time** (or any time you need to install GLIntercept). This is because the batch file creates an OGLE folder in the appropriate place.
- Once everything is installed, if you want to capture something, just run `HeroOgler.bat`
- If HeroOgler detects an issue with your OGLE setup, it will try to fix it.
- Once you're in the game, use **Shift + Ctrl + L** to capture the frame
- You'll find `ogle.obj` in your Homecoming root folder

A full guide including steps to prep a 3D model for 3D printing, written by [@leeper48](https://forums.homecomingservers.com/profile/54401-leeper48/), can be found here:  
#### [3D Printing City of Heroes Characters Instructions](https://forums.homecomingservers.com/topic/34096-3d-printing-city-of-heroes-characters-instructions)

### For the Brave
Feel free to tweak the `gliConfig.ini` file in `[your Homecoming folder]\bin\win64\live`. If things stop working, you can just delete it. Next time you run HeroOgler, the default `gliConfig.ini` will be reinstated.

The main thing you're likely to want to change (depending on your keybinds) is the capture keybind. This appears on line 103 of the `gliConfig.ini`.

### Additional
You can create a shortcut to `HeroOgler.bat` and put it somewhere convenient, but please don't change the file structure within the HeroOgler folder, as that will break things.


When you launch the game with HeroOgler, it enables OGLE, and when the client closes, it disables OGLE. If you ever find your game is crashing unexpectedly, check `[your Homecoming folder]\bin\win64\live` for a file called `OpenGL32.dll`. If it exists, you can rename it `OpenGL32.dll.off`, or run `HeroOgler\lib\bats\disable_ogle.bat`

### Many thanks to the following:

[GLIntercept](https://github.com/dtrebilco/glintercept) - special thanks now that this supports 64-bit  
[OGLE for GLIntercept](https://github.com/dgis/OGLE-for-GLIntercept) - special thanks now that this supports 64-bit  
[@leeper48](https://forums.homecomingservers.com/profile/54401-leeper48/) - his efforts have been instrumental in bringing this to life  

And of course, every single soul who was involved in the original development of City of Heroes, to those who brought it back to life post-sunset, and to every last player who makes it worth the effort.

#### Donations in the form of purple recipes can be sent via in-game email to @TalonGrayson 😁
