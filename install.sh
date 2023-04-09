#curl -sSL https://raw.githubusercontent.com/dyllisLev/myfile/main/install.sh | sh
pip install flaskfarm
find / -xdev -type d -name "flaskfarm" -exec sh -c 'pip install -r "$0/files/requirements_normal.txt"' {} \;

mkdir -p ~/ff && cd ~/ff && curl -O https://github.com/dyllisLev/myfile/blob/main/run.sh && chmod +x run.sh

mkdir -p ~/ff/data
 
echo "path_data: ~/ff/data" > ~/ff/data/config.yaml
echo "path_dev: /workspaces" >> ~/ff/data/config.yaml
echo "debug: true" >> ~/ff/data/config.yaml
