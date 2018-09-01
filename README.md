# My Counter Strike: Global Offensive config

## Installation on Linux

Navigate to where you want to store the config files, for example `$HOME/Documents`, then:

```bash
git clone https://github.com/PlqnK/csgo-cfg.git
cd csgo-cfg
```

Edit the `link-files-linux.sh` script to verify that the CS:GO install path is identical to yours and correct it if that's not the case, then:

```bash
chmod u+x link-files-linux.sh
./link-files-linux.sh
```

Verify that the symlinks were correctly created by running:

```bash
ls -l /path/to/your/csgo/cfg
```

## Installation on Windows

Download an archive of this repository by clicking the "Clone or download" green button on the right and then clicking "Download ZIP".

Copy the downloaded `csgo-cfg-master.zip` file to somewhere where you want to store the config files, for example `%USERPROFILE%\Documents` and unzip it.

Edit the `link-files-windows.cmd` script to verify that the CS:GO install path is identical to yours and correct it if that's not the case.

Right click on the `link-files-windows.cmd` file and click on "Execute as Administrator".

Verify that the symlinks were correctly created by navigating to your csgo `cfg` folder and checking if the `.cfg` files of this project are present.

## Usage

You don't need to add `+exec autoexec.cfg` to your CS:GO launch options.

From now on you should'nt under any circumstances delete the folder that contains the git repository that's in your `Documents` folder because the `.cfg` files present in your CS:GO `cfg` directory are just symbolic links to the files in your `Documents` folder.

If you want to edit any of the config files, edit the files present in your `Documents` directory.

## Contributing

Contributions are welcome if you see any area of improvement possible to the scripts or if there's new CS:GO config variables to tweak!

## License

This project is released under the [Unlicense](https://unlicense.org). A copy of the license is available in this project folder.