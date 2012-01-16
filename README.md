Installation

    git clone git://github.com/rogercampos/dotfiles.git

All vim plugins are installed via submodules and using pathogen to manage
them.

    cd dotfiles
    git submodule init
    git submodule update

Run a install task to setup the thing, take a look at Rakefile file for more
info:

    rake install

VIM
===

Adding Plugin Bundles
---------------------

Plugins that are published on github can be installed as submodules. For
example, to install the [Ctrlp.vim plugin](http://kien.github.com/ctrlp.vim), follow these steps:

    cd ~/dotfiles
    git submodule add https://github.com/kien/ctrlp.vim.git vim/vim.symlink/bundle/ctrlp.vim


This will update the `.gitmodules` file by appending something like:

    [submodule "vim/vim.symlink/bundle/ctrlp.vim"]
        path = vim/vim.symlink/bundle/ctrlp.vim
        url = https://github.com/kien/ctrlp.vim.git

You'll also notice that Git has automatically added the new submodule to be
commited:

    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    # modified:   .gitmodules
    # new file:   vim/vim.symlink/bundle/ctrlp.vim

You can simply do the commit now:

    git commit -m "Adding ctrlp plugin"


Removing a bundle
-----------------

Simply follow this [Stackoverflow answer](http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule).
I paste the steps here:

1. Delete the relevant line from the .gitmodules file.
2. Delete the relevant section from .git/config.
3. Run `git rm --cached path_to_submodule` (no trailing slash).
4. Commit and delete the now untracked submodule files. You'll only need to
   commit the change to .gitmodules file, when you do so git automatically
   adds the deleted submodule to the stage stuff to be commited.



RUBY
====

My preferences for IRB customisations are stored in `dotfiles/irbrc`. To get
the most from these, you should install the [interactive_editor][i_editor] and
[awesome_print][ap] gems, by running:

    gem install interactive_editor awesome_print



[jsbun]: http://github.com/pangloss/vim-javascript.git
[ap]: http://github.com/michaeldv/awesome_print
[i_editor]: http://github.com/jberkel/interactive_editor
