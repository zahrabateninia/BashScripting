#!/bin/bash

for logfile in /var/log*log; do
    echo "Processing: $logfile"
    cut -d" " -f5- $logfile | sort | uniq -c | sort -nr | head -5
done

# cut -d" " -f5- $logfle: This command extracts the text from the fifth field (column) onward using space as the delimiter. 
# It effectively removes the first four columns from each line, which might typically contain timestamps and other metadata.

# sort: This command sorts the extracted text in lexicographical order. This step is useful for preparing the data for the next operation.

# uniq -c: This command counts the number of occurrences of each unique line (log entry) and prefixes the count to each line.

# sort -nr: This command sorts the lines in reverse numeric order based on the count. This is used to list the most frequent log entries at the top.

# head -5: This command displays the first five lines of the sorted output, which effectively shows the top five most frequent log entries.