## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-ruby/blob/master/Dockerfile">latest (3.0.0)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-ruby/issues">https://github.com/ngacareer/alpine-ruby/issues</a>

## What is alpine-ruby ? 

Linux lightweight, Ruby environment.

## How to use this image
- On Docker 
```
docker run -itd --name alpine-ruby ngacareer/alpine-ruby
docker exec -it alpine-ruby sh
# ruby -v
# rvm current
# gem env
 ```
- On Kubernetes
 ```
kubectl run alpine-ruby --image=ngacareer/alpine-ruby
kubectl exec -it alpine-ruby sh
# ruby -v
# rvm current
# gem env
 ```
- On OpenShift
 ```
oc run alpine-ruby --image=ngacareer/alpine-ruby
oc exec alpine-ruby  -i -t sh
# ruby -v
# rvm current
# gem env
 ```
## License

Copyright © 2021 Ngacareer

All contents licensed under the [MIT License](LICENSE)
