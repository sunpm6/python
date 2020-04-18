echo "*********************************"
echo "*****Building the Image*********"
echo "********************************"
cd flask
docker build -t api:v1 .
echo " "
curl -X POST --data-urlencode "payload={\"channel\": \"#alerts-grafana\", \"username\": \"sunil-api\", \"text\": \"Docker build Successfull image=api:v1.\n $ac \", \"icon_emoji\": \":fire:\"}" https://hooks.slack.com/services/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
echo "Build Succeded!!"
