mkdir -p repo/backend/node-service \
         repo/backend/python-service \
         repo/backend/go-service \
         repo/backend/java-service \
         repo/frontend/web-app \
         repo/infra/nginx \
         repo/infra/postgres \
         repo/infra/redis \
         repo/docs

touch repo/backend/node-service/Dockerfile repo/backend/node-service/package.json
touch repo/backend/python-service/Dockerfile repo/backend/python-service/pyproject.toml
touch repo/backend/go-service/Dockerfile repo/backend/go-service/go.mod
touch repo/backend/java-service/Dockerfile repo/backend/java-service/pom.xml
touch repo/frontend/web-app/Dockerfile repo/frontend/web-app/package.json
touch repo/infra/nginx/Dockerfile repo/infra/nginx/nginx.conf
touch repo/infra/postgres/Dockerfile
touch repo/infra/redis/Dockerfile
touch repo/docker-compose.yml repo/.editorconfig repo/.pre-commit-config.yaml repo/.gitignore repo/Makefile
touch repo/docs/SETUP.md repo/docs/WORKFLOW.md
