# First stage - Use the dotnet workspace
FROM gitpod/workspace-dotnet:latest AS dotnetworkspace

# Your configurations for gitpod/workspace-dotnet image

# Second stage - Use the azure-cli
FROM mcr.microsoft.com/azure-cli AS azurecli

# Here, you can copy necessary tools or configurations from the previous stage if needed
# For example (this is just a placeholder; you need to know which files you actually want to copy):
COPY --from=dotnetworkspace /path/in/dotnetworkspace /path/in/azurecli
