# My Counter Strike: Global Offensive config

List of all the available CS:GO Cvars: <https://developer.valvesoftware.com/wiki/List_of_CS:GO_Cvars>
Orel Text Mod: <https://gamebanana.com/gamefiles/3711>

## Installation on Linux

Navigate to where you want to store the config files, for example `$HOME/Documents`, then:

```bash
git clone https://github.com/PlqnK/csgo-cfg.git
cd csgo-cfg
```

Edit the `copy-cfg-files-linux.sh` script to verify that the CS:GO install path is identical to yours and correct it if that's not the case, then:

```bash
chmod u+x copy-cfg-files-linux.sh
./copy-cfg-files-linux.sh
```

Verify that the files were correctly copied by running:

```bash
ls -l /path/to/your/csgo/cfg
```

## Installation on Windows

Download an archive of this repository by clicking the "Clone or download" green button on the right and then clicking "Download ZIP".

Copy the downloaded `csgo-cfg-master.zip` file to somewhere where you want to store the config files, for example `%USERPROFILE%\Documents` and unzip it.

Edit the `copy-cfg-files-windows.cmd` script to verify that the CS:GO install path is identical to yours and correct it if that's not the case.

Right click on the `copy-cfg-files-windows.cmd` file and click on "Execute as Administrator".

Verify that the files were correctly copied by navigating to your csgo `cfg` folder and checking if the `.cfg` files of this project are present.

## Usage

You don't need to add `+exec autoexec.cfg` to your CS:GO launch options but you need to add `-language textmodorel` to enable the Orel Text Mod.

For optimal use, you shouldn't delete the folder that contains the git repository that's in your `Documents` folder so that you can later edit the files it contains and just re-execute the `copy-cfg-files` script again.

## Personal config

### Launch Options

```
-novid -nojoy -language textmodorel
```

- `novid` to skip the video intro
- `nojoy` is required for me since the Panorama update on Linux
- `language textmodorel` to enable the Orel Text Mod

### Mouse settings

- `DPI`: 1600
  - I have a rather high DPI to avoid pixel skipping, see [3kliksphilip video about it](https://www.youtube.com/watch?v=8XNUp70mDlQ).
- `Polling Rate`: 1000Hz
  - The amount of time per second that your OS will poll your mouse, if you have a wired mouse you want to set this to it's highest value possible. If you have a wireless mouse you also need to think about battery life and maybe set it to 500Hz or 250Hz if you don't feel any difference.

### Video settings

- [VibranceGUI](https://vibrancegui.com/), vibrance level: 75
  - Good compromise between the dull default and the over the top max vibrance.
- `Definition`: 1920x1080
  - The native definition of my monitor.
- `Display Mode`: Fullscreen
  - For the lowest input lag, chose "Fullscreen".
- `Global Shadow Quality`: High
  - Shadow quality affects their render distance so you need the highest one to be able to see them in certain situations and because shadows can giveaway players position you really want to be able to see them in all circumstances.
- `Model/Texture Detail`: High
  - The resolution of the textures, lower the value if you don't care about it or have little amount of VRAM (less than 1GB)
- `Effect Detail`: High
  - See [3kliksphilip video on molotov visibility](https://www.youtube.com/watch?v=s5-aqgwBhM4), if you want less fire smoke at a distance, set `Effect Detail` to `High` and `Shader Detail` to at least `High`. On the other hand if you want less fire smoke close-up , set one of the two to something other than it's highest value.
- `Shader Detail`: Very High
  - Affect reflection on surfaces, like your gun skin, and other parameters.
- `Multicore Rendering`: Enabled
  - Allow CS:GO to use multiple CPU cores.
- `Multisampling Anti-Aliasing Mode`: 4x MSAA
  - Which version of MSAA to use, higher value will look better but have a higher impact on performance. Don't use in conjunction of FXAA.
- `FXAA Anti-Aliasing`: Disabled
  - An other type of AA, less taxing in terms of performance. Don't use in conjunction of MSAA.
- `Texture Filtering Mode`: Anisotropic 8x
  - Enhance the image quality of textures when viewed at an angle. Performance impact really minimal.
- `Wait for Vertical Sync`: Disabled
  - VSync, you absolutely don't want that in CS:GO.
- `Motion Blur`: Disabled
  - Same as VSync, you absolutely don't want that in CS:GO.
- `HUD Edge Positions`: All the way up to the edge of the screen
  - Down to personal preference but the smart choice would be to bring the edge of the HUD closer to the center of the screen in order for your eyes to do less travel when looking at it.

## Contributing

Contributions are welcome if you see any area of improvement possible to the scripts or if there's new CS:GO config variables to tweak!

## License

This project is released under the [Unlicense](https://unlicense.org). A copy of the license is available in this project folder.