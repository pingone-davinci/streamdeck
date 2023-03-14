#!/bin/sh
#
# Get a DV Component from github repo
#

urlencode() {
    # urlencode <string>
    old_lc_collate=$LC_COLLATE
    LC_COLLATE=C

    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:$i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf '%s' "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done

    LC_COLLATE=$old_lc_collate
}

#
# Get a snippet from github repo
#

jsonData=$(curl -s "https://pingone-davinci.github.io/si-ping-deck-config/resources/${1}")
urlEncodedJson=$(urlencode "$jsonData")
base64Encoded=$(echo "$urlEncodedJson" | base64 )
echo $base64Encoded | pbcopy

curl --location --request POST 'https://pingdeck.pingidentity.cloud/api/analytics' \
--header 'Content-Type: application/json' \
--data-raw '{
    "userid": "streamdeck",
    "profile": "pingdeck",
    "action": "GIT_DV_CLIPBOARD",
    "resource": "'${1}'",
    "pos": "0,0"
}'
