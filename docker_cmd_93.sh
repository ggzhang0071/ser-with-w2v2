img="nvcr.io/nvidia/pytorch:20.08-py3" 

docker run --gpus all  --privileged=true   --workdir /git --name "ser_w2v2"  -e DISPLAY --ipc=host -d --rm  -p 6607:4452  \
-v /raid/git/ser-with-w2v2:/git/ser-with-w2v2 \
-v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it ser_w2v2 /bin/bash
cd ser-with-w2v2

docker  images | grep "pytorch"  |grep "20."


#docker stop ser_w2v2