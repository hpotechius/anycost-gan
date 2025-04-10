#!/bin/bash

# Überprüfen, ob die virtuelle Umgebung bereits existiert
if [ ! -d "env" ]; then
    echo "Virtuelle Umgebung wird erstellt..."
    #python3.8 -m venv env
    module load tools/python/3.8
    python3 -m venv env
    echo "Virtuelle Umgebung wurde erstellt."
else
    echo "Virtuelle Umgebung existiert bereits."
fi

# Aktivieren der virtuellen Umgebung
echo "Aktiviere die virtuelle Umgebung..."
source env/bin/activate

# Installieren der Abhängigkeiten aus requirements.txt
echo "Installiere Abhängigkeiten..."
pip install --upgrade pip
pip install -r requirements.txt

# Starten des Python-Skripts
echo "Starte demo.py..."
python demo.py