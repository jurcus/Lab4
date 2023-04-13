
#!/bin/bash

if [ "$1" = "--date" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi

if [ "$1" = "--logs" ]; then
  for i in {1..100}; do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Nazwa skryptu: $0" >> $filename
    echo "Data: $(date +%Y-%m-%d)" >> $filename
  done
  echo "Utworzono 100 plików logx.txt"
else
  echo "Użycie: $0 --logs"
fi
