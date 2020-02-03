#!/bin/bash
while true
do
  echo "Choosing a pod to kill..."

  PODS=()
  PODS=($(kubectl get pods | grep -v NAME | awk '{print $1}'))
  POD_COUNT=${#PODS[@]}
  # echo "PODS: [$PODS]"
  echo "POD_COUNT: $POD_COUNT"

  DIFF=$(($POD_COUNT-0+1))
  # echo "DIFF: $DIFF"
  # echo "RANDOM: $RANDOM"
  I=$(($(($RANDOM%$POD_COUNT))+0))
  echo "Index: $I"
  # echo -e "Pod Choose: ${PODS[$I]}\n"

  echo -e "Killing pod ${PODS[$I]}"
  echo -e "kubectl delete pod ${PODS[$I]}\n\n"
  #kubectl delete pod ${PODS[$I]}

  sleep 5
done

### Possible todo
# 1. uncomment line 21 to really start deleting pods
# 2. add namespace at line 7 "kubectl get pods -n namespace"
