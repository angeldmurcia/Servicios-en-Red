#!/bin/bash

echo $1 $2 $3

if [[ $2 = '+' ]];
then
  let res=$1+$3
elif [[ $2 = '-'  ]];
then
  let res=$1-$3
elif [[ $2 = '*' ]];
then
  let res=$1*$3
elif [[ $2 = '/' ]];
then
  let res=$1/$3
fi

echo $res