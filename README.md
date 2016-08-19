# keepalived

## Docker image containing Keepalived
---

Basic Docker image to run keepalived on host and set additional ip on interface

To run docker in docker you must add this options:

* --net=host
* --cap-add=NET_ADMIN
* --name keepalived0 (optionally)

You need edit (add) this env:

* **VIP**: 192.168.1.177
* **MASK**: 27
* **ROUTERID**: Router1
* **VROUTERID**: 111
* **STATE**: Master
* **INTERFACE**: eno1
* **PRIORITY**: 100
* **ADVERT**: 1
* **AUTHPASS**: blah

### Usage:
```
docker run --net=host --cap-add=NET_ADMIN -e VIP=10.50.1.234 -e MASK=27 -e ROUTERID=Router1 -e VROUTERID=112 -e STATE=Master -e INTERFACE=enp3s0f0 -e PRIORITY=100 -e ADVERT=1 -e AUTHPASS=blah --name keepalived1 -d  shenshouer/keepalived:dev 
```