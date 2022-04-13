# Apache Traffic Server
Traffic Server is a high-performance building block for cloud services.  It's more than just a caching proxy server; it also has support for plugins to build large scale web applications.

![Pull Request Build](https://github.com/netlify/trafficserver/workflows/Pull%20Request%20Build/badge.svg)
![Nighlty Build](https://github.com/netlify/trafficserver/workflows/Nightly%20Build/badge.svg)

See https://trafficserver.apache.org or upstream [apache/trafficserver](https://github.com/apache/trafficserver) for more information.

# This Fork
This fork is maintained by [@netlify](https://github.com/netlify) to allow us to test patches and maintain our own ATS related code. This default branch contains only settings and this readme - you should go to the appropriate branch to view the actual code.

## Upstream tracking branches
[view upstream master branch](https://github.com/netlify/trafficserver/tree/master)

[view upstream 8.1.x branch](https://github.com/netlify/trafficserver/tree/8.1.x)

[view upstream 9.0.x branch](https://github.com/netlify/trafficserver/tree/9.0.x)

[view upstream 9.1.x branch](https://github.com/netlify/trafficserver/tree/9.1.x)

## Netlify branches
[view netlify master branch](https://github.com/netlify/trafficserver/tree/master-netlify)

[view netlify 8.1.x branch](https://github.com/netlify/trafficserver/tree/8.1.x-netlify)

[view netlify 9.0.x branch](https://github.com/netlify/trafficserver/tree/9.0.x-netlify)

[view netlify 9.1.x branch](https://github.com/netlify/trafficserver/tree/9.1.x-netlify)

# Automation Notes
This repo is automatically updated by [zxaos/patchup](https://github.com/zxaos/patchup).

While it shouldn't be necessary, you can also manually check for upstream changes by sending the repository dispatch API event with the `on-demand-check` event type:
```
curl -u username:oauth_token
     -X "POST" "https://api.github.com/repos/netlify/trafficserver/dispatches" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -d $'{ "event_type": "on-demand-check" }'
```

## Branches
Some branches directly track upstream. **if you commit to these branches, your changes will be lost**:
* master
* 8.1.x
* 9.0.x
* 9.1.x

Instead, commits should be applied to the appropriate `-netlify` branches:
* master-netlify
* 8.1.x-netlify
* 9.0.x-netlify
* 9.1.x-netlify

Commits on these branches will attepmt to be merged with upstream when possible.
