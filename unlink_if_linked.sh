#!/bin/sh

for item in .*?; do
    case ${item} in
        .. | .git | .gitmodules | .gitignore )
            continue;;
        *)
            if [ 0 -eq `file "${HOME}/${item}" | grep "${PWD}/${item}" | echo $?` ]; then
                unlink "${HOME}/${item}";
                echo "deleted link to ${PWD}/${item} from ${HOME}/${item}";
            fi
            ;;
    esac
done
echo 'done.';
