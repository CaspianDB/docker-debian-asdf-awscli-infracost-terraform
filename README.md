# debian-asdf-awscli-infracost-terraform

[![GitHub](https://img.shields.io/github/v/tag/caspiandb/docker-debian-asdf-awscli-infracost-terraform?label=GitHub)](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform)
[![CI](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform/actions/workflows/ci.yaml/badge.svg)](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform/actions/workflows/ci.yaml)
[![Lint](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform/actions/workflows/lint.yaml/badge.svg)](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform/actions/workflows/lint.yaml)
[![Docker Image Version](https://img.shields.io/docker/v/caspiandb/debian-asdf-awscli-infracost-terraform/latest?label=docker&logo=docker)](https://hub.docker.com/r/caspiandb/debian-asdf-awscli-infracost-terraform)

Container image with:

- [aws-cli](https://github.com/aws/aws-cli)
- [Infracost](https://github.com/infracost/infracost)
- [Terraform](https://github.com/hashicorp/terraform)

Additional Debian packages:

- [bzip2](https://packages.debian.org/bullseye/bzip2)
- [groff-base](https://packages.debian.org/bullseye/groff-base)
- [jq](https://packages.debian.org/bullseye/jq)
- [pv](https://packages.debian.org/bullseye/pv)
- [xz-utils](https://packages.debian.org/bullseye/xz-utils)

Additional tools:

- [tf](https://github.com/dex4er/tf)

## Tags

- `bullseye-YYYYmmdd-awscli-X.Y.Z-infracost-X.Y.Z-terraform-X.Y.Z`, `latest`

## Usage

CLI:

```shell
docker pull caspiandb/debian-asdf-awscli-infracost-terraform
docker run -v ~/.aws:/root/.aws -e AWS_PROFILE caspiandb/debian-asdf-awscli-infracost-terraform aws sts get-caller-identity
```

Dockerfile:

```Dockerfile
FROM caspiandb/debian-asdf-awscli-infracost-terraform:latest
RUN aws --version
RUN infracost --version
RUN terraform --version
```

## License

[License information](https://github.com/asdf-vm/asdf/blob/master/LICENSE) for
[asdf](https://asdf-vm.com/) project.

[License information](https://github.com/aws/aws-cli/blob/develop/LICENSE.txt)
for [aws-cli](https://github.com/aws/aws-cli) project.

[License
information](https://github.com/infracost/infracost/blob/master/LICENSE) for
[Infracost](https://github.com/infracost/infracost) project.

[License
information](https://github.com/hashicorp/terraform/blob/main/LICENSE) for
[Terraform](https://github.com/hashicorp/terraform) project.

[License
information](https://github.com/dex4er/tf/blob/main/LICENSE) for
[tf](https://github.com/dex4er/tf) project.

[License
information](https://github.com/caspiandb/docker-debian-asdf-awscli-infracost-terraform/blob/main/LICENSE) for
container image project.
