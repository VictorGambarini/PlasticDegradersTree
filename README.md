# PlasticDegradersTree

##  Pre-requisites (Docker)

### Ubuntu Instructions

```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

### Another SOs

See instructions on https://docs.docker.com/install/

##  Run docker container

```
sudo docker run -it -p 8888:8888 -v <PATH_TO_FOLDER_WHERE_Degraders_list.xlsx_IS_STORED>:/home/mydata plastic-degraders-tree bash
```

##  Run Jupyter Notebook from inside of the container

```
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
```

##  Open URL in a browser

```
http://127.0.0.1:8888/?token=<COPY_YOUR_TOKEN_ HERE>
```

##  Run this block if running the notebook through NESI

```
ssh -L 8082:localhost:8082 mahuika
module load Python
module load Anaconda3
os.system("module load BLAST")
pip install --prefix=~/PyPackages jupyter
pip install --prefix=~/PyPackages ete3
pip install --prefix=~/PyPackages seaborn
export PATH=$PATH:~/PyPackages/bin
export PYTHONPATH=$PYTHONPATH:~/PyPackages/lib/python3.7/site-packages/
jupyter notebook --no-browser --port=8082
```
