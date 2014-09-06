# Today I Learned Subreddit API

## What is it?
- A rails app designed with rails-api, using MongoDB for caching

## What does it do?
- Returns a random TIL fact from http://www.reddit.com/r/todayilearned/ frontpage in a form of JSON response:
```
{"til":"TIL a Californian couple sailed to one of the most remote islands in the world, expecting to find themselves alone for a year. Instead, a fugitive stole their boat and murdered them."}
```

## Usage:

- Development: make sure you have MongoDB installed and run "rails s"
- Production (Heroku): create a Heroku instance, add MongoHQ addon, set MONGOHQ_URL config var
- Request http://HOSTNAME/api/til to receive your TIL
- ... or just use http://til-api.herokuapp.com/api/til

