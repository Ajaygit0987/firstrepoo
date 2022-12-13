#!/bin/bash
file_path="/home/ec2-user/linux_commands"
(while IFS= read -r a <&3 && IFS= read -r b <&4;
do
echo "$a"
echo "$b"
done) 3<${file_path}/file3 4<${file_path}/file5

