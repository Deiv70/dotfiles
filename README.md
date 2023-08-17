# dotfiles `~/.*`

Here, I'm going to upload some Config files that take me some effort ⏳ , so I would like to **Keep and Share** ✨ them !!

## Table of Contents
- [dotfiles `~/.*`](#dotfiles-)
  - [Table of Contents](#table-of-contents)
  - [Steps](#steps)

## Steps

1. Clone this repo to somewhere on your home directory  
    ```bash
    git clone https://github.com/Deiv70/dotfiles
    cd dotfiles
    ```

2. Clone the submodules  
    ```bash
    git submodule update --init --recursive
    ```

3. Copy the files to your home directory  
    ```bash
    cp -r ./*.* ~/
    rm -rf ~/.git* ~/README.md ~/LICENSE
    ```

4. If you like, you can install the packages that I use  
    ```bash
    cd ~
    ./pamac-install-packages.sh
    rm pamac-install-packages.sh
    ```
    > **Note**: This script is for _**Manjaro Linux**_, you should modify it to work your distro's package manager
