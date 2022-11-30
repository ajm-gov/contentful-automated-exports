from contentful_management import Client
from datetime import datetime

client = Client('your-contentful-personal-access-token')

environmentlist = client.environments('your-space-id').all()
with open('environments.txt', 'w') as f:
    for i in environmentlist:
        f.write(i.id + '\n')