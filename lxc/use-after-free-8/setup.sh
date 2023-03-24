#!/bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
benchmark_name=$(echo $script_dir | rev | cut -d "/" -f 3 | rev)
project_name=$(echo $script_dir | rev | cut -d "/" -f 2 | rev)
bug_id=$(echo $script_dir | rev | cut -d "/" -f 1 | rev)
dir_name=$1/$benchmark_name/$project_name/$bug_id
current_dir=$PWD
mkdir -p $dir_name
cd $dir_name
mkdir dev-patch

project_url=https://github.com/lxc/lxc
fix_commit_id=4e03ae5
bug_commit_id=9588a6c

cd $dir_name
git clone $project_url src
cd src
git checkout $bug_commit_id
git format-patch -1 $fix_commit_id
cp *.patch $dir_name/dev-patch/fix.patch

find . -type f -name '*.c' | xargs sed -i 's/WEXITSTATUS//g'
find . -type f -name '*.c' | xargs sed -i 's/WIFEXITED//g'
find . -type f -name '*.c' | xargs sed -i 's/WIFSIGNALED//g'
find . -type f -name '*.c' | xargs sed -i 's/WTERMSIG//g'

cd src/lxc
make clean
