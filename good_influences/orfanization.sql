
CREATE TABLE ORGANIZATIONS
(
  UNIQUE_ID        VARCHAR(200) NOT NULL COMMENT ' 대표값',
  DEPARTMENT       VARCHAR(200) NOT NULL COMMENT '부서명',
  UNIQUE_ID_PARENT VARCHAR(200) NOT NULL COMMENT ' 상위대표값',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '조직도';

ALTER TABLE ORGANIZATIONS
  ADD CONSTRAINT FK_ORGANIZATIONS_TO_ORGANIZATIONS
    FOREIGN KEY (UNIQUE_ID_PARENT)
    REFERENCES ORGANIZATIONS (UNIQUE_ID);