<div align="center">
    <h1>~ youtube-upload ~</h1>
    <strong>An node.js script uploading YouTube videos with the Google YouTube API</strong><br><br>
</div>

---

## Setup

> Of course, you need the full installation of Node.js and NPM on your system.<br>(For best results, Node.js >= 8.4 and NPM >= 5.5.1)

1. Download this repository as zip or clone it with  
`$ git clone https://github.com/zekroTJA/youtube-upload.git`

2. You need to install following packages via NPM:  
`$ npm i googleapis google-auth-library --save`

3. Now, place the *'client_secrets.json'* (Take a look below how to get it) in the same directory as the scripts

4. Now, insert your location, where the videos will be placed later to upload, if you don't want to place them in the root directory of the scipts.

5. Now, just place some videos in the configured direcotry and start the script with  
`$ node main.js`

> First time you started sthe script, you need to open the shown path to chose the YouTUbe account you want to upload to, copy the key and enter it into the console.<br><br>Then, there will be generated a file named *'google-apis-nodejs-quickstart.json'* where those settings are saved for the next startup. IF you want to clear those settings, just delete the file or start the script as following:  
`$ node main.js clear`

6. Now, all videos in the configured folder will be uploaded to the youtube channel.

---

## Get Google Credentials File

1. Go to the [Google Api Console](https://console.developers.google.com/)
2. Create a new project in the top left corner nexto the logo
3. Search for *'YouTube Data API v3'* and chose it
4. Now, click on *'Enable API'*
5. Go to *'Credential'* -> *'Create'* -> *'OAuth client ID'*
6. Chose *'Other'*, enter a name and klick *'Create'*
7. Then download the json file with the download button on the right, rename it to *`client_secrets.json`*