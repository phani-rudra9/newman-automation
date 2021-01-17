REPOSITORY_URI=971076122335.dkr.ecr.ap-south-1.amazonaws.com/sample
DOCKER_LOGIN_PASSWORD=$(aws ecr get-login-password  --region ap-south-1)
echo $DOCKER_LOGIN_PASSWORD
docker login -u AWS --password-stdin $DOCKER_LOGIN_PASSWORD https://971076122335.dkr.ecr.ap-south-1.amazonaws.com
