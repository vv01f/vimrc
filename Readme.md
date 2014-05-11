# vimrc

Just a fork from the great dotfiles repository by Felix Geisendörfer (https://github.com/felixge/dotfiles) with some changings

### Howto Install

##### 1. get vimrc-package (via [eri451](https://github.com/eri451/)) in $place
```
cd $place
git clone https://github.com/vv01f/vimrc.git
```
##### 2. create symlinks for each users to be subject to this config
```
cd ~
ln -s $place/.vim ~/.vim
ln -s $place/.vimrc ~/.vimrc
```
##### 3. get [Vundle](https://github.com/gmarik/Vundle.vim) (via [gmarik](https://github.com/gmarik/)) to ~/.vim/bundle/
```
cd ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git
```
##### 4. (optionally) en-/disable "MyBundles"

option is to be found around line 23 in ~/.vimrc

##### 5. install Bundles
```
vim +BundleInstall
```
##### 6. start vim the 1st time with the new config
```
vim
```
