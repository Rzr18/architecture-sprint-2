docker compose exec -T shard1 mongosh --port 27010 <<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard1:27010" },
        { _id : 1, host : "shard1-rep1:27011" },
		{ _id : 2, host : "shard1-rep2:27012" }
      ]
    }
);
exit();
EOF
