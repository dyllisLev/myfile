#curl -sSL https://raw.githubusercontent.com/dyllisLev/myfile/main/install.sh | sh
pip install flaskfarm
find / -xdev -type d -name "flaskfarm" -exec sh -c 'pip install -r "$0/files/requirements_normal.txt"' {} \;

mkdir -p /home/codespace/ff && cd /home/codespace/ff && curl -O https://raw.githubusercontent.com/dyllisLev/myfile/main/run.sh && chmod +x run.sh

mkdir -p /home/codespace/ff/data
 
echo "path_data: /home/codespace/ff/data" > /home/codespace/ff/data/config.yaml
echo "path_dev: /workspaces" >> /home/codespace/ff/data/config.yaml
echo "debug: true" >> /home/codespace/ff/data/config.yaml
