# PlasticDegradersTree

#  Pre-requisites (Docker)

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


#  Run docker container
sudo docker run -it -p 8888:8888 -v "PATH TO FOLDER WHERE Degraders_list.xlsx IS STORED":/home/mydata plastic-degraders-tree bash

#  Run Jupyter Notebook from inside of the container
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root

#  Open URL in a browser
http://127.0.0.1:8888/?token="COPY YOUR TOKEN HERE"
