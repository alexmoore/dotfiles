#!/bin/bash

function pgrep() { 
    ps axww | grep $* | grep -v 'grep $*' | awk '{ print $1 }'
}