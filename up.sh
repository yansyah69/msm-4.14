# Telegram BOT Token & Groups ID
BOT_TOKEN="7569539463:AAG-Y6Tu-J_MDSgODS-kQm47RnNEmlhrb5U"
CHAT_ID="-1002300673517"

# Function to send a message to Telegram
  curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
      -d chat_id="$CHAT_ID" \
       -d text=" " > /dev/null
echo "Sending build information"
       
# Function to send a file to Telegram       
for file in $(pwd)/*.zip
        do
  curl -s https://api.telegram.org/bot$BOT_TOKEN/sendDocument \
       -F chat_id="$CHAT_ID" \
       -F document=@"$file" \
       -F caption="" > /dev/null
rm -rf "$file"
echo "Sending archive to Telegram..."
done
