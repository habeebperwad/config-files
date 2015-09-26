#!/bin/bash
cd  ~
echo "Changed directory to:" ~

# Create directory if needed.
MY_DIR='HABEEBatPERWADdotIN'
if [ ! -d "$MY_DIR" ]; then
  mkdir $MY_DIR
  echo "Directory '$MY_DIR' creted."
fi

cd $MY_DIR
echo "Changed directory to:" $MY_DIR

# downalod curl if needed.
if ! type curl &> /dev/null; then
echo 'downloaing curl.'
sudo apt-get install curl
echo 'no curl'
fi

# Download files.
FILES_URL_PATH='https://raw.githubusercontent.com/habeebperwad/config-files/master/'
curl -O "$FILES_URL_PATH/.bashrc_habeebperwad"
curl -O "$FILES_URL_PATH/.vimrc_habeebperwad"
curl -O "$FILES_URL_PATH/.giconfig_habeebperwad"
