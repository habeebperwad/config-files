<?php

/**
 *  Get Configuration file from github.
 * 
 *  1. Save this file in your home directory.
 *  2. See which file you want to copy in
 *     https://github.com/habeebperwad/config-files.
       Consider you want to copy .vimrc.
 *  2. Execute "php ~/get.config-files.habeebperwad.github.php .vimrc"
 *  3. The file will be loaded to the path specfied in the file.
    @todo Design this file properly!
 */
function getFilepath($fileData) {

	$ret = preg_replace('/.*File:\s*(.+?)\s.*/si', '\1', $fileData);

	return preg_replace('/~/', `echo -n ~`, $ret);
}


function getFileData($fileName) {

    $GITHUBPATH = 'http://raw.github.com/habeebperwad/config-files/master/';
    $targetFileFullPath = $GITHUBPATH . $fileName;

    $data  = file_get_contents($targetFileFullPath);

    if(!$data) {

	    die('Retriving file from github failed.');
    }

    return $data;
}


//
if(empty($argv[1])) {
    die("Specify which file you want to be copied.\n");
}


$fileName = $argv[1];

echo "Downloading th file $fileName.\n";

$data = getFileData($fileName);
$destFileName = getFilepath($data);

file_put_contents($fileName, $data);
echo "File saved.\n";
