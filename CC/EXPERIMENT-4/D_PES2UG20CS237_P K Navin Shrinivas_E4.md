## Details :
- Name : P K Navin Shriniva
- Section : D
- SRN : PES2UG20CS237
## Task 1 :
- Installing pyenv and changing to 3.8.11 (3.6.8 gave errors) :
![[CC/EXPERIMENT-4/1a.png]]
## Task 2 : 
- First we start all the nodes with tails running on the right side. nodes running on the left side (The errors seen in node 2 are simply future/promise error, the node is still very much alive). [2a].
![[CC/EXPERIMENT-4/2a.png]] 
- We can see the first node elected as the leader!
- Next we stop the node that is currently elected as the leader, this will get the any one of the other node to run out on its timer. This gets the 3rd node to become a candidate and elect itself as the leader. We also see the second value being replicated [2b]
- Now we can start the old leader which was intentionally killed off, on seeing a higher term from a new leader, it immediately falls back to follower mode and replicates the new log entries (If the log is very old and wrong in theory the leader should have enter a `log rebuilding phase` where is gradually rolls back its `latest index posistion` usinf appendRPC calls). [2c]
![[2c.png]]![[2b1.png]]