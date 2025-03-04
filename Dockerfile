# Container image that runs your code
FROM openapitools/openapi-diff

# Install Git in the container
RUN apk add --no-cache git

