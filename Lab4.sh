#!/bin/bash

if [ "$1" = "--date" ]; then
  echo "Dzisiejsza data: $(date +%Y-%m-%d)"
elif [ "$1" = "--logs" ]; then
  if [ -z "$2" ]; then
    echo "Użycie: $0 --logs <liczba plików>"
  else
    num_logs=$2
    for i in $(seq 1 $num_logs); do
      filename="log$i.txt"
      echo "Nazwa pliku: $filename" > $filename
      echo "Nazwa skryptu: $0" >> $filename
      echo "Data: $(date +%Y-%m-%d)" >> $filename
    done
    echo "Utworzono $num_logs plików logx.txt"
  fi
else
  echo "Użycie: $0 --date | --logs <liczba plików>"
fi