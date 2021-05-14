Need to also install additional Jenkins plugin called Parameterized Trigger Plugin


When creating the Jenkins job add the following to Build -> Execute Shell


Git repository: https://github.com/feathrex/docker-demo.git

docker build -t 174745938401.dkr.ecr.us-west-2.amazonaws.com/myapp:${GIT_COMMIT} .
eval "${aws ecr get-login-password --region us-west-1}"
docker push 174745938401.dkr.ecr.us-west-2.amazonaws.com/myapp:${GIT_COMMIT}


For second Jenkins Job use

Git repository: https://github.com/feathrex/terraform-course.git
Click on 'This project is paramertized.
  Click on String Parameter
    Name field add: MYAPP_VERSION

In Build -> execute shell add the following:

cd docker-demo-3/
scripts/configure-remote-state.sh
touch mykey mykey.pub
terraform apply -target aws_ecs_service.myapp-service -var MYAPP_SERVICE_ENABLE="1" -var MYAPP_VERSION=${MYAPP_VERSION}


After second job is created need to update first jenkins job and add a Post-build Action

Select Trigger Paramertized build on another project
  Projects to build: docker-demo-deploy
  Trigger when build is: stable

  Select Predefined Parameter
  add: MYAPP_VERSION=${GIT_COMMIT}


To kick off select docker-demo and select 'build now'
