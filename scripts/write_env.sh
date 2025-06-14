#!/bin/bash

# Define the .env file path
ENV_FILE_PATH="src/.env"

# Clear the contents of the .env file
> $ENV_FILE_PATH

echo "AZURE_EXISTING_AIPROJECT_RESOURCE_ID=$(azd env get-value AZURE_EXISTING_AIPROJECT_RESOURCE_ID)" >> $ENV_FILE_PATH
echo "AZURE_AI_AGENT_DEPLOYMENT_NAME=$(azd env get-value AZURE_AI_AGENT_DEPLOYMENT_NAME)" >> $ENV_FILE_PATH
echo "AZURE_EXISTING_AGENT_ID=$(azd env get-value AZURE_EXISTING_AGENT_ID)" >> $ENV_FILE_PATH
echo "AZURE_TENANT_ID=$(azd env get-value AZURE_TENANT_ID)" >> $ENV_FILE_PATH
echo "AZURE_AI_SEARCH_CONNECTION_NAME=$(azd env get-value AZURE_AI_SEARCH_CONNECTION_NAME)" >> $ENV_FILE_PATH
echo "AZURE_AI_EMBED_DEPLOYMENT_NAME=$(azd env get-value AZURE_AI_EMBED_DEPLOYMENT_NAME)" >> $ENV_FILE_PATH
echo "AZURE_AI_EMBED_DIMENSIONS=$(azd env get-value AZURE_AI_EMBED_DIMENSIONS)" >> $ENV_FILE_PATH
echo "AZURE_AI_SEARCH_INDEX_NAME=$(azd env get-value AZURE_AI_SEARCH_INDEX_NAME)" >> $ENV_FILE_PATH
echo "AZURE_AI_SEARCH_ENDPOINT=$(azd env get-value AZURE_AI_SEARCH_ENDPOINT)" >> $ENV_FILE_PATH
echo "AZURE_AI_AGENT_NAME=$(azd env get-value AZURE_AI_AGENT_NAME)" >> $ENV_FILE_PATH
echo "AZURE_TENANT_ID=$(azd env get-value AZURE_TENANT_ID)" >> $ENV_FILE_PATH
echo "AZURE_EXISTING_AIPROJECT_ENDPOINT=$(azd env get-value AZURE_EXISTING_AIPROJECT_ENDPOINT)" >> $ENV_FILE_PATH
echo "ENABLE_AZURE_MONITOR_TRACING=$(azd env get-value ENABLE_AZURE_MONITOR_TRACING)" >> $ENV_FILE_PATH
echo "AZURE_TRACING_GEN_AI_CONTENT_RECORDING_ENABLED=$(azd env get-value AZURE_TRACING_GEN_AI_CONTENT_RECORDING_ENABLED)" >> $ENV_FILE_PATH


echo "Please visit web app URL:"
echo -e "\033[0;36m$(azd env get-value SERVICE_API_URI)\033[0m"

echo "Your username is:"
echo -e "\033[0;36m$(azd env get-value WEB_APP_USERNAME)\033[0m"

echo "Your password can be found in ./.azure/$(azd env get-value AZURE_ENV_NAME)/.env"

exit 0