#!/bin/sh

set -e

# Capture output
result=$( sh -c "sfdx $*" )

# Write output to output variable
echo ::set-output name=result::$result