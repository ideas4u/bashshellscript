#!/bin/bash
#show all user'shell in the current system,every shell show only once.
#
 cut  -d: -f7 /etc/passwd | sort -u

