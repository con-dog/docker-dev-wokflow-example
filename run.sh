#!/bin/bash

# Parse script options
while getopts "e:" opt; do
      case $opt in
            e) ENVIRONMENT_ARG="$OPTARG" ;;
            *)
            exit 1
      esac
done

# Catch none option arguments
if [[ -n ${1} && -z ${2} ]]
then
      echo "${1}" "${2}"
      printf "Error: build.sh does not support non-option arguments\n\n"
      printf "Please use -e for environment type\n"
      exit 1
fi

if  [ -z "$ENVIRONMENT_ARG" ]
then
      printf "You MUST specify an environment type with the '-e' flag\n"
      exit 1
elif [ "$ENVIRONMENT_ARG" == "development" ]
then
      printf "Building for development...\n"
      docker compose -f compose.dev.yml build
      docker compose -f compose.dev.yml up
elif [ "$ENVIRONMENT_ARG" == "production" ]
then
      printf "Building for production...\n"
      docker compose -f compose.yml build
      docker compose -f compose.yml up
else
      printf 'Error: %s does not exist as a build\n' "$ENVIRONMENT_ARG"
      exit 1
fi
