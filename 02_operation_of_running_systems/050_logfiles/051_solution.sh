#!/bin/bash
sudo journalctl -f # -f will jump to the end of the journal and follow it as it gets updated
# Search for the message, it should be highlighted in yellow.