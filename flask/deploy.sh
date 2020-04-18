echo "***********************************"
echo "*****Deploying the Image*********"
echo "**********************************"
docker run --name api-python1$BUILD_NUMBER -p 8081:5000 -d api:v1
echo " "
echo "Build Succeded!!"
