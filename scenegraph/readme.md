## Getting dependencies

### Max:

Install [Max 7](https://www.cycling74.com) 

Download the **devel** branch of [the Worldmaking package](https://github.com/worldmaking/Max_Worldmaking_Package/tree/devel) into your Documents/Max 7/Packages folder.

On OSX, this can be done in a terminal as follows:

```
cd ~/Documents/Max\ 7/Packages/
git clone git@github.com:worldmaking/Max_Worldmaking_Package.git
cd Max_Worldmaking_Package/
git checkout devel
```

Download the **master** branch of [the VR package](https://github.com/worldmaking/vr) into your Documents/Max 7/Packages folder.

On OSX, this can be done in a terminal as follows:

```
cd ~/Documents/Max\ 7/Packages/
git clone git@github.com:worldmaking/vr.git
```

### Node.js

Install [Node.js](https://nodejs.org/)

The node script can install all dependencies by running

```cd server && npm install```

From a node.js console (Windows) or regular console (OSX) in this folder. 

## Starting up the server

Open a node.js console in the ```server``` folder (On OSX, just cd to to the folder in a regular console) and type

```npm start```

## Starting up the client:

If you have an HMD, launch the vr-scenegraph.maxpat, otherwise, launch the desktop-scenegraph.maxpat


-----


