guake &
sleep 5
guake -r "Home"
guake -n k -r "AppServer" --execute-command='cd /usr/local/IBM/ws8/AppServer/profiles/Dmgr01/bin && sudo su'
guake -n k -r "AppServer Log" --execute-command='tail -F /usr/local/trexone/logs/server1.erxlog'
guake -n k -r "Root #1" --execute-command='cd / && sudo su'
guake -n k -r "Root #2" --execute-command='cd / && sudo su'
guake -n k -r "Root #3" --execute-command='cd / && sudo su'
guake -n k -r "User #1" --execute-command='cd ~'
guake -n k -r "User #2" --execute-command='cd ~'
guake -n k -r "User #3" --execute-command='cd ~'
guake -n k -r "SQL*Plus" --execute-command='cd ~/1Projects/current/erx-build/dist/database/db/OLTP/trexone_proxy/Deltas'
guake -n k -r "Test" --execute-command='cd ~/1Projects/current/Test'
guake -n k -r "Build" --execute-command='cd ~/1Projects/current'
guake -n k -r "Atlanta #1" --execute-command='cd ~'
guake -n k -r "Atlanta #2" --execute-command='cd ~'
guake -n k -r "Pgh #1" --execute-command='cd ~'
guake -n k -r "Pgh #2" --execute-command='cd ~'
guake -n k -r "GIT" --execute-command='cd ~'
