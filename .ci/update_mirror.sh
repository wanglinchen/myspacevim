#!/usr/bin/env bash

usage () {
    echo ".ci/update_remote.sh [option] [target]"
}

check_remote () {
    if [ -z "$(git remote -v | grep git@gitee.com:spacevim/SpaceVim.git)" ];then
        git remote add gitee git@gitee.com:spacevim/SpaceVim.git
    fi
}

push_gitee()
{
    git remote add gitee https://SpaceVimBot:${BOTSECRET}@gitee.com/spacevim/SpaceVim.git
    git push gitee master 
}

push_coding()
{
    git remote add coding https://spacevim%40outlook.com:${CODINGBOTSECRET}@e.coding.net/spacevim/SpaceVim.git
    git push coding master 
}

main () {
    if [ $# -gt 0 ]
        check_remote
    then
        case $1 in
            --help|-h)
                usage
                exit 0
                ;;
            gitee)
                push_gitee
                exit 0
                ;;
            coding)
                push_coding
                exit 0
                ;;
        esac
    fi
}

main $@
