################################
  #	> File Name    : 6-14.sh
  #	> Created Time : 2019/6/14
###############################

#!/bin/bash  #shebang

#echo "hello world!"

# 当用source执行时，不会创建子shell
#pwd
#cd ..
#pwd

# shell脚本是弱类型的语言
# test 1
# 所有变量直接使用
#myint=100
#myfloat=3.14
#mystring="hehe"
#mychar=c
#
#echo $myint
#echo $myfloat
#echo $mystring
#echo $mychar

# test 2
#mystring="lala"
#echo "$mystringhehe" # 输出空行，因为$后的字符串被认定为一个新的变量名
#echo "${mystring}hehe" #lalahehe
#
#mystring="hehe"  # 可以直接改动

# test 3 
# readonly 只读变量
#readonly mystring="hehe"
#echo $mystring
##mystring="lal"
##echo $mystring
#
## unset删除变量
## 不能删除只读变量
#mystring2="my"
#echo $mystring2
#unset mystring2
#echo $mystring2
#unset mystring
#echo $mystring

#test 4
# shell变量 本地变量 环境变量 shell变量
# 本地变量：只存在于当前shell进程 用set命令可显示当前shell进程的变量
# 环境变量：可以从父进程传递给子进程，用export命令可以把本地变量导为环境变量
#echo $myval

##test 5
## 字符号串拼接
#str1='hehe '
#str2='haha'
#echo $str1$str2' lala'
## 获取字符串长度
#echo ${#str1}
#echo ${#str2}
## 提取字符串
#string="abcd1234"
#echo ${string:1:4}
##查找字符串
#string1="hehe haha lala"
#echo `expr index '$string1' hehe`

##test 6
## 由 `` 括起来的也是一条命令，Shell先执行该命令，然后将输出的结果立刻代换到当前命令中
#date=`date +%Y:%m:%d`
#echo $date
## 命令行代换也可以用$()表示
## (())中的shell变量取值将转换成整数
## (())中只能用+-*/和()运算符，并且只能作整数运算
#myint=100
#echo $myint
#(( myint++ ))
#echo $myint
## 对运算结果进行赋值或者作为右值
#res=$(( ++myint ))
#echo $myint
#echo $res

#test 6
# 转义字符 \ 
# 续行符 \
# ''和“” Shell脚本中单引号和双引号都是字符串的界定符
# ''用于保持引号内所有字符的子面值，但字符串中不能出现单引号
mystring="good"
echo "hehe $mystring \\ \" \\ \` `date +%Y:%m:%d`"
echo 'hehe $mystring \\ \" \\ \` `date +%Y:%m:%d`'



