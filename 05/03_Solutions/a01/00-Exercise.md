### Exercise 1: Pipeline in Jenkinsfile
###  Prerequisite
1. Your AWS EC2 instance is started with the private shared
AMI ```bzz-ami```.
1. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
2. You have a running container ```jenkins_dind```
3. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
4. You have set up your personal public repo from exercise ```05\02_Exercises\a00```.
5. Previous exercises has been finished successfully.
### Tasks
1. Create a personal repository with the contents of ```a00-repo```.
2. Fill the missing steps in the Jenkins file "Jenkinsfile1".
3. Test the Jenkins file in a standard-pipeline (Copy&Paste content of the file).  
4. If step 3. works successfully then set up an SCM (Source code management)-pipeline in order 
to execute pipeline steps stored in the Jenkins file.
5. Build and check the new pipeline.
