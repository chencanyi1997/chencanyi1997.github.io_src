---
title: 5 easy steps to start editing jupyter notebooks over SSH
author: Chen Canyi
date: '2020-01-03'
slug: 5-easy-steps-to-start-editing-jupyter-notebooks-over-ssh
categories: ["jupyter"]
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2020-01-03T16:10:03+08:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

## Host
* python
```python
>> from notebook.auth import passwd
>> passwd()
Enter password:
Verify password:
'sha1:673a8456a8e8:4377bd9ee8dc33d4cb5a2011f7a89643de15c11c'
```
* .jupyter-config.py
```python
# vi .jupyter-config.py
c.NotebookApp.ip = 'localhost'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8081
c.NotebookApp.password =u'sha1:c0792e86dce2:e6fe5ee529a238b0dc33f4f1960499d6fbd02927'     
```

* start jupyter notebook
```bash
nohup jupyter notebook --config=.jupyter-config.py >> nohup.out &!
```
## Client
```bash
ssh -N -f -L 127.0.0.1:8888:127.0.0.1:8081 chencanyi2018@10.224.255.112 -p 5102 # Node A
```
<!---
* `-N`：不执行任何命令
* `-f`：后台运行
* `-L`：转发端口
* `-vvv`：调试
--->

## Jump Clients
```bash
sudo apt-get install autossh
autossh -N -f -L 127.0.0.1:8888:127.0.0.1:8081 chencanyi2018@10.0.0.2 -p 22 # Node B
ssh -N -f -L 127.0.0.1:8887:127.0.0.1:8888 chencanyi2018@116.196.81.58 -p 22 # Node C
cat .zshrc
# alias jupyter_gpu="ssh -N -f -L 127.0.0.1:8887:127.0.0.1:8888 chencanyi2018@116.196.81.58 -p 22"
```
## kill nohup
```bash
ps -eaf | grep "jupyter" | grep -v grep | awk '{ print $2 }' | xargs kill -9
```

## References
* [https://blog.csdn.net/handavy/article/details/83503323](https://blog.csdn.net/handavy/article/details/83503323)
* [https://www.looklinux.com/grep-find-process-id-and-kill-it-in-linuxunix/](https://www.looklinux.com/grep-find-process-id-and-kill-it-in-linuxunix/)
* [https://www.unix.com/shell-programming-and-scripting/267304-kill-nohup-process-changing-pid.html](https://www.unix.com/shell-programming-and-scripting/267304-kill-nohup-process-changing-pid.html)
