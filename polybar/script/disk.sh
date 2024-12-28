#!/bin/bash

free_bytes=$(df -B1 / | awk 'NR==2 {print $4}')

if [[ -z "$free_bytes" || ! "$free_bytes" =~ ^[0-9]+$ ]]; then
  echo "Error: No se pudo obtener el espacio libre en bytes."
  exit 1
fi

free_gb=$(awk "BEGIN {printf \"%.1f\", $free_bytes / (1024^3)}")

echo "DISK: ${free_gb}GB"

