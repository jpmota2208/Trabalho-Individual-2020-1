#!/bin/bash
set -e

if [ "$NODE_ENV" = "build" ]
then
    yarn build
elif [ "$NODE_ENV" = "test" ]
then
    yarn test:unit
elif [ "$NODE_ENV" = "dev" ]
then
    yarn dev
else
    echo "Unknown NODE_ENV value..."
    yarn serve
fi