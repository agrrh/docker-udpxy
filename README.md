# Info

Udpxy is UDP-to-HTTP translator for IGMP streams.

# Usage

```
docker build --build-arg UDPXY_SRC_URL=http://www.udpxy.com/download/udpxy/udpxy-src.tar.gz \
  -t agrrh/udpxy \
  .

docker push -t agrrh/udpxy
```
