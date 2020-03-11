# Apache Traffic Server
Traffic Server is a high-performance building block for cloud services.  It's more than just a caching proxy server; it also has support for plugins to build large scale web applications.

See https://trafficserver.apache.org or upstream [apache/trafficserver](https://github.com/apache/trafficserver) for more information.

# This Fork
This fork is maintained by [@netlify](https://github.com/netlify) to allow us to test patches and maintain our own ATS related code. This default branch contains only settings and this readme - you should go to the appropriate branch to view the actual code.

[view the master branch](https://github.com/netlify/trafficserver/tree/master)

[view the 7.1.x branch](https://github.com/netlify/trafficserver/tree/7.1.x)

[view the 9.0.x branch](https://github.com/netlify/trafficserver/tree/9.0.x)

# Automation Notes
This repo is automatically updated by [wei/pull](https://github.com/wei/pull).

While it shouldn't be necessary, you can also [manually check for upstream changes](https://pull.git.ci/process/netlify/trafficserver).

## Branches
Some branches directly track upstream. **if you commit to these branches, your changes will be lost**:
* master
* 7.1.x
* 9.0.x

Instead, commits should be applied to the appropriate `-netlify` branches:
* 7.1.x-netlify
* 9.0.x-netlify

Commits on these branches will attepmt to be rebased onto updated upstream when possible.
