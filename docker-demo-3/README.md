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
