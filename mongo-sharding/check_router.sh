docker compose exec -T mongos_router mongosh --port 27020 <<EOF
 
use somedb;
db.helloDoc.countDocuments();
exit(); 
 
 EOF