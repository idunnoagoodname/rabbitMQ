FROM gitpod/workspace-full

# Install RabbitMQ and its dependencies
RUN sudo apt-get update && \
    sudo apt-get install -y rabbitmq-server && \
    sudo rm -rf /var/lib/apt/lists/*

# Enable the RabbitMQ management plugin
RUN sudo rabbitmq-plugins enable rabbitmq_management
