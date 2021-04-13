# FDM (freedownloadmanager) AppImage for linux distros.

Free Download Manager is a download manager for Windows, macOS, Linux and Android. For linux, the company only offers a debian binary.

FDM was initially proprietary software, but was free and open-source software between versions 2.5 and 3.9.7. Starting with version 3.0.852 (15 April 2010), the source code was made available in the project's Subversion repository instead of being included with the binary package. This continued until versions 3.9.7 .The source code for version 5.0 and newer is not available and the GNU General Public License agreement has been removed from the app. Due to this, I cannot provide you with releases of FDM AppImages. Instead you could easily build AppImages (personal use) with the above recipe file and instructions on linux distros.

### Tested on
 - Ubuntu 16.04 / 18.04 / 20.04 / 20.10 
 - Debian 9 / 10 / 11 / sid (unstable)
 - Fedora 33-1.2
 - Arch Linux (Manjaro - 21.0.1)

### Dependencies

*Most of these dependencies are already satisfied if you are running a debian or ubuntu based distribution. For instance, Manjaro only needed strings from (binutils) for compiling the AppImage.*

 - git
 - wget
 - dpkg
 - dpkg-deb
 - convert (imagemagick)
 - wget
 - sed
 - cut
 - file
 - desktop-file-validate
 - strings (binutils)

### Build Instructions
```
 git clone https://github.com/gauthamp10/freedownloadmanager-linux-appimage && cd freedownloadmanager-linux-appimage
 
 wget -c https://github.com/$(wget -q https://github.com/AppImage/pkg2appimage/releases -O - | grep "pkg2appimage-.*-x86_64.AppImage" | head -n 1 | cut -d '"' -f 2)
 
 chmod +x ./pkg2appimage-*.AppImage
 
 ./pkg2appimage-*.AppImage recipes/freedownloadmanager.yml
 
```
### Screenshot

![screenshot](screenie.png)

### __Author__

 **Gautham Prakash**
 
  Other projects: [github.com/gauthamp10](https://github.com/gauthamp10)

  Website: [gauthamp10.github.io](https://gauthamp10.github.io)


### __License__  

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
