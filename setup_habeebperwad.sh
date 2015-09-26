#!/bin/sh
cd  ~
echo "Changed directory to:" ~

# Create directory if needed.
MY_DIR='HABEEBatPERWADdotIN'
if [ ! -d "$MY_DIR" ]; then
    mkdir $MY_DIR
    echo "Directory '$MY_DIR' created."
fi

cd $MY_DIR
echo "Changed directory to:" $MY_DIR

# downalod curl if needed.
if ! type curl >/dev/null 2>&1; then
    echo 'downloaing curl.'
    sudo apt-get -y install curl
fi

# downalod vim if needed.
if ! type vim >/dev/null 2>&1; then
    echo 'downloaing vim'
    sudo apt-get -y install vim
fi

# Download files.
echo "Downloading files..."
FILES_URL_PATH='https://raw.githubusercontent.com/habeebperwad/config-files/master/'
curl -sO "$FILES_URL_PATH/.bashrc_habeebperwad"
curl -sO "$FILES_URL_PATH/.vimrc_habeebperwad"
curl -sO "$FILES_URL_PATH/.giconfig_habeebperwad"
