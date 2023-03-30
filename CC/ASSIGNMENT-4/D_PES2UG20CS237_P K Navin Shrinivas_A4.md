## Cloud Lab Assignment-4 | Apache Zookeeper 
## Details 
- SRN : PES2UG20CS237
- Name : P K Navin Shrinivas 
- Section : D
## Lab Deliverables 
### Task 1 : Installing Zookeeper 
- We first download the zookeeper tar and do the following : 
```bash
$ wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz
$ tar zxf apache-zookeeper-3.8.0-bin.tar.gz 
```
- Copy the extracted folder to the `/opt` folder.
```bash
$ sudo cp -r apache-zookeeper-3.8.0-bin /opt
$ cd /opt/apache-zookeeper-3.8.0-bin
```
- Create a new conf file in called zoo.cfg in te `conf` folder. With the following content : 
```
tickTime = 2000
dataDir = /opt/apache-zookeeper-3.8.0-bin/data
clientPort = 2181
initLimit = 5
syncLimit = 2
```
- We now start the server [1a] : 
```bash
$ sudo ./bin/zkServer.sh start
```
 > Note : You can use start-foreground to see error/detailed logs. 
 
![[Pasted image 20230323220250.png]]
- you can connect to the `CLI` and `stop` the serviec using the scripts in the `/bin` folder.

### Task 2 : Getting familiar with zookeeper CLI
- Connect to the cli using the zkCLI.sh shell script. 
- We can not create Znode, these are Zookeeper server that serve the clients (servers for the application). These Znodes can be specific to a session or permanenetly part of the Zookeeper service. 
- Session based temporary ones are called ephemeral nodes. 
- We now create few nodes the observe this behavoiur : 
```
create -s /PES2UG20CS237_seq “a sequential node”
create -e /PES2UG20CS237_eph “an ephemeral node"
```
- we can now see nodes `ls /` [2a]
![[Pasted image 20230323222111.png]]
- If we quit zookeeper and return back after a while (enough for zookeeper to miss a ping from the client then se eph node will close). [2b] :
![[Pasted image 20230323222430.png]]
- we can also change the data and get the data set in the znodes : 
![[Pasted image 20230323222556.png]]
- Znode can have children, only those of permanent can have children [2d].
![[Pasted image 20230323222716.png]]
- You can also delete nodes using `delete` or `rmr`. 
### Task 3 : leader election using Zookeeper. 
- By default, the sequential node (permanenet node) is the leader of the ensemble (ensemble is a buch of zookeeper nodes). 
- Each "greater sequence" znode keeps a `watch` on the previous node. Hence the node is informed when the the previous smaller node fails. This is nowhere near foolproof. 
- As for the lab requirement, you can open up a tmux session to notice many nodes at the same time. 
- Follow the document to create a root persistent node and a bunch of `eph` nodes for each client [3a] : 
![[Pasted image 20230323223551.png]]
- Now killing of nodes one by one should cause the chain to detect the failures and become the leader [3b] : 
![[Pasted image 20230323224132.png]]
- But in a event the old node comes back alone, it does not get the initial eph znode it had, it gets a new eph node under the root znode, this is to ensure there are no 2 leader in the system [3c] : 
![[Pasted image 20230323224320.png]]