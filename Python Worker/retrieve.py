import requests
from urllib.parse import quote
import json

class Retrieve:
    
    def getUser(username, token, client_id, client_secret):
        query = "https://api.twitch.tv/kraken/users?login=" + quote(str(username), safe='')
        auth = 'OAuth ' + str(token)
        header = { 'Accept': 'application/vnd.twitchtv.v5+json',
                    'Authorization': auth}
        print(header)
        r = requests.get(query, headers=header)
        if(r.status_code == 401 or r.status_code == 403):
            Retrieve.refreshToken(client_id, client_secret)
            auth = 'OAuth ' + str(token)
            headers = { 'Accept': 'application/vnd.twitchtv.v5+json',
                        'Authorization': auth}
            r = requests.get(query, headers=header)
            if(r.status_code == 404):
                print("user not found")
            elif(r.status_code == 200):
                print(r.text)
        elif(r.status_code == 404):
            print("user not found")
        elif(r.status_code == 200):
            print(r.text)

    def createToken(client_id, client_secret):
        query = "https://api.twitch.tv/kraken/oauth2/token?client_id=" + str(client_id)
        query += "&client_secret=" + str(client_secret) + "&grant_type=client_credentials"
        query += "&scope=user_read channel_read"
        r = requests.post(query).text
        tokenfile = Retrieve.openTokenFileW()
        tokenfile.write(r)
        tokenfile.close()
        return Retrieve.getToken()

    def getToken():
        tokenfile = json.load(Retrieve.openTokenFileR())
        return tokenfile['access_token']
        
    def openTokenFileW():
        return open('token.json', 'w')

    def openTokenFileR():
        return open('token.json', 'r')

    def refreshToken(client_id, client_secret):
        query = "https://api.twitch.tv/kraken/oauth2/revoke?client_id=" + str(client_id)
        query += "&token=" + Retrieve.getToken()
        r = requests.post(query)
        Retrieve.createToken(client_id, client_secret)

    
