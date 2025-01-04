# Shell Script File Processing Bug

This repository demonstrates a common, yet subtle, error in shell scripting when iterating through arrays and checking for file existence.  The script intends to process a list of files, but it contains a mistake in how it checks if each file exists.

## Bug Description
The `bug.sh` script incorrectly uses the array name ("$files") instead of the individual element ("$i") within the `if` condition that checks for file existence.  This leads to the script always checking the same (array) variable instead of individual files.

## Solution
The `bugSolution.sh` script corrects this error by using the individual element name ("$i") in the `if` condition.

## How to Reproduce
1. Clone this repository.
2. Run `./bug.sh`. Observe the incorrect output.
3. Run `./bugSolution.sh`. Observe the corrected output.
