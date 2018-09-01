# My Counter Strike: Global Offensive config

List of all the available CS:GO Cvars: <https://developer.valvesoftware.com/wiki/List_of_CS:GO_Cvars>

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

You don't need to add `+exec autoexec.cfg` to your CS:GO launch options.

For optimal use, you should'nt delete the folder that contains the git repository that's in your `Documents` folder so that you can later edit the files it contains and just re-execute the `copy-cfg-files` script again.

## Contributing

Contributions are welcome if you see any area of improvement possible to the scripts or if there's new CS:GO config variables to tweak!

## License

This project is released under the [Unlicense](https://unlicense.org). A copy of the license is available in this project folder.