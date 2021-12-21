#!/bin/bash
mkdir somedir
touch somedir/writeprotected
chmod 000 somedir/writeprotected
mkdir someotherdir
touch someotherdir/writeprotected