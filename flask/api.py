
from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)

api = Api(app)

class HelloWorld(Resource):

    def get(self):
        return {'name':'sunil','place':'coorg','Country':'India'}

api.add_resource(HelloWorld,'/')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8082, debug=True)
