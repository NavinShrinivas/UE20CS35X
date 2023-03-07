# Cloud Computing Assignment 3

## Details : 
- Name : P K Navin Shrinivas
- SRN : PES2UG20CS237
- Section : D
## Task 1 : 
- Create the S3 bucket with `reportbucketSRN` as the name [1a] : 
![[Pasted image 20230307220507.png]]
![[Pasted image 20230307220535.png]]
- After uploading `new-report.jpg` try accessing the image (from the link in the object console), access should be denied [1b]
![[Pasted image 20230307220820.png]]
- After changin `object ownership` and `bucket setting` to allow to access throughg `ACL`, when we try accessing the same link [1c]
![[Pasted image 20230307221402.png]]
- Now we enter our already running EC2 instance using `session manager` and use the `aws s3` binary to access the bucket. When we try uploading a file to the bucket [1d]
![[Pasted image 20230307222317.png]]
- Let's go back and upload `sample-file.txt`, Now when we try accessing the file, we are denied permissions...hence we need to get s3 to change permissions (A common ACL) for all objects together [1e] 
![[Pasted image 20230307222621.png]]- We can use IAM to make this happen, let's first copy our `ARN` from EC2InstancePorfileRole (this is the role EC uses to access s3 objects) :`arn:aws:iam::438965201338:role/EC2InstanceProfileRole`. We can also make note of the bucket ARN present in bucket policy : `arn:aws:s3:::reportbucketpes2ug20cs237`.
- let's now create the policies using `policy generator` : 
- ARN is going to be `s3arn/*` and principal is going to be EC2 role ARN. Click on generate policy copy the config and paste in bucket policy! 
- Now we can upload objects from EC2 instance : 
![[Pasted image 20230307223700.png]]
- To give access to the browser, we need to add another bucket policy, hence use the same `policy generator` and principal as * and allow everything. Now when we go access the same website for `sample-file.txt`, we get this [1f] ![[Pasted image 20230307224033.png]]
## Task 2 : Serving a site using S3 
- Create a new S3 service with public access while creating itself, now move to S3 setting and scroll down to website hosting. Manually enter all the defaults and save [1a]
![[Pasted image 20230307225504.png]]
- Although opening that link gives us an 403 [2b] 
![[Pasted image 20230307225535.png]]
- To solve this, let's uplad the files that s3 should serve as objects [2c] 
![[Pasted image 20230307225748.png]]
- This still gives us 403 as the objects are private, we can select all three and make then `public using ACL`!
- And now we get this [2d] 
![[Pasted image 20230307225947.png]]
- Now we can edit the file locally and upload again, it replace the old name with the same name. We now make it public again and refreshing gives us [2e]
![[Pasted image 20230307230314.png]]
<hr>
<center>-----END OF LAB-----</center>