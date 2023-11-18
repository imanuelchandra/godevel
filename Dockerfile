FROM imanuelchandra/godocker:1.21.3

MAINTAINER Chandra Lefta <lefta.chandra@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1

RUN apt-get -y update
RUN apt-get install -y iproute2 procps fuse bindfs \
                       git nfs-common lsb-release

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/stamblerre/gocode@latest 2>&1 \
    #&& go build -o gocode-gomod github.com/stamblerre/gocode \
    #&& mv gocode-gomod $GOPATH/bin/ \
    # Install other tools.
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x golang.org/x/tools/gopls@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/mdempsky/gocode@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/ramya-rao-a/go-outline@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/acroca/go-symbols@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x golang.org/x/tools/cmd/guru@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x golang.org/x/tools/cmd/gorename@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/go-delve/delve/cmd/dlv@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/stamblerre/gocode@latest 2>&1 \
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x github.com/rogpeppe/godef@latest 2>&1 \
    #&& go build -o gocode-gomod github.com/stamblerre/gocode \
    #&& mv gocode-gomod $GOPATH/bin/ \
    # Install other tools.
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x golang.org/x/tools/cmd/goimports@latest 2>&1 \
    #&& go build -o gocode-gomod github.com/stamblerre/gocode \
    #&& mv gocode-gomod $GOPATH/bin/ \
    # Install other tools.
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Install Go tools.
RUN apt-get update \
    # Install gocode-gomod.
    && go env -w GO111MODULE=auto \
    && go install -x golang.org/x/lint/golint@latest 2>&1 \
    #&& go build -o gocode-gomod github.com/stamblerre/gocode \
    #&& mv gocode-gomod $GOPATH/bin/ \
    # Install other tools.
    # Clean up.
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*