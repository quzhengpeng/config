# aliases

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lh'
alias la='ls -Alh'
alias l='ls -CF'

# git aliases
alias gits='git status ./*'

# hadoop aliases
alias hcp='hadoop fs -cp'
alias hdu='hadoop fs -du'
alias hls='hadoop fs -ls'
alias hrm='hadoop fs -rm'
alias hcat='hadoop fs -cat'
alias hget='hadoop fs -get'
alias hput='hadoop fs -put'
alias hrmr='hadoop fs -rmr'
alias hmkdir='hadoop fs -mkdir'

# hive aliases
alias beeline='beeline -u jdbc:hive2://localhost:10000'

# spark aliases
alias spark-sql='spark-sql --master spark://localhost:7077 --executor-memory 512m'
alias spark-shell='spark-shell --master spark://localhost:7077 --executor-memory 512m --driver-memory 512m'
alias spark-thrift='/usr/local/spark/sbin/start-thriftserver.sh --master spark://localhost:7077 --executor-memory 512m'

# clickhouse aliases
alias ck='clickhouse-client --user default --password default --port 9001 --prompt "\e[1;32;40m{user}\e[1;31;40m@\e[1;32;40m{host}:{port}\e[0m"'

# User specific aliases and functions
alias vncserver='vncserver -localhost no'