为hdu的计组学生提供基本的环境，不需要再安装庞大的虚拟机，只需要一个ubuntu的系统即可。
# 食用方法
hdu提供的文档中的命令包含大量的别名，要想无痛的使用，需要配置别名。
运行`setup.sh`，然后再重新打开终端，它会自动为你配置好环境。
```bash
chmod +x setup.sh
./setup.sh
```
重新打开终端，就可以使用hdu提供的命令了。
# docker部署（推荐）
由于libc的版本问题，只有ubuntu22.04才可以通过脚本安装环境，如果你的系统版本不是22.04，可以使用docker部署环境。
```bash
docker pull skynesser/riscv32
# 挂载本机的工作目录到容器中
docker run --name risv32 -d -v {本机的工作目录}:/linux-riscv32 skynesser/riscv32 /bin/bash
# 进入容器
docker exec -it risv32 /bin/bash
```