option=${1}
valueToConvert=$(pbpaste)

if [[ ! -z "${option}" ]] && [[ "${option}" == "-d" ]]
then
    echo -n $valueToConvert | base64 -d | pbcopy
else
    echo -n $valueToConvert | base64 | pbcopy
fi