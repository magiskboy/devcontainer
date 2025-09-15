#!/bin/bash

function is_package() {
    package=$1
    which $package > /dev/null 2>&1
    if [[ $? == 0 ]]; then
        echo "0"
    else
        command $package > /dev/null 2>&1
        if [[ $? == 0 ]]; then
            echo "0"
        else
            echo "1"
        fi
    fi
}
