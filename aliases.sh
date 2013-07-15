#!/bin/bash

# some alias short-cuts
alias l='ls -lrt'
alias cye='cd ~/cds/ams/CYE_frey.Work; /usr/local/vlsi/cds/scripts/ams06  &'
alias cx06='cd ~/cds/xfab/CX06a3_frey_0506.Work;  /usr/local/vlsi/cds/scripts/cx06  & '
alias xh035='cd ~/cds/xfab/XH035_Sept2008.Work; source svn.env.bash; /usr/local/vlsi/cds/skripts/xh035  & '

#rdesktop
alias bs-ts02='rdesktop -a 16 -T bs-ts02 -g 1920x1150 -u d\\jamuelle -x 0×80 -d D -k de-ch -z -r sound:locale -r clipboard:PRIMARYCLIPBOARD  bs-ts02.ethz.ch'
alias bs-tp17='rdesktop -a 16 -T bs-tp17 -g 1920x1150 -u d\\jamuelle -x 0x80 -d D -k de-ch -z -r sound:locale -r clipboard:PRIMARYCLIPBOARD  bs-tp17.d.ethz.ch'


alias grep='grep -n --color=auto'
alias jssh='ssh -X jamuelle@tardis-d08.ee.ethz.ch'
alias d14ssh='ssh -X -A jamuelle@bs-dsvr14'
alias d04ssh='ssh -X -A jamuelle@bs-dsvr04'

alias mv='mv -i'

alias svndiff="svn diff --diff-cmd ~/.vim/scripts/svndiff"

alias tipp="gnome-terminal -x vim /home/jamuelle/tipps"
alias todo="gnome-terminal -x vim /home/jamuelle/todo"

alias VersICsvn='svn --config-dir ~/.versic/subversion'

alias matlab32='sudo /usr/local/hima/MATLAB_free_R2008x_Unix_EN/bin/matlab -glnx86'


alias tech='cd /home/jamuelle/cadence/tech/xfab_xh035/cds/'
alias hdl='cd /home/jamuelle/bel.svn/hima_internal/cmosmea/trunk/hdl'
alias projects='cd /home/jamuelle/cadence/projects/cmosmea/trunk/cds'
alias pla='cd /home/jamuelle/research/plasticity/'

alias s='svn'
alias ss='svn stat'

alias get_modelsim='source /home/bs-vlsi/svn/trunk/modeltech/env/path64'
alias get_xilinx='source /usr/local/hierlemann/Xilinx/13.2/ISE_DS/settings64.sh'
alias vc='vcom  -check_synthesis '

alias mm='make clean && make -j16'
alias m='make -j16'

alias impakt='LD_PRELOAD=/home/jamuelle/bin/libusb-driver.so impact'
alias boost.python='LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/hierlemann/boost/current/lib/ python'
