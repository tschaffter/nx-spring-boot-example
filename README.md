

# Nx Spring Boot Example

Example of [Nx workspace] with Spring Boot apps and libraries

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

### Start the user service

```console
yarn nx serve awesome-user-service
```

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