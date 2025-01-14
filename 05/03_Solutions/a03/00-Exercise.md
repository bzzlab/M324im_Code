### Exercise 3: Pipeline with conditions
###  Prerequisite
1. Your AWS EC2 instance is started with the private shared
AMI ```bzz-ami```.
1. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
2. You have a running container ```jenkins_dind```
3. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
4. You have set up your personal public repo from exercise ```05\02_Exercises\a00```.
5. Previous exercises has been finished successfully.

[NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
### Tasks
1. Read at least chapter 2.2. in the article on [How to Use Conditional Constructs in Jenkins Pipeline](https://www.baeldung.com/linux/jenkins-conditional-constructs).
2. Optimize the stage 'Install jest-cli' with the bash code based on the following pseudocode:
```
set variable to install jest-cli package
if variable not empty then
    write corresponding message 
    install jest-cli
    if error code not 0 then
      write failure message
    fi
else 
    write message is already installed
end
```    
With command below you can determine if the package is installed.
```
npm ls -g -p |grep jest-cli
```
3. Update the Jenkins file and your repo with it.
4. Build and check the updated pipeline.

