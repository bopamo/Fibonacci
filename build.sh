#!/bin/bash

echo "Environment: `uname -a`"
echo "Compiler: `$CC --version`"

make || exit 1
make test || exit 1
