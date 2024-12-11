docker compose exec -T shard2 mongosh --port 27013 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2:27013" },
        { _id : 1, host : "shard2-rep1:27014" },
		{ _id : 2, host : "shard2-rep2:27015" }
      ]
    }
  );
exit();
EOF
