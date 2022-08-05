# artifact-registry-yum-proxy

## Steps to reproduce proxy error

1. `git clone git@github.com/ziraldo-oanda/artifact-registry-yum-proxy.git`
1. Fill in GAR repo info in yum-repo.repo
1. Fill in service account json key in gar-service-account.json
1. Build the docker container:
    1. `docker build -t gar-repo-test-proxy .`
1. Run docker compose to test:
    1. `docker compose up`
