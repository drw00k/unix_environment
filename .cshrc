####################################################################                                                                                                           
#                                                                                                                                                                              
#  Author:  Ryan H. Sowers (rswook@gmail.com)                                                                                                                      
#  File: .cshrc                                                                                                                                                                
#                                                                                                                                                                              
#####################################################################                                                                                                          

set nobeep
set autolist
set autocorrect
set correct=all

umask 007
set autologout
set symlinks=chase
set listjobs
set fignore=(.o)
set printexitvalue

# Set prompt                                                                                                                                                                   
if ($?tcsh) then
  set prompt='[%n@%m %c02]$ '
else
  set prompt=\[`id -un`@`hostname`\]\$\ 
endif


# Type "ls" and hit F1. Will show a help line.  Once you                                                                                                                       
# read the help, press "q" to quit the helpcommand                                                                                                                             
alias helpcommand man

alias clean   'rm -rf *~ *.log *.lst .*~'
alias xterm   "/opt/X11/bin/xterm  -sb -bg black -fg green -n cygwin -ls"
alias mysql   "/usr/local/Cellar/mysql/5.6.26/bin/mysql -u rsowers -p -h 10.0.0.35"

alias hothssh "/usr/bin/ssh -l rsowers 10.0.0.35 -Y"

alias hstart "/usr/local/Cellar/hadoop/2.7.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/start-yarn.sh"
alias hstop  "/usr/local/Cellar/hadoop/2.7.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/stop-dfs.sh"

# Put the following on a free console and leave it there.                                                                                                                      
# Even when the logs are circulating, it will carry on.                                                                                                                        
# If someone kills this process, it automatically exits due to the "exec".                                                                                                     
alias log_messages 'clear; exec tail -f /var/log/messages --follow=name --retry'

# Watch any(1) other users every 0 seconds from any(2) console,                                                                                                                
# when logging in/out.(I like this one!)                                                                                                                                       
# It gives something like "root has logged on tty1 from local."                                                                                                                
set watch=(0 any any)

# Formatting of output string for who when someone logins or logouts.                                                                                                          
# It gives something like "root has logged on tty1 from local."                                                                                                                
set who="%n has %a %l from %m."

# Set to 'insert' mode. Possible values 'insert' or 'overwrite'.                                                                                                               
set inputmode=insert

# Various usage statistics set with the time command.                                                                                                                          
# Do "man tcsh" to find about more data that can be shown here.                                                                                                                
set time=(8 "Time spent in user mode   (CPU seconds) : %Us\                                                                                                                    
Time spent in kernel mode (CPU seconds) : %Ss\                                                                                                                                 
Total time                              : %Es\                                                                                                                                 
CPU utilisation (percentage)            : %P")

# Setting the 'echo_style' parameter to 'both'.                                                                                                                                
# Other values are bsd, sysv, etc.                                                                                                                                             
# This way, both 'set -n' and 'set \003' styles will work.                                                                                                                     
set echo_style=both

##########################################################                                                                                                                     
###     Environment Variables                                                                                                                                                  
##########################################################                                                                                                                     

# Set a reasonable route through the file system, paths etc.                                                                                                                   
set path=(/usr/local/bin /usr/{bin,lib,sbin} /{bin,lib,sbin} /usr/local/mysql/bin /Users/rsowers/google-cloud-sdk/{bin,lib} /usr/local/bin /usr/local/sbin /Users/rsowers/spar\
k-1.4.0/{bin,sbin} /opt/local/bin)

if( -x ~/bin ) then
    set path=($path ~/bin)
endif

setenv PERL5LIB /System/Library/Perl/5.18

# Set editor and pager variables                                                                                                                                               
setenv EDITOR "emacs -nw"
setenv PAGER less

setenv USER "rsowers"
setenv USER_NAME "Ryan H. Sowers"
setenv AUTHOR "Ryan H. Sowers"

##                                                                                                                                                                             
# Your previous /Users/rsowers/.cshrc file was backed up as /Users/rsowers/.cshrc.macports-saved_2015-07-15_at_19:01:27                                                        
##                                                                                                                                                                             

# MacPorts Installer addition on 2015-07-15_at_19:01:27: adding an appropriate PATH variable for use with MacPorts.                                                            
setenv PATH "/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.                                        
