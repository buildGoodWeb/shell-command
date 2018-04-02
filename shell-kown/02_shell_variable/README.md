## 环境变量
```bash
# 系统定义的局部变量（包括环境变量）
set

# 环境变量
env

# 查看环境变量
echo $HOSTNAME
echo $USER
echo $HOME
```
- 通常使用环境变量存储会话和工作环境的信息。
- 环境变量中的数据，具有永久性，如系统配置信息、用户账号等

## 特殊变量
- 如`$0`,`$1`,`$2`。`$0`表示`文件名称`， `$1`表示第一个参数，`$2`表示第二个参数。参数
超过10个需要用`{}`连起来，如`${10}`。
- `$*`,`$@`表示所有的位置参数

## 内置变量
- SECONDS 记录某个脚本运行的时间，以秒为单位 
- TMOUT 设置一个非零时间值，在运行超过这个时间值后，shell将提示超时并选择退出

## shell变量的设置
按照变量的生存周期划分，可以分为`永久变量`,`临时变量`
### 1. 在`/etc/profile`中定义变量
在文件`/etc/profile`中定义的变量，对Linux用户永久有效，并且是**永久性存在的**。
```bash
# 定义永久性变量CLASSPATH
vi /etc/profile
export CLASSPATH=/JAVA_HOME/lib;$JAVA_HOME/jre/lib

# 修改后，设置的变量在下次启动系统后生效

# 若想立即生效
source /etc/profile
```
### 2. 在当前用户的`.bash_profile`文件中定义
`.bash_profile`文件下定义的变量，只对单用户生效（个人使用的变量）
```bash
# 编辑cat用户（/home/cat）下的.bash_profile文件
vi .bash_profile
export CLASSPATH=/JAVA_HOME/lib;$JAVA_HOME/jre/lib
```
### 3. 直接运行`export`命令定义变量
> 格式： "export 变量名=变量值"
为临时变量，关闭shell后就失效

## shell变量应用
变量只有在被声明、复制、UNSET、EXPORT或是在变量代表一个信号（signal）后，才会真正出现在脚本中。