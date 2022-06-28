# This file to be sourced in the terminal for development.

export WORKSPACE_DIR=$(pwd)

if [ -e /proc/cpuinfo ]; then # Linux
  WORKSPACE_BUILD_PROCS=$(grep -c ^processor /proc/cpuinfo)
elif [ $(sysctl -n hw.ncpu) ]; then # Mac
  WORKSPACE_BUILD_PROCS=$(sysctl -n hw.ncpu)
else # Other/fail
  WORKSPACE_BUILD_PROCS=4
fi
export WORKSPACE_BUILD_PROCS
export MAVEN_CONFIG="--no-transfer-progress"

bold=$(tput bold)
italic=$(tput sitm)
reset=$(tput sgr0)

orange=$(tput setaf 166)


# cd to the workspace directory
function workspace-cd {
  cd $WORKSPACE_DIR
}

# Add local npm binaries to PATH
export PATH="$PATH:$(yarn bin)"

function workspace-install {
  yarn install --frozen-lockfile
}

function workspace-lint {
  nx run-many --all --target=lint
}

function workspace-build {
  nx run-many --all --target=build
}

function workspace-test {
  nx run-many --all --target=test
}

function workspace-build-images {
  nx run-many --all --parallel --target=build-image
}

function workspace-graph {
  nx graph
}

function workspace-nx-cloud-help {
  printf "%s\n" \
    "" \
    "This workspace is not configured to use Nx Cloud. To configure it," \
    "  - Run ${bold}cp nx-cloud.env.example nx-cloud.env${reset}" \
    "  - Add Nx Cloud credentials to ${italic}nx-cloud.env${reset}"
}

function workspace-welcome {
  echo "Welcome to the Nx Spring Boot Example! 👋"

  if [ ! -d "node_modules" ]; then
    printf "%s\n" \
      "" \
      "Run ${bold}workspace-install${reset} to install workspace tools like ${bold}nx${reset}." \
      "Run this command each time ${italic}package-lock.json${reset} may have changed."
  fi

  if [ ! -f "nx-cloud.env" ]; then
    workspace-nx-cloud-help
  fi
}

function workspace-docker-stop {
  docker stop $(docker ps -q)
}

# TODO Update Docker image to use a less opiniated function name.
function challenge-initialize-env {
  workspace-welcome
}