for param in ${PARAMS}; do
  VAR=$(echo $param | awk -F . '{print $NF}' | tr '[:lower:]' '[:upper:]' )
  VAL=$(aws ssm get-parameters  --names $param --with-decryption | jq .Parameters[].Value | sed -e 's/"//g')
  echo export $VAR=\"$VAL\"
  echo export $VAR=\"$VAL\" >>/params/params
done