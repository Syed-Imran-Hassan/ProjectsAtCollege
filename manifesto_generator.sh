#!/bin/bash
# Purpose: Displays the FOSS philosophy of the project
PHILOSOPHY=("Freedom to Run" "Freedom to Study" "Freedom to Redistribute" "Freedom to Improve")

echo "GENERATING OPEN SOURCE MANIFESTO..."
sleep 1
for principal in "${PHILOSOPHY[@]}"; do
    echo ">> $principal"
    sleep 0.5
done
echo "LibreOffice Audit Project - Syed Imran Hassan (24BHI10030)"
