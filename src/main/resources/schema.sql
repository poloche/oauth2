
DROP TABLE IF EXISTS oauth_client_token;
CREATE TABLE oauth_client_token (
  token_id          VARCHAR(255),
  token             BYTEA,
  authentication_id VARCHAR(255),
  user_name         VARCHAR(255),
  client_id         VARCHAR(255)
);
DROP TABLE IF EXISTS oauth_client_details;
CREATE TABLE oauth_client_details (
  client_id               VARCHAR(255) NOT NULL,
  resource_ids            VARCHAR(255) DEFAULT NULL,
  client_secret           VARCHAR(255) DEFAULT NULL,
  scope                   VARCHAR(255) DEFAULT NULL,
  authorized_grant_types  VARCHAR(255) DEFAULT NULL,
  web_server_redirect_uri VARCHAR(255) DEFAULT NULL,
  authorities             VARCHAR(255) DEFAULT NULL,
  access_token_validity   INTEGER  DEFAULT NULL,
  refresh_token_validity  INTEGER  DEFAULT NULL,
  additional_information  VARCHAR(255) DEFAULT NULL,
  autoapprove             VARCHAR(255) DEFAULT NULL
);
DROP TABLE IF EXISTS oauth_access_token;
CREATE TABLE oauth_access_token (
  token_id          VARCHAR(255),
  token             BYTEA,
  authentication_id VARCHAR(255),
  user_name         VARCHAR(255),
  client_id         VARCHAR(255),
  authentication    BYTEA,
  refresh_token     VARCHAR(255)
);
DROP TABLE IF EXISTS oauth_refresh_token;
CREATE TABLE oauth_refresh_token (
  token_id       VARCHAR(255),
  token          BYTEA,
  authentication BYTEA
);
DROP TABLE IF EXISTS authority;
CREATE TABLE authority (
  id        INTEGER,
  authority VARCHAR(255),
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS credentials;

CREATE TABLE credentials (
  id       INTEGER,
  enabled  BOOLEAN      NOT NULL,
  name     VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  version  INTEGER,
  PRIMARY KEY (id)
);
DROP TABLE IF EXISTS credentials_authorities;
CREATE TABLE credentials_authorities (
  credentials_id BIGINT NOT NULL,
  authorities_id BIGINT NOT NULL
);
DROP TABLE IF EXISTS oauth_code;
CREATE TABLE oauth_code (
  code           VARCHAR(255),
  authentication BYTEA
);
DROP TABLE IF EXISTS oauth_approvals;
CREATE TABLE oauth_approvals (
  userId         VARCHAR(255),
  clientId       VARCHAR(255),
  scope          VARCHAR(255),
  status         VARCHAR(10),
  expiresAt      TIMESTAMP,
  lastModifiedAt TIMESTAMP
);