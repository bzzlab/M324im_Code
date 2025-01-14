### Exercise 2: Variable in the Pipeline
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
1. Replace in "Jenkinsfile1" the container name with an appropriate variable (BASH syntax) and 
initialize it in the environment section.
2. Update your repo with it.
3. Build and check the updated pipeline.
