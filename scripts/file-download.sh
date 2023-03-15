#!/bin/sh

#
# Download from pingdeck github repo
#

curl -s \
  ${1} \
  > ~/Downloads/${2}

curl --location --request POST 'https://pingdeck.pingidentity.cloud/api/analytics' \
--header 'Content-Type: application/json' \
--data-raw '{
    "userid": "streamdeck",
    "profile": "pingdeck",
    "action": "GIT_CLIPBOARD",
    "resource": "'${1}'",
    "pos": "0,0"
}'



