#!/bin/bash
sudo groupadd docker
sudo useradd -m -G sudo,docker -s /bin/bash operator33

echo "operator33  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/operator33
sudo mkdir -p /home/operator33/.ssh
sudo touch /home/operator33/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCWuDyiQPO3/1Li6TaeUXpwpsrhc/MjLs0Kkdzxrpu0Vr1dklL1gWIPEgP+9F+bhs1BdiiBU05svGu33srDccdACxfeqFxV1RqRQXS6fG1r4FC17SqjgBOmDl6MuhSyf6OUDj0izMMh28fdziXyZIQBMbHfaXRxGHypbZKLM8QNGMt5d0P4VIUvjSt2SXDHsNycf6riUDTJffK2IyhidAMyDRVALv4Vn8QHAs6v5SIqgObujjPtM18WkGUxZtuT26vgQb/t+zeB0MM1vDcEJPRLtw5Gw3aEIvNdtMd9i7mQSeinoqVmgBZrryYq5uyqQAQMIK8HPe8RNG5+H0UCqVHs3T6hV2Vrl78PfA1aF52j4LDc++uMwccXaIu/SSkEOg6xWO0MuVukicJaPfmeeD/fENGhLxpKFINjM8FStoIe/6wvlBKsob7xumV54eVqQ7VeHqA+S17I4P/5UlzSRmOw0f7TIHF8F/24XDOZfGGk8xQK+0L7gfEyOzMHGLrJCrk= ubuntu@ip-172-31-38-213 " | sudo tee   /home/operator33/.ssh/authorized_keys
#===MAKE==DIR==FOR==FUTURE===SCP=COPY====
sudo mkdir /home/operator33/www 
sudo chown -R operator33:operator33 /home/operator33/www



