from retrieve import Retrieve
from properties import Properties

client_id = Properties.getClient()
client_secret = Properties.getSecret()

Retrieve.getUser('edenskull', Retrieve.getToken(), client_id, client_secret)
