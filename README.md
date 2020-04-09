# My Counter Strike: Global Offensive config

This CS:GO config comes from years of accumulating information from various sources and maintaining it up to date with every game update introducing new features and deprecating others.

## Attribution and useful resources

This project includes the wonderful Orel's Text Mod available here: <https://gamebanana.com/gamefiles/3711>, that will greatly simplify radio messages displayed in the chat.

Some part of the README are based on a great reddit post by /u/birkir: <https://www.reddit.com/r/GlobalOffensive/comments/8ax858/updated_csgo_tips_configs_and_more/>.

You can find a list of all the available CS:GO Cvars here: <https://developer.valvesoftware.com/wiki/List_of_CS:GO_Cvars>, it contains a description and the possible value of every one of them.

And you can follow this awesome repository: <https://github.com/funeralchris/csgo-list-of-cvars>, which keeps a changelog on CS:GO Cvars since september 2018. It's really useful to know which cvar was added/modified/removed with updates.

## Table of content

- [Installation](#installation)
  - [Linux](#linux)
  - [Windows](#windows)
- [Usage](#usage)
  - [General](#general)
  - [In-game](#in-game)
- [Configuration](#configuration)
  - [Config files](#config-files)
  - [Launch Options](#launch-options)
  - [Video settings](#video-settings)
  - [Mouse settings](#mouse-settings)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Linux

Navigate to where you want to store the config files, for example `$HOME/Documents`, then:

```bash
git clone https://github.com/PlqnK/csgo-cfg.git
cd csgo-cfg
```

Edit the `copy-cfg-files-linux.sh` script to verify that the `CSGO_INSTALL_PATH` variable is identical to your CS:GO install path and change it if that's not the case, then:

```bash
chmod u+x copy-cfg-files-linux.sh
./copy-cfg-files-linux.sh
```

Verify that the files were correctly copied by running:

```bash
ls -l /path/to/your/csgo/cfg
```

### Windows

Download an archive of this repository by clicking the "Clone or download" green button on the top*ish* right of this page and then clicking on "Download ZIP".

Copy the downloaded `csgo-cfg-master.zip` file to the folder where you want to store the config files, for example `%USERPROFILE%\Documents` and unzip it.

Edit the `copy-cfg-files-windows.cmd` script to verify that the `csgo_install_path` variable is identical to your CS:GO install path and change it if that's not the case.

Right click on the `copy-cfg-files-windows.cmd` file and click on "Execute as Administrator".

Verify that the files were correctly copied by navigating to your csgo `cfg` folder and checking if the `.cfg` files of this project are present.

## Usage

### General

You don't need to add `+exec autoexec.cfg` to your CS:GO launch options but you need to add `-language textmodorel` to enable the Orel's Text Mod.

From now on you shouldn't modify CS:GO settings[1] by using the in-game menu. If you do so your modifications will be overwritten by the settings stored in the `.cfg` files the next time you open CS:GO. If you want to modify a particular setting you will need to directly edit the corresponding `.cfg` file.

[1] The only exception is video settings that are not modified by the `autoexec.cfg` file.

For optimal use, you shouldn't delete the folder that contains the git repository that's in your `Documents` folder in order to edit the files it contains later and just re-execute the `copy-cfg-files` script again.

### In-game

If you want to enable *Practice mode* you just need the execute the `practice.cfg` file by opening the console (by pressing `=` or whatever you have set `toggleconsole` to in your binds), typing `exec practice` and pressing `ENTER`. Same thing if you want to enable *Overwatch mode* or *Screenshot mode*, use `exec overwatch` and `exec screenshot` respectively.

*Practice mode* enables multiple useful options if you want to practice your spray control or grenade throws in an offline server.

*Overwatch mode* creates multiple useful keybinds for reviewing Overwatch cases.

*Screenshot mode* is a config made to take great screenshots of your skins with a blurred background. In order to use it you need to:

- Execute it.
- As the message says in the console, enable motion blur in the video settings.
- In-game, wiggle your mouse as much as possible making your screen as blurry as possible
- Press `K`, it will freeze all post-processing effect (like motion blur) in their current state so you will have a permanent blurred background.
- Press `M` to slow the in-game speed.
- Press your weapon inspect key and you will be able to take screenshots of it under every angle.

## Configuration

### Config files

The config itself is pretty personal so you will have to edit the files in order to tailor it to your preferences.

If your internet bandwidth is less than 6 Mbps (megabits per second) you should change the rate in the `autoexec.cfg` file to the appropriate value:

| Bandwith  | rate             |
|-----------|------------------|
| 0.5 Mbps  | 65536            |
| 1 Mbps    | 131072           |
| 1.5 Mbps  | 196608 (default) |
| 2 Mbps    | 262144           |
| 4 Mbps    | 524288           |
| 6+ Mbps   | 786432           |

### Launch Options

`-novid -nojoy -language textmodorel`

- `novid` to skip the video intro.
- `nojoy` is required for me since the Panorama update on Linux because I have an Xbox One controller plugged-in at all time and CS:GO crash at launch in this situation. See this [github issue](https://github.com/ValveSoftware/csgo-osx-linux/issues/1801) to learn more.
- `language textmodorel` to enable the Orel's Text Mod.

You shouldn't use any other options like `threads` ([here's why](https://www.reddit.com/r/GlobalOffensive/comments/5y8r7v/in_depth_discussion_of_the_threads_launch_option/)), `nod3d9ex` ([here's why](https://www.reddit.com/r/GlobalOffensive/comments/6ndpi4/are_nod3d9ex_mat_queue_mode_2_still_good_launch/)), `high` ([here's why](https://www.reddit.com/r/GlobalOffensive/comments/5pxtqi/is_it_worth_using_threads_4_and_high_in_launch/dcuzf2d/)), `mat_queue_mode` ([here's why](https://www.reddit.com/r/GlobalOffensive/comments/5zkpwn/in_depth_discussion_of_mat_queue_mode_and_mat/)) as well as `refresh` and/or `hz` because CS:GO will run at your default refresh rate regardless.

`tickrate 128` will make your offline matches run at 128 ticks which can be useful if you need to practice nades throw that are specific to that tickrate.

### Video settings

- [VibranceGUI](https://vibrancegui.com/), in-game vibrance level: **75**
  - VibranceGUI will automatically enable AMD Saturation or Nvidia Digital Vibrance when a specific configured game is full-screened. It makes the in-game colors "pop" more while the desktop can stay at it's standard value. I chose 75 because it's a good compromise between the dull CS:GO default and the over the top maximal saturation.
- `Definition`: **1920x1080**
  - It's down to personal preference and computer specs. If you have a low spec computer you will need to lower it. Some people prefer 4:3 or 5:4 with black bars, others 4:3 or 5:4 stretched but there's no factual advantages, in fact there's disadvantages (lower FOV for example) to using this definitions. See [3kliksphilip video](https://youtu.be/Qs6xbnKBnbY?t=1m54s) on the matter to learn more. I personaly prefer to use my monitor native definition which is 1080p.
- `Display Mode`: **Fullscreen**
  - For the lowest input lag, chose `Fullscreen` because it give the game direct access to the graphics output without the OS interfering and adding display lag. `Windowed` and `Fullscreen windowed` will make alt-tabbing faster but because the video frames has to pass through the OS before being displayed it will add some display lag.

Here's a great (pretty old but still relevant) 3kliksphilip video on all the graphics options below if you want to learn more: <https://www.youtube.com/watch?v=ns9srRoDop8>.

Here's another (more recent and also relevant) 3kliksphilip video on `Effect Detail` and `Shader Detail` effect on molotov's smoke particles: <https://www.youtube.com/watch?v=s5-aqgwBhM4>.

- `Global Shadow Quality`: **High**
  - Shadow quality affects the render distance of players shadows so you need the highest one to be able to see them in all situations. Because shadows can giveaway players position you want to be able to see them in all circumstances. On the other hand `Very low` disable a lot of the pre-baked models shadows which helps with visibility and players shadow can still be visible from really close but that's not enough for me.
- `Model/Texture Detail`: **High**
  - The resolution of the textures, lower the value if you don't care about it or have little amount of VRAM. There's pretty much no downside to using higher detailed textures in this game so go for it if you can.
- `Effect Detail`: **High**
  - As explained in 3kliksphilip's video on molotov visibility, if you want less fire smoke at a distance, set `Effect Detail` to `High` and `Shader Detail` to at least `High`. On the other hand if you want less fire smoke close-up, set one of the two to something other than the `High` or `Very High` value.
- `Shader Detail`: **Very High**
  - Affect reflection on surfaces, like your gun skin or water, rain and other parameters. If you want your gun skins to look good you need to set it to at least `High` but if you care more about gameplay you should set it to `Low` as explained in the first 3kliksphilip video.
- `Multicore Rendering`: **Enabled**
  - Allow CS:GO to use multiple CPU cores.
- `Multisampling Anti-Aliasing Mode`: **4x MSAA**
  - Which version of MSAA or CSAA to use, higher value will look better but have a higher impact on performance. Don't use in conjunction with FXAA.
- `FXAA Anti-Aliasing`: **Disabled**
  - An other type of AA, a lot less taxing in terms of performance but very bad in term of quality because it's just a post-processing effect. Don't use in conjunction with MSAA or CSAA.
- `Texture Filtering Mode`: **Bilinear**
  - Enhance the image quality of textures when viewed at an angle. Performance impact really minimal. As said in the 3kliksphilip video you will want to set it to `Bilinear` if you care more about visibility than prettyness.
- `Wait for Vertical Sync`: **Disabled**
  - VSync, you absolutely don't want that in CS:GO.
- `Motion Blur`: **Disabled**
  - Same as VSync, you absolutely don't want that in CS:GO.
- `HUD Edge Positions`: **All the way up to the edges of the screen**
  - Down to personal preference but the smart choice would be to bring the edge of the HUD closer to the center of the screen so that your eyes will have less travel to do in order to look at it.

### Mouse settings

- `DPI`: **1600**
  - I have a rather high DPI to avoid pixel skipping, see [3kliksphilip video about it](https://www.youtube.com/watch?v=8XNUp70mDlQ). I counterbalance this higher than average DPI by having an in-game sensitivity set to `0.5`.
- `Polling Rate`: **1000Hz**
  - The amount of time per second that your OS will poll your mouse. If you have a wired mouse you want to set this to it's highest value possible. If you have a wireless mouse you also need to think about battery life and maybe set it to 500Hz or 250Hz if you don't feel any difference.

## Contributing

Contributions are welcome if you see any area of improvement possible to the scripts or if there's new CS:GO config variables to tweak!

## License

The Orel's Text Mod is available under the [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) license](https://creativecommons.org/licenses/by-nc-nd/4.0/).

The rest of the project is released under the [Unlicense](https://unlicense.org). A copy of the license is available in this project folder.
