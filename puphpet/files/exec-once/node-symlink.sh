#!/bin/bash

# This fixes an issue with node packages complaining because `node` can't be found.
# @see https://github.com/joyent/node/issues/3911#issuecomment-8956154

ln -s /usr/bin/nodejs /usr/bin/node
