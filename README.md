# Nx Spring Boot Example

[![GitHub CI](https://img.shields.io/github/workflow/status/tschaffter/nx-spring-boot-example/CI.svg?color=007acc&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/tschaffter/nx-spring-boot-example/actions)
[![GitHub License](https://img.shields.io/github/license/tschaffter/nx-spring-boot-example.svg?color=007acc&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/tschaffter/nx-spring-boot-example/blob/main/LICENSE)

Example of [Nx workspace] with Spring Boot apps and libraries generated using
the Nx plugin [@nxrocks/nx-spring-boot].

## Requirements

- [Docker Engine] version **18.06.0** or newer
- [Visual Studio Code] version **1.68.1** or newer (including [Compose
  V2][compose-v2])

## Usage

### Open the workspace in VS Code

Click on this badge to open the workspace in VS Code using our development
container.

[![Open in Remote - Containers](https://img.shields.io/static/v1?label=Remote%20-%20Containers&message=Open&color=blue&logo=visualstudiocode&style=for-the-badge)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/tschaffter/nx-spring-boot-example "Open in VS Code Remote - Containers")

If you plan to contribute to this project, please create a fork and use its URL
for cloning. For more information on contributing and/or our Forking Workflow
approach, see [CONTRIBUTING.md](.github/CONTRIBUTING.md).

    git clone --depth 1 <repo url>

Then open your fork repo inside our devcontainer.

### Prepare the workspace

Source `dev-env.sh`. This step can be skipped when working in the devcontainer.

    . ./dev-env.sh

Install Node.js packages (after source):

    workspace-install

### Start the user service

    nx serve awesome-user-service

This command:

- builds the shared library `libs/shared/util`
- installs the shared library so that it is visible to the user service
  (`app/awesome-user-service`)
- builds the user service
- serves the user service

## License

[Apache License 2.0]

<!-- Links -->

[Nx workspace]: https://nx.dev/
[Apache License 2.0]: LICENSE.txt
[@nxrocks/nx-spring-boot]: https://github.com/tinesoft/nxrocks/tree/develop/packages/nx-spring-boot