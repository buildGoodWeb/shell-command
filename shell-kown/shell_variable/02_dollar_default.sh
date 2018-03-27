#!/bin/bash
#
variable1_=$1_
critical_argument01=$variable1_
variable1=${variable1_/_/}
echo $variable1
#
# until命令不断读取从标准输入中键入的参数，直到读取完成后结束退出，
# 若shift不存在，则只读取第一个参数，直到人为干预才会退出
until [ -z $1 ]
do
  echo $1
  # shift
done

# -z用来判断用户在执行脚本时是否提供了参数，若未提供，执行`exit $MISSING_PARAM`
if [ -z $1 ]
then
  echo “exit”
  exit $MISSING_PARAM
fi
exit 0