# syntax = docker/dockerfile:1

# Use Node 20.16 alpine as base image
FROM node:20.16-alpine3.19 AS base

# Node.js app lives here
WORKDIR /build

# Install pnpm
ARG PNPM_VERSION=9.12.0
RUN npm install -g pnpm@$PNPM_VERSION

# Install production dependencies and clean the cache
COPY package.json pnpm-lock.yaml .
RUN pnpm install --frozen-lockfile && pnpm store prune

# Copy application code
COPY . .

# Start the server by default, this can be overwritten at runtime
EXPOSE 5000
CMD ["node", "src/server.js"]