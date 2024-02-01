#!/bin/bash

LOG_FILE="/var/log/syslog/rest-api-svc"

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

echo "Log Analysis Summary:"
echo "---------------------"
echo "Total Errors: $ERROR_COUNT"
