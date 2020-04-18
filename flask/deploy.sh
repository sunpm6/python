echo "***********************************"
echo "*****Deploying the Image*********"
echo "**********************************"
docker run --name api-python1$BUILD_NUMBER -p 8081:8082 -d api:v1
echo " "
curl -X POST --data-urlencode "payload={\"channel\": \"#alerts-grafana\", \"username\": \"sunil-api\", \"text\": \"Conatiner running api-python$BUILD_NUMBER.\n $ac \", \"icon_emoji\": \":fire:\"}" https://hooks.slack.com/services/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
echo "Build Succeded!!"
