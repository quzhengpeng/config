#!/usr/bin/env zsh
################################
# FileName    : tools
# Author      : quzhengpeng
# CreateTime  : 2025-06-04 18:35:09
# Version     : 1.0
# Description : 
################################

# Example usage:
# info "This is an info message"

info() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;32m[INFO]\033[0m $1"
}

warning() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;33m[WARNING]\033[0m $1"
}

error() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;31m[ERROR]\033[0m $1"
}


INFO() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;32m[INFO] $1\033[0m"
}

WARNING() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;33m[WARNING] $1\033[0m"
}

ERROR() {
    echo $2 `date '+%Y-%m-%d %H:%M:%S'` "\033[0;31m[ERROR] $1\033[0m"
}

# Example usage:
# if is_exists /usr/local; then
#     echo "Exists"
# else
#     echo "Does not exist"
# fi

is_exists() {
    [ -e $1 ]
}

is_file() {
    [ -f $1 ]    
}

is_dir() {
    [ -d $1 ]
}

check_sha256sum() {
    FILE_1=$1
    FILE_2=$2
    
    if ! is_file $FILE_1; then
        return false
    elif ! is_file $FILE_2; then
        return false
    fi

    S1=$(sha256sum $FILE_1 | awk '{print $1}')
    S2=$(sha256sum $FILE_2 | awk '{print $1}')

    if [[ "$S1" == "$S2" ]]; then
        return true
    else
        return false
    fi
}