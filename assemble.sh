#!/bin/bash

yasm -f elf64 -g dwarf2 -l $1.lst $1.s  && \
ld $1.o -o $1 && \
./$1
EXIT_STATUS=$?
echo "exited with status code: ${EXIT_STATUS}"
exit $EXIT_STATUS
