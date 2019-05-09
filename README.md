# Cloud Computer

Repeatable. Reliable. Infinitely Scalable.

The cloud computer is a one click deploy computer accessible through any web browser. It is composed of cloud native technologies, enabling infinite compute scale and 100% infrastructure as code.

## Getting Started

The cloud computer requires zero human interaction to deploy once cloud access configuration is supplied.

1. Supply your cloud provider and domain name [configuration](#configuration).

2. Run `yarn create:cloud-computer`.

3. Open `https://terminal.your-domain.com` to access the terminal user interface or `https://desktop.your-domain.com` to access the desktop environment.

## Configuration

To deploy the cloud computer you will need to provide two pieces of [user specific configuration](infrastructure/cloud-computer/scripts/environment.sh).

The cloud computer is hosted in the public cloud. This requires a [cloud provider project](infrastructure/cloud-computer/scripts/environment.sh#L4) and [credentials](infrastructure/credentials/cloud-provider.json) for creating cloud resources. Currently only Google Cloud Platform is supported.

The cloud computer is accessible via a URL. This requires a [domain name](infrastructure/cloud-computer/scripts/environment.sh#L14) and [credentials](infrastructure/credentials/scripts/environment.sh#L6) for configuring DNS. Currently only CloudFlare is supported.

## Technologies

The cloud computer is built on 100% open source technologies.

- [Caddy](https://github.com/mholt/caddy)
- [Docker](https://github.com/docker/docker-ce)
- [Git](https://github.com/git/git)
- [GoTTY](https://github.com/yudai/gotty)
- [Grafana](https://github.com/grafana/grafana)
- [Istio](https://github.com/istio/istio)
- [Jaeger](https://github.com/jaegertracing/jaeger)
- [Let's Encrypt](https://github.com/letsencrypt)
- [Packer](https://github.com/hashicorp/packer)
- [Prometheus](https://github.com/prometheus/prometheus)
- [Terraform](https://github.com/hashicorp/terraform)
- [Tmux](https://github.com/tmux/tmux)
- [TypeScript](https://github.com/Microsoft/TypeScript)
- [VS Code](https://github.com/codercom/code-server)
- [Xephyr](https://www.freedesktop.org/wiki/Software/Xephyr)
- [Xpra](https://github.com/svn2github/Xpra)
- [Yarn](https://github.com/cloud-computer/yarn)
- [Zsh](https://github.com/zsh-users/zsh)

### Why Yarn?

Yarn is the package manager for the web. It is also a task runner. It could be seen as overkill to use Yarn instead of shell scripts to automate the cloud computer operations. Yarn was chosen for its ability to leverage open source utilities in the JavaScript ecosystem, and for the modular structure it imposes using `package.json` files. These features solve two of the greatest pain points experienced in modern web development; frictionless reuse of open source code, and a maintainable project structure that can be navigated and automated programmatically.

Using Yarn creates a single point of entry for all automated operations. This single point of entry greatly simplifies tracing of cloud computer operations. To provide visibility on these operations, Jaeger visualizes OpenTracing data captured using the shim in `@cloud-computer/yarn-shim`. A Screenshot of trace output is below.

## Screenshots

![Desktop](https://user-images.githubusercontent.com/1094600/56347945-c2dc7900-6208-11e9-8ed2-0bbff2fee6a8.png)
![Terminal](https://user-images.githubusercontent.com/1094600/56299607-b2c88900-6177-11e9-912b-40ea25d690e3.png)
![Jaeger](https://raw.githubusercontent.com/kawing-ho/kawing-ho.github.io/master/assets/images/startup-yarn-2.png)
