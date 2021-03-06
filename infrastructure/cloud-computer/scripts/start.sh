# Export cloud computer shell environment
eval "$(yarn environment)"

# Bootstrap the cloud computer host
yarn bootstrap:remote-host

# Deploy the cloud computer containers
yarn --cwd ../docker-compose up
