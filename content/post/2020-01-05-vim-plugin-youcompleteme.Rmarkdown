---
title: 'Vim Plugin: YouCompleteMe'
author: Chen Canyi
date: '2020-01-05'
slug: vim-plugin-youcompleteme
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2020-01-05T01:01:46+08:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

## Install
### For Users in Mainland China
```bash
sudo apt-get install build-essential cmake python-dev python3-dev
cd ~/.vim/bundle
git clone https://gitee.com/YouCompleteMe/YouCompleteMe.git YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
./install.py # for python
./install.py --clang-completer # for c, c++
```
We use `gitee` to accelerate the download speed in Mainland China. `gitee` mirrors many repos of `Github`.

### For Users in general
```bash
:~$ sudo apt-get install build-essential cmake python-dev python3-dev
:~$ cd .vim/bundle
~/.vim/bundle:~$ git clone https://github.com/ycm-core/YouCompleteMe.git YouCompleteMe
~/.vim/bundle:~$ cd YouCompleteMe
~/.vim/bundle/YouCompleteMe:~$ git submodule update --init --recursive
~/.vim/bundle/YouCompleteMe:~$ python ./install.py
```
See [https://www.shixuen.com/linux/vim_plugins.html](https://www.shixuen.com/linux/vim_plugins.html) for more information.

## Usage
<!---
todo
--->

## Troubleshooting
```bash
cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/clang_archives
mv libclang-8.0.0-x86_64-unknown-linux-gnu.tar.bz2  mlibclang-8.0.0-x86_64-unknown-linux-gnu.tar.bz2
wget  https://dl.bintray.com/micbou/libclang/libclang-8.0.0-x86_64-unknown-linux-gnu.tar.bz2
```

See [CMake Error at ycm/CMakeLists.txt:107 (file): file DOWNLOAD HASH mismatch](https://blog.csdn.net/u014520797/article/details/88734788).

## References
* [https://www.shixuen.com/linux/vim_plugins.html](https://www.shixuen.com/linux/vim_plugins.html)
* [https://github.com/ycm-core/YouCompleteMe#linux-64-bit](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)
* [CMake Error at ycm/CMakeLists.txt:107 (file): file DOWNLOAD HASH mismatch](https://blog.csdn.net/u014520797/article/details/88734788)
* [https://www.jianshu.com/p/5aaae8f036c1](https://www.jianshu.com/p/5aaae8f036c1)
