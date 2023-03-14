#!/bin/sh

#
# Get a snippet from pingdeck github repo
#

curl -s \
  https://pingone-davinci.github.io/si-ping-deck-config/resources/${1} \
  | pbcopy

curl --location --request POST 'https://pingdeck.pingidentity.cloud/api/analytics' \
--header 'Content-Type: application/json' \
--data-raw '{
    "userid": "streamdeck",
    "profile": "pingdeck",
    "action": "GIT_CLIPBOARD",
    "resource": "'${1}'",
    "pos": "0,0"
}'