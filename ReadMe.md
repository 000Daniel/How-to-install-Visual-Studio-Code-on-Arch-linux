## How to install Visual Studio Code on Arch-linux
![vscode_logo](https://user-images.githubusercontent.com/90350173/148343289-5de1dfc9-5160-4484-b301-72a8634aff20.png)
### Note before installing
    This guide uses: sudo, git, pacman, and the Arch/AUR repositories.<br />
    The mentioned later script was tested only on EndeavourOS(Arch-based)<br />
    I do not take any responsibility for any kind of damage this guide or script might cause,<br />
    use them at your own risk.<br />
<br />
<br />
### Auto-Install
 download the `auto-Installer-Visual-Studio-Code.sh` file. <br />
    🞄 Note: if you have multiple users on your system edit the script and <br />
    🞄      in `userName=*` replace the `*` with your preferred user's name. <br />
    now enter the next commands into the terminal: <br />
    `sudo chmod +x auto-Installer-Visual-Studio-Code.sh` <br />
    `sudo pacman -Syu`<br />
    `./auto-Installer-Visual-Studio-Code.sh`<br />
    🞄 the script will ask you multiple times to confirm the installations.<br />
    🞄 after the script finishes follow the `Manual-Install (set-up C# and Code-Runner)`
<br />
### Manual-Install
    enter the next command into the terminal: `sudo pacman -Syu`<br />
    now enter the next commands: <br />
    `sudo pacman -S dotnet-sdk` <br />
    to verify that the installation of the framework worked, type: <br />
    `dotnet --version` <br />
    now we'll install the software itself: <br />
    `cd Downloads/` <br />
    `git clone https://AUR.archlinux.org/visual-studio-code-bin.git` <br />
    `cd visual-studio-code-bin/` <br />
    `makepkg` <br />
    `sudo pacman -U visual-studio-code-bin-*` <br />
    `cd ..` <br />
    `rm -rf visual-studio-code-bin/` <br />
    🞄 now you can start Visual Studio Code. <br />
<br />
### Manual-Install (set-up C# and Code-Runner)
    If you need to setup C#(CSharp) and Code-Runner on VSCode here's how: <br />
    in VSCode go to Extensions <br />
<br />
![image](https://user-images.githubusercontent.com/90350173/148344532-c8237ec5-e1e6-4bbc-a2da-fa5695468612.png) <br />
<br />
    and install the `C#` and `code runner` extensions <br />
    now go to `File` ➔ `Preferences` ➔ `Settings` <br />
    search `run in terminal` and enable `Code-runner: Run In Terminal` <br />
<br />
![image](https://user-images.githubusercontent.com/90350173/148344770-9a31a637-9d65-44b9-b8ec-bea6071e3a9d.png) <br />
<br />
    🞄 if you followed the Auto-Install section you can skip this step with Code-Runner. <br />
    click on the `open settings` icon top right <br />
<br />
![image](https://user-images.githubusercontent.com/90350173/148345018-a1d2a98b-4e62-4978-85b4-8727254b8b75.png) <br />
<br />
    write `code-runner.executorMap` and press enter. <br />
    the script should automatically update and look like this: <br />
<br />
![image](https://user-images.githubusercontent.com/90350173/148345184-d9b540f8-4860-4efd-aeef-6774195e42e9.png) <br />
<br />
    scroll down to `csharp` and instead of `scripts` write: <br />
    `cd $dir && sudo dotnet run $fileName` <br />
<br />
![image](https://user-images.githubusercontent.com/90350173/148345367-2cebc037-c32f-41d2-8d3d-fca62c29e104.png) <br />
    save the file. <br />
<br />
## Set-up a C# project
    open in `File` ➔ `Open Folder...` your chosen work directory <br />
    then go to `Terminal` ➔ `New Terminal` <br />
    🞄 to create a C# console application run the next command: <br />
    `sudo dotnet new console` <br />
    🞄 then to be able to save your project, run: <br />
    `sudo chmod +x Program.cs` <br />
<br />
    🞄 hopefully this guide covered everything that you needed, and I hope that everything worked! <br />
    🞄 now you should be able to run your C# projects with the 'Code-Runner' extension and save properly! <br />
    🞄 happy coding!
<br />
<br />
<br />
<br />
<br />
```diff
- created by https://github.com/000Daniel
```
Publish/Release dates: 06.01.2022
