#!/bin/sh

java -Xshare:on -XX:SharedArchiveFile=/app/appcds.jsa -jar /app/openapi-diff.jar "$1" "$2" | tee openapi-diff.out

{
    echo 'diff-output<<EOF'
    cat openapi-diff.out
    echo EOF
} >> "$GITHUB_OUTPUT"
