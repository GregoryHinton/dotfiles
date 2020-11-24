# dotfiles

Dotfiles from ~/ and ~/.config/ using a bare git repository.

# System

* Distro: Arch/Endeavour
* Desktop: Gnome 3
* Shell: bash
* Terminal: gnome-terminal
* Browser: firefox
* Editor: vim

# Cloning

```bash
git clone --bare https://github.com/GregoryHinton/dotfiles.git $HOME/.git-dotfiles
alias gitdot='git --git-dir=$HOME/.git-dotfiles/ --work-tree=$HOME'
gitdot config --local status.showUntrackedFiles no
gitdot checkout
```

# References

* [Ask HN: What do you use to manage dotfiles?](https://news.ycombinator.com/item?id=11071754)

* [The best way to store your dotfiles: A bare Git repository](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

* [Manage Dotfiles With a Bare Git Repository](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)

* [Why share your dotfiles](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
