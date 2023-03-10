# This file is generated by Nx.
#
# Build the docker image with `npx nx docker-build pfm`.
# Tip: Modify "docker-build" options in project.json to change docker build args.
#
# Run the container with `docker run -p 3000:3000 -t pfm`.
FROM docker.io/node:lts-alpine

ENV HOST=0.0.0.0
ENV PORT=3000

WORKDIR /app

RUN addgroup --system pfm && \
          adduser --system -G pfm pfm

COPY dist/pfm pfm
RUN chown -R pfm:pfm .

CMD [ "node", "pfm" ]
