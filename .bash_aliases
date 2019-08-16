alias 8='jenv shell 1.8'
alias 11='jenv shell 11.0'
alias 12='jenv shell 12.0'
alias jre='export JAVA_HOME=/data/erx/dev/client/jre; export PATH=/data/erx/dev/client/jre/bin:${SAVE_PATH}'
alias auth='curl -s -u `jq -r ".clientId" < api-key.json`:`jq -r ".secret" < api-key.json` https://dev-shield.rxservices.mckesson.com/mps/auth/v1/oauth/token -d "grant_type=client_credentials"| echo "Bearer" `jq -r ".access_token"`'
alias curljs='AUTH=`auth` curl -X POST -H "Content-Type: application/json" -H "Authorization: ${AUTH}" -d '
alias publixauth='curl -s -u "46a6de15-925a-4d41-b173-ecdc07e5e975:Q7m0NY4FLH5XOmH4gre1ggkWVO2r40-JzxsHPHUZ" -d "grant_type=client_credentials" -d "resource=urn:publix:nha:covermymeds:tst" https://customersso-tst.pbxtst.com/adfs/oauth2/token'
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltr'
alias g='git'
alias ga='git add'
alias _='sudo'
alias gf='git fetch --all'
alias gs='git status'
alias gsv='git svn'
alias gcp='git cherry-pick'
alias gpu='git push upstream HEAD:master'
alias gl='git l'
alias gc='git commit -am'
alias gr='gf && git rebase upstream/master'
alias yeet='git push'
alias yank='git pull'
alias geet='git push'
alias gank='git pull'
alias sync='yank upstream master && yeet'

alias client='cd /data/erx && c && cd dev/client && jenv exec ./client.sh '
alias d='docker'
alias dc='docker-compose'
alias drunit='docker run -it -v `pwd`:`pwd` -w `pwd`'
alias dex='docker exec -it'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias drma='docker ps -a | egrep "Exited.*\(minutes\|days|weeks|months|years\) ago" | awk '"'"'{print $1}'"'"' | xargs --no-run-if-empty docker rm'
alias drmi='docker rmi'
alias drmai='docker rmi $(docker images -f "dangling=true" -q)'
alias dim='docker images'
alias drm='docker rm'
alias dcup='docker-compose up -d'
alias dcs='docker-compose stop'
alias dcl='docker-compose logs'
alias dcrm='docker-compose rm'
alias p='proxychains4'
alias build='TOMCAT_HOME=/opt/tomcat5.5 g co -- DatabaseSchema/PostUpgrade && gs && jenv exec ant -Djboss.config.dir=/data'
alias c='build compileSrc'
alias c7='build init-java compileSrc'
alias compile='c && rsync -ru bin/build/* /mnt/classes'
alias full='build dev-clean-jaxb clean lib-check token compile custom package test &&  d run -it --rm -v `pwd`:/var/tmp:delegated erx-build ant pack database distribute installer'
alias package='build compileSrc package'
alias p=proxychains4
alias runtest='build test'
alias packtest='package test'
alias qang='for FILENAME in cps*.war; do NEW=$(echo $FILENAME | cut -c4-); mv $FILENAME qa#cpsqang$NEW; done'
alias qaga='for FILENAME in cps*.war; do NEW=$(echo $FILENAME | cut -c4-); mv $FILENAME qa#cpsqaga$NEW; done'
alias mysql="docker run -it -v /home/jhartmann/fdb/TELJAVA443/Current/Data/Loading/MKF:/scripts --link mysql --rm mysql sh -c '${MYSQLCMD}'"
alias sqlplus='rlwrap sqlplus'
alias serve="python -m SimpleHTTPServer"
alias ...=". ~/.bashrc"
alias last='shuf -n 1 /data/namegen/src/macosMain/resources/dist.all.last.csv | cut -d, -f1'
alias first='shuf -n 1 /data/namegen/src/macosMain/resources/dist.all.first.csv | cut -d, -f1'
alias street='shuf -n 1 /data/namegen/src/macosMain/resources/street_names.csv | cut -d, -f1'
alias uuid=uuidgen

#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
Hostname="\h "

# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$IBlack$Hostname$Time12h$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$BYellow$PathShort$Color_Off'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off'\$ "; \
fi)'

