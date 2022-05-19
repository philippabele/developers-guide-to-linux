### The `find` command

To search for files by file attributes the `find` command is used.
Find requires only the path to search in as an argument. If you give your home-path `~` to it. It lists all files and folders located in your home directory, as we didn't specify what to search for.
~~~~
find ~
~~~~

To specify what to search for flags are used: 

~~~~
find ~ -name "Screenshot*"
~~~~
The above command searches for all files and directories beginning with the word `Screenshot` the asterisk is used as a wildcard for a unknown number of unknown chars.
Find offers a number of such search flags which help to narrow the search down further.

~~~~
find ~ -name "Screenshot*" -type f 
~~~~
This command limits the search to results of the type **f**ile. The usable file types are listed below:
                          
- **b** - Block special device file       
- **c** - Character special device file   
- **d** - Directory                       
- **f** - Regular File                    
- **l** - Symbolic Link                   

A full list of the flags available can be seen in **The Linux Command Line** in the subchapter *17 - find - Tests*  (Table 17-3)

Exercise:
*List all files under your home directory (~).*






