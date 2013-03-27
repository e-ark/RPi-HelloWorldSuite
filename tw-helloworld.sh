#!/bin/sh

# settings
user=gc4unix # Input your twitter id
tweet="hello world form Raspberry Pi #gc4unix"

echo $tweet | tw --pipe --user=$user
