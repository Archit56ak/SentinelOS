
sudo snort -q -l /var/log/snort -i esp0s3 -A console -c /etc/snort/snort.conf  | tee -a /mnt/host/d/TY-2023-2024/SentinelOS/sentinel/log.txt

# Input and output files
log_file="logs.txt"
csv_file="snort_data.csv"

# Check if the CSV file exists; if not, create it with the header
if [ ! -f "$csv_file" ]; then
    echo "Date,Time,Source IP Address,Destination IP Address,Alert Message,Type of Protocol" > "$csv_file"
fi

# Read each log entry from the logs.txt file
while IFS= read -r log_entry; do
    # Extract Date and Time
    datetime=$(echo "$log_entry" | awk '{print $1}')
    date=$(echo "$datetime" | cut -d'-' -f1)
    time=$(echo "$datetime" | cut -d'-' -f2 | cut -d'.' -f1)

    # Extract Alert Message
    alert_message=$(echo "$log_entry" | awk -F'\\[\\*\\*\\]' '{print $2}' | awk -F'\\[Priority' '{print $1}' | xargs)

    # Extract Protocol Type using awk
    protocol=$(echo "$log_entry" | awk -F'[{}]' '{print $2}')

    # Extract Source and Destination IP Addresses
    source_ip=$(echo "$log_entry" | awk '{print $(NF-2)}' | cut -d':' -f1)
    destination_ip=$(echo "$log_entry" | awk '{print $NF}' | cut -d':' -f1)

    # Append the extracted log data to the CSV file
    echo "$date,$time,$source_ip,$destination_ip,$alert_message,$protocol" >> "$csv_file"

    # Optional: Print the segregated components (for verification)
    echo "Date: $date"
    echo "Time: $time"
    echo "Source IP Address: $source_ip"
    echo "Destination IP Address: $destination_ip"
    echo "Alert Message: $alert_message"
    echo "Type of Protocol: $protocol"
    echo "--------------------------------------------"
done < "$log_file"

