# Use a base image with required dependencies
FROM ubuntu:latest

# Install Ansible and dependencies
RUN apt-get update && \
    apt-get install -y \
    ansible \
    openssl \
    clamav \
    fail2ban \
    rsync \
    openssh-client \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root/CPE243_FINALS

# Copy Ansible playbook and inventory file
COPY playbook.yaml ./playbook.yaml
COPY inventory ./inventory

# Copy SSH key and configure known hosts
COPY .ssh/id_rsa /root/.ssh/id_rsa
COPY .ssh/id_rsa.pub /root/.ssh/id_rsa.pub
RUN chmod 600 /root/.ssh/id_rsa && \
    echo "Host 192.168.56.108" >> /root/.ssh/config && \
    echo "    StrictHostKeyChecking no" >> /root/.ssh/config

# Run the playbook
CMD ["ansible-playbook", "./playbook.yaml", "-i", "./inventory"]
