CREATE DATABASE jiradb WITH ENCODING 'UNICODE' LC_COLLATE 'C' LC_CTYPE 'C' TEMPLATE template0;

-- Connect to the database
\c jiradb;

-- Create role if not exists
CREATE ROLE jira_role;

-- Grant all privileges to the role on the database
GRANT ALL PRIVILEGES ON DATABASE jiradb TO jira_role;

-- Verify privileges
\z

-- Verify Users
\du
