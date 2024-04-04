#!/bin/sh

# Load specific env file
if [ -e .env ]; then
    source ".env"
else
    echo "Please set up your .env file before starting your environment."
    exit 1
fi

echo "La valeur de APP_NAME est : $APP_NAME"

if [ ! -d "$APP_NAME" ]; then
  echo "Initializing the Angular project in the folder $APP_NAME..."
  ng new $APP_NAME --defaults --directory=./$APP_NAME --skip-git=true

  cd ${APP_NAME}

  echo "Installing additional dependencies..."
  npm install
else
  echo "The $APP_NAME project is already initialized."
fi

exec "$@"
