#!/bin/sh

set -e

# Capture output
output=$( sh -c "sfdx $*" )

# Write output to STDOUT
echo "$output"