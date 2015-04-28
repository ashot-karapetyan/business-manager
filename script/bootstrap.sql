CREATE  TABLE user (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(60) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));

CREATE TABLE user_role (
  user_role_id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL,
  role VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES user (username));

INSERT INTO user(username,password,enabled)
VALUES ('admin','5f4dcc3b5aa765d61d8327deb882cf99', TRUE);
INSERT INTO user(username,password,enabled)
VALUES ('user','5f4dcc3b5aa765d61d8327deb882cf99', TRUE);

INSERT INTO user_role (username, role)
VALUES ('admin', 'ROLE_USER');
INSERT INTO user_role (username, role)
VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO user_role (username, role)
VALUES ('user', 'ROLE_USER');