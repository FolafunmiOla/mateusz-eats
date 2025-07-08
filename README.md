# Tiwtiwa-Delivery

Always on the road to satisfy your craving whenever you need it!

## Deploy

```sh
gcloud domains verify mateusz-eats.tech

gcloud builds submit \
  --tag gcr.io/zippy-cab-252712/mateusz-eats

gcloud beta run deploy \
  --image gcr.io/zippy-cab-252712/mateusz-eats \
  --platform managed

gcloud beta run domain-mappings create \
  --service mateusz-eats \
  --domain mateusz-eats.tech \
  --platform managed

```
