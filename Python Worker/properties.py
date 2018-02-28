import json

file = open('config.json', 'r')
properties = json.load(file)
file.close()

class Properties:
    global properties
        
    def getClient():
        return properties['client']

    def getSecret():
        return properties['secret']
    
