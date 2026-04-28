#!/bin/bash
# run_portfolio_analysis.sh

claude -p "$(cat /home/engkwee/finance/routine1.txt)" --dangerously-skip-permissions  # Run Routine 1, wait for it to finish
if [ $? -eq 0 ]; then             # Only proceed if Routine 1 succeeded
    claude -p "$(cat /home/engkwee/finance/routine2.txt)" --dangerously-skip-permissions # Then run Routine 2
fi
