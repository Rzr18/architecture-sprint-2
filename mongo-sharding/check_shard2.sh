docker compose exec -T shard2 mongosh --port 27019 <<EOF
 
use somedb;
db.helloDoc.countDocuments();
exit(); 
 
 EOF