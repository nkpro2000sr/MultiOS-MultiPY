# MultiOS-MultiPY
For
* nkpro/linux-pyenv
* nkpro/windows-pyenv
* nkpro/mac-pyenv  

Containers in Docker-Hub.  

with multiple python versions pre installed  
```MultiPy
2.6.9
2.7.17
3.4.10
3.5.9
3.6.10
3.7.7
3.8.2
pypy-5.7.1
pypy2.7-7.3.0
pypy3-dev
pypy3.5-7.0.0
pypy3.6-7.3.0
```
**tox** and **pytest** preinstalled.

------------------------------------------------------------------------------------------------------

## Usage  

#### To run container  
`sudo docker run nkpro/<os>-pyenv`  

#### To run commands  
`sudo docker run -v $PWD/ProjectDir:/hostcwd nkpro/<os>-pyenv tox`  
-or-  
`sudo docker run -v $PWD/ProjectDir:/hostcwd nkpro/<os>-pyenv bash -c 'tox && echo done'`  

#### For Interactive Terminal  
`sudo docker run --it nkpro/<os>-pyenv bash`  
