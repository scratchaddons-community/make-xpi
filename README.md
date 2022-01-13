# make-xpi

Automatically create an unsigned XPI file for ScratchAddons which you can import into Firefox. Note that because the extension is unsigned, you cannot use the extension in the official releases of Firefox or Firefox Beta. Instead, use Firefox Developer Edition or Nightly or use an unbranded build or 3rd party version of Firefox. You will also need to set `xpinstall.signatures.required` to false in about:config.

## Use

You will need git installed. On Windows, [7-Zip](https://www.7-zip.org/download.html) is also required.

Run 
```sh
git clone https://github.com/scratchaddons-community/make-xpi.git
```
or download the repository as a ZIP.

On Linux or MacOS:
```sh
sh makeXpi.sh
```

On Windows, run the `makeXpiWindows.bat` file from File Explorer. If your 7z.exe file is located anywhere other than `C:\Program Files\7-Zip\7z.exe`, then run the from Command Prompt with the `/P` flag:
```cmd
makeXpiWindows.bat /P
```
Then input the path to your 7z.exe.