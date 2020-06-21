# Inside Git repository support in `zsh` prompt

The essential file in this repository is `.zshrc`

Its purpose is to add information about actively checking branch *(and other Git repository information)* at the end of the prompt in zsh when working directory is **inside Git repository**.

## To Install

You can take `.zshrc` file as it is and place it inside your user home directory or just copy content of last two lines 18, 19 into your `~/.zshrc` *(if you have setup one already)*.

If you take `.zshrc` file from this repo, you only need to change placeholder `username` on line 8 to reflect your actual user name.

## Comments

Lines 14 and 15 are optional *(not related to Git support in zsh prompt)*. Here I’m only exporting `CLICOLOR` to provide colors in `ls` output and also setting default option for `grep` to use colored accent for the terms it has found. *(I simply find these useful and don’t know why they’re not set by default.)*

This `.zshrc` is meant especially for **macOS Catalina** using **zsh** as its default shell. It was made with maximum respect to macOS default zsh configuration and apart of adding some useful colors it doesn’t change the feel and look of normal macOS command line prompt.

Git prompt support implementation is made exactly according Git's instructions for zsh. It is based on `__git_ps1` function defined in `git-prompt.sh`

`git-prompt.sh` here I use the one provided by Apple which you should have available if you have Xcode installed. If you don’t use Xcode and you don’t have git-`prompt.sh` on your system, then take it from https://github.com/git/git/tree/master/contrib/completion and on line 18 `source` that one to have `__git_ps1` function available for `precmd` command coming on the next line.

That’s it, now you have essential info from currently checking Git repository available right in your command prompt, which gives useful awareness of what are you actually doing. So enjoy, hopefully this will help you a lil bit.

And of course, useful suggestions and comments are welcomed.
