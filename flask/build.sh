echo "*********************************"
echo "*****Building the Image*********"
echo "********************************"
cd flask
docker build -t api:v1 .
echo " "
echo "Build Succeded!!"
