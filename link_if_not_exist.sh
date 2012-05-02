#!/bin/sh

for item in .?*; do
    case $item in
        .. | .git | .gitmodules | .gitignore)
            continue;;
        *)
            if [ ! -e "${HOME}/${item}" ]; then
                ln -s ${PWD}/${item} "${HOME}/${item}";
                echo "linked to ${PWD}/${item} from ${HOME}/${item}";
            else
                echo "ignored:  ${PWD}/${item} (${HOME}/${item} already exists)";
            fi
            ;;
    esac
done
echo 'done.';
