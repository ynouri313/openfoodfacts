#!/bin/bash

# Start MongoDB in the background
echo "Starting MongoDB..."
mongod --bind_ip 0.0.0.0 --fork --logpath /var/log/mongodb.log
#mongod --fork --logpath /var/log/mongodb.log
# Wait until MongoDB is fully up and running
echo "Waiting for MongoDB to start..."
until mongo --eval "db.runCommand({ connectionStatus: 1 })" > /dev/null 2>&1; do
  echo "MongoDB not yet available. Retrying in 2 seconds..."
  sleep 2
done

echo "Importing collections into MongoDB..."

mongoimport --db off --collection aliments --drop --file /mongodb/ingredients.jsonl
wait
mongoimport --db off --collection brand_ingredients --drop --file /mongodb/brandedDownload.jsonl



echo "MongoDB import finished. Keeping MongoDB running in the foreground..."
tail -f /dev/null

# # Start MongoDB service
# exec mongod
# and add this at the end
#exec "$@"
