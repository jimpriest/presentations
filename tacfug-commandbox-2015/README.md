This is a respository for CommandBox examples given for a recent TACFUG presentation.

## About
CommandBox is a standalone, native tool for Windows, Mac, and Linux that will provide you with a Command Line Interface (CLI) for developer 
productivity, tool interaction, package management, embedded CFML server and application scaffolding. It is also open for extensibility for any 
ColdFusion (CFML) project as it is also written in ColdFusion (CFML).

Available for: Windows, Mac and Linux

### Installation
* Download: https://www.ortussolutions.com/products/commandbox
* Unzip
* Run 'box' to install
* Installation details: http://ortus.gitbooks.io/commandbox-documentation/content/setup/installation.html



### Code

* slides.pdf - PDF of original slides

#### 1-server
Navigate to this directory and run
* box server start 
* A CFML server will be created (note the IP and port in the prompt) and your browser should open and display the page.

#### 2-site
Navigate to this blank directory and runn the following
* box
* forgebox install coldbox
* coldbox create app
* start

Examine the contents of this directory. Commandbox downloaded and configured the ColdBox framework.  

#### 3-recipe
Navigate to this directory and run 
* box recipe buildsite.boxr
* Examine the code in buildsite.boxr in your favorite text editor

Examine the contents of this directory.  CommandBox once again downloaded and configured ColdBox. Also note the addition of several extra ColdBox modules are installed.

#### 4-cfml
Navigate to this directory and run
* box execute date.cfm

Note that the CFML code within will be executed without the need to run this through a web/application server.

Copy helloworld.cfc to your CommandBox installation directory.  On Linux this is ~/.CommandBox/.  Copy it to the 'commands' folder:  ~/.CommandBox/commands/helloworld.cfc
You should now be able to execute
* box helloworld

Note: all CFCs including commands are created and wired via WireBox, so dependency injection and AOP are available to them!

test.sh will only run on Linux or Mac.  Make sure test.sh is executable on your system.

* Run  ./test.sh

Note this runs in your shell but also executes the CFML code contained within!

### Links
* CommandBox (https://www.ortussolutions.com/products/commandbox)
* CommandBox Connection (https://www.ortussolutions.com/products/commandbox/commandbox-connection)
* Docs (http://ortus.gitbooks.io/commandbox-documentation/content/)


