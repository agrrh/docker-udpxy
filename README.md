# Info

Udpxy is UDP-to-HTTP translator for IGMP streams.

# Usage

```bash
# Get help
docker run --rm --name udpxy-help \
  agrrh/udpxy \
  help

# Run container as daemon
# Bind to port 4022
# Renew subscription each 300 secs (i.e. 5 mins)
docker run -d --name udpxy \
  --network host \
  --restart unless-stopped \
  agrrh/udpxy \
  -T -p 4022 -M 300
```

# Build

```bash
docker build . \
  --build-arg UDPXY_SRC_URL=http://www.udpxy.com/download/udpxy/udpxy-src.tar.gz \
  -t agrrh/udpxy
docker push agrrh/udpxy
```
