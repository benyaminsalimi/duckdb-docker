FROM ubuntu:latest
# ----⚠️ Its Not an offical image ⚠️----

ARG DUCKDB_VERSION=latest

# install Curl
RUN apt-get update && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /root

# Copy the installation script into the container
COPY install_duckdb.sh .
# Make the script executable
RUN chmod +x install_duckdb.sh
# install DuckDB
RUN ./install_duckdb.sh ${DUCKDB_VERSION}

# Add the DuckDB binary to the PATH
ENV PATH="/root/.duckdb/cli/latest:$PATH"

CMD ["duckdb"]