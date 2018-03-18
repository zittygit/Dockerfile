## Build images tutorial

#### 1.  move your Makefile to root directory(Dokcerfile)
#### 2.  excute " make " command


## Makefile instructions

The makefile can include many docker-build commands to builds Docker images from your dockerfile.

```
docker build -t 172.18.232.157:5523/caffe:cpu -f caffe/caffe-v1 .

```
 ###### OPTHION instructions: 
- 172.18.232.157:5523: Docker private repositories address
- caffe:cpu : image name and tag
- caffe/caffe-v1 : dockerfile
- note:don't forget the last dot,it's mean current directory
