#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GitHub List 
# @raycast.author weitanai
# @raycast.authorURL https://github.com/weitanai
# @raycast.description Search [GitHub](https://github.com).

# @raycast.icon 📦
# @raycast.mode silent
# @raycast.packageName List Searches
# @raycast.schemaVersion 1

# @raycast.argument1 { "type": "text", "placeholder": "Query", "percentEncoded": true }

open "https://github.com/search?q=${1}"
