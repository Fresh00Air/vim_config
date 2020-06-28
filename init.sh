#/bin/bash

cd `dirname $0`

Install_Vundle() {
    if [ ! -d ~/.vim/bundle/Vundle.vim ];then
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    else
        echo 'Vundle has been installed'
    fi
}

Help(){
cat << EOF
vimrc.local.template 包括了所有的常用规则
vimrc.home.template 包括了现用的插件(不包括自动补全) 使用前需要先安装Vundle, fzf, ctags, (astyle clang-format python-pep8 python3-pep8 python-autopep8 格式化)
Install_Vundle 用于在home目录下安装Vundle
EOF
}

case $1 in
    help)
        Help
    ;;
    Install_Vundle)
        Install_Vundle
    ;;
esac

