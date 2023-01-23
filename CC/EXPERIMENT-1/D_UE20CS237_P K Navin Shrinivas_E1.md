# Cloud Computing Lab-1
## Details : 
- SRN : PES2UG20CS237
- Name : P K Navin Shrinivas
- Section : D

## Step-1 : Create account 
![LOGIN IMAGE](CC/EXPERIMENT-1/1.png)

## Step-2 : Create EC2 Instance
- Starting lab : 
![starting lab](2.png)
- Summary before lauching instance : 
![Summary image](3.png)
- Success image after deployment : 
![Post deployment image](4.png)
- EC2 instance details in running state : 
> Note the IP address instance name and it's size "t2.micro" 
![EC2 instance info](5.png)
- Opening up the ip address (in non secure `http`)
> Note : During creation of instance, all inbound rules were accepted. Hence without any changes to network config after deplyment, the website works!

![Website being serveed in the server in port 80](6.png)
- Monitoring : 
> AWS in free tier gives 5 minute granularity monitoring. 

![Monitoring console](7.png)
- Logs and Screenshots of the instance 
> Note : these data can be captured from the AWS console itself.

![Logs](8.png)
![Screenshot](9.png)
- Remote desktop : 
> The user using the IAM group's given during deployment can remote into the instance through the web console using a tool called "Fleet manager"

![Fleet manager remote desktop](10.png)
- Stopping the instance for resizing 
![Stopped instance](11.png)
- The instance after resizing 
> Note : Do observe that the `t2.micro` has now been changed to `t2.nano`. The instance IP address and name remains the same.

![t2.nano instance](12.png)
