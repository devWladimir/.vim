source vimrc.vim                                            " Include vimrc file for gVim.
set macligatures                                            " Enable ligatures for gVim.

if has("gui_macvim")
    macmenu &File.Print key=<nop>
endif
