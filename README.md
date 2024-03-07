# Deploy Atlassian Jira with Self-Signed Certificates, HAProxy, PostgreSQL, and Docker Compose

This repository provides a comprehensive solution to deploy Atlassian Jira with self-signed certificates, HAProxy for load balancing, and PostgreSQL as the database. The deployment is orchestrated using Docker Compose, showcasing effective DevOps practices for a seamless setup.

## Assignment Information

### Overview

This project demonstrates the deployment of Atlassian Jira, HAProxy, and PostgreSQL using Docker Compose. It includes a PostgreSQL initialization script, HAProxy configuration, and a Docker Compose YAML file for orchestrating the entire stack.

### Components

1.  **PostgreSQL Initialization Script (`postgre-db-init.sql`):**
    
    -   Creates a database named `jiradb` with specified encoding and locale.
    -   Defines a role named `jira_role` and grants all privileges on the database to this role.
2.  **HAProxy Configuration (`haproxy.cfg`):**
    
    -   Configures global settings such as logging, user, and daemon mode.
    -   Defines SSL settings and ciphers for secure communication.
    -   Sets up HAProxy to listen on ports 9001 (stats) and 9090 (frontend) with SSL termination.
    -   Routes traffic to the backend based on the host header and sets necessary headers for communication.
3.  **Docker Compose File (`docker-compose.yml`):**
    
    -   Defines three services: `node1` (Atlassian Jira), `proxy` (HAProxy), and `database` (PostgreSQL).
    -   Configures volumes for persistent data and mounts necessary files.
    -   Specifies environment variables for Atlassian Jira and PostgreSQL.

## Prerequisites

Before getting started, ensure the following prerequisites are met:

-   Docker: Install Docker
-   Docker Compose: Install Docker Compose

## Getting Started

1.  Clone this repository to your local machine:
    
    bashCopy code
    
    `git clone https://github.com/your-username/your-repo.git
    cd your-repo` 
    
2.  Customize the configuration files as needed:
    
    -   Modify the `.env` file in the project root for environment variables.
    -   Update the PostgreSQL initialization script (`postgre-db-init.sql`) if necessary.
    -   Adjust the HAProxy configuration (`haproxy.cfg`) to suit your requirements.
3.  Generate self-signed certificates:
    
    bashCopy code
    
    `./generate-certs.sh` 
    
4.  Start the deployment:
    
    bashCopy code
    
    `docker-compose up -d` 
    
5.  Access Atlassian Jira via your browser:
    
    plaintextCopy code
    
    `https://your-domain-or-ip` 
    

## Configuration and Customization

### Environment Variables (.env)

-   `JIRA_VERSION`: The version of Atlassian Jira to deploy.
-   `JIRA_HOME`: The directory to store Jira home data.
-   `JIRA_DB_NAME`, `JIRA_DB_USER`, `JIRA_DB_PASSWORD`: PostgreSQL database configuration for Jira.
-   `HA_PROXY_STATS_PORT`: Port for HAProxy statistics.

### Customizing Atlassian Jira and HAProxy

-   Modify the `docker-compose.yml` file and update relevant sections to customize Atlassian Jira.
-   Adjust the `haproxy.cfg` file to further customize HAProxy settings.

## Security Considerations

-   **Self-Signed Certificates:** For production, replace self-signed certificates with valid SSL certificates from a trusted CA.
-   **Database Credentials:** Use strong and secure passwords for the PostgreSQL database.

## License

This project is licensed under the MIT License.

## Acknowledgments

-   Atlassian Jira
-   [HAProxy](http://www.haproxy.org/)
-   [PostgreSQL](https://www.postgresql.org/)

Feel free to contribute or report issues!
