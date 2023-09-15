Vim - setup and install
=======================
This is my personal vim setup with a list of plugins that
are present as well as their respecitive urls.

Clone this repo and all submodules with:
git clone --recursive git@github.com:shanep/os-config

Fonts
=====
The Linux fonts rely on the Inconsolata font which can be downloaded from the link below
If you are running Fedora you can install the Inconsolata fonts with yum.

* http://www.levien.com/type/myfonts/inconsolata.html
* su -c 'yum install levien-inconsolata-fonts.noarch'

Plugins
=======
Below is a brief description of each plugin and how they are configured in my vimrc.
Unless otherwise specified the default key bindings for each plugin are used.
Check the link to the plugin repository for more information on plugin features and
any key bindings that the plugin may use.

Adding a new plugin with the following format from the root directory.
```
git submodule add https://github.com/vim-airline/vim-airline.git vim/pack/shanep/start/vim-airline
git add .gitmodules vim/pack/shapeshed/start/vim-airline
git commit -m "Added in module"

```

vim-airline
---------
Gives a nice status line and integrates with tagbar to
show what function you are currently in.
* https://github.com/bling/vim-airline

vim-fugitive
------------
Integrates with vim-airline to give info on the git current working
branch and other lots of cool features
* https://github.com/tpope/vim-fugitive

tcomment
--------
TComment works like a toggle, i.e., it will comment out text that contains
uncommented lines, and it will remove comment markup for already commented text.
* https://github.com/tomtom/tcomment_vim

tagbar
------
The tagbar plugin allows you to view all of the symbols in a given file.
This plugin has been mapped to F4
* https://github.com/majutsushi/tagbar

vim-colors-solarized
--------------------
Set the vim solorized colors
* https://github.com/altercation/vim-colors-solarized







