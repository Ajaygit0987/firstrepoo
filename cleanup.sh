#!/bin/bash
dir_path="/home/ec2-user/shell_script/sub_dir1"
total=`ls $dir_path | wc -l`
delete=`expr $total - 20`
if [ $delete -gt 0 ]
then
cd $dir_path
ls -rt | head -${delete} |xargs rm
echo "number of file"
ls  |wc -l
fi
