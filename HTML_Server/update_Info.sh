#!/bin/bash

while true; do
  # Récupère la température du CPU
  sensors > /var/www/html/cpu-temp.txt

  # Récupère l'utilisation de la mémoire
  top -b -n1 | grep "KiB Mem" > /var/www/html/memory-usage.txt

  # Récupère l'utilisation du CPU
  top -b -n1 | grep "Cpu(s)" > /var/www/html/cpu-usage.txt

  # Attend 10 secondes avant de réexécuter les commandes
  sleep 10
done
