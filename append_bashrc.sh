#!/bin/sh

if [ ! -f "${HOME}/.bashrc" ]; then
    echo "ignored (.bashrc doesn't exist)";
    exit 1;
fi

if [ 0 -eq `grep ". .qisbashrc" "${HOME}/.bashrc" | echo $? ` ]; then
    echo "ignored (line already exists)";
    exit 0;
fi

echo ". .qisbashrc" >> "${HOME}/.bashrc";
echo "done."
