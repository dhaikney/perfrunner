[clusters]
fts = 172.23.123.38:8091,kv,fts


[clients]
hosts =
    172.23.123.40
credentials = root:couchbase

[storage]
data=/opt/couchbase/data
index=/opt/couchbase/data

[credentials]
rest = Administrator:password
ssh = root:couchbase

[parameters]
Platform = HW
OS = CentOS 6.5
CPU = X5650 (24 vCPU)
Memory = 128 GB
Disk = SSD