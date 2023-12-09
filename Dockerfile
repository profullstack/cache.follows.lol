# Use the specified base image
FROM nixos/nix

# Set an environment variable
ENV PRIMALSERVER_HOST=0.0.0.0

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the specified command when the container launches
CMD ["nix", "--extra-experimental-features", "nix-command flakes", "develop", "-c", "sh", "-c", "$start_primal_caching_service"]

# Expose the port the server is running on
EXPOSE 8801

