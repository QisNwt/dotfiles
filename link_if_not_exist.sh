#!/bin/sh

for item in `ls -a1 | grep "^\." | egrep -v "^\.+$"`; do
    if [ ! -e "${HOME}/${item}" ]; then
         ln -s ${PWD}/${item} "${HOME}/${item}";
         echo "linked to ${PWD}/${item} from ${HOME}/${item}";
    else
         echo "ignored:  ${PWD}/${item} (${HOME}/${item} already exists)";
    fi
done
echo 'done.';
