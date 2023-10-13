# POC of docker overlay2 leak

This is a POC repo showing https://github.com/moby/moby/issues/46136

Start by running this:

```
./test-build.sh

docker images -q | xargs docker rmi

docker builder prune -f
docker system prune -f
```

After this /var/lib/docker/overlay2 should be empty again, but there are dangling diffs.
