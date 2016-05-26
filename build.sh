#!/bin/bash

echo "Environment: `uname -a`"
echo "C   Compiler: `$CC --version`"
echo "C++ Compiler: `$CPP --version`"

make || exit 1
make test || exit 1
