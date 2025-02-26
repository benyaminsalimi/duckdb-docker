# Docker image for DuckDB CLI

## Build

```bash
docker build . -t duckdb-cli:1.2.0  --build-arg DUCKDB_VERSION=1.2.0
```

### build latest version

```bash
docker build . -t duckdb-cli:latest
```
## run

```bash
docker run -it -v /path/to/your-dataset:/datasets/ --name duckdb-cli --rm duckdb-cli:1.2.0
```
