-- Project: Bricolage
-- VERSION: $LastChangedRevision$
--
-- $LastChangedDate: 2006-03-18 03:10:10 +0200 (Sat, 18 Mar 2006) $
-- Target DBMS: PostgreSQL 7.1.2
-- Author: David Wheeler <david@justatheory.com>
--


-- 
-- TABLE: source_member 
--

CREATE TABLE source_member (
    id          INTEGER        NOT NULL AUTO_INCREMENT,
    object_id   INTEGER        NOT NULL,
    member__id  INTEGER        NOT NULL,
    CONSTRAINT pk_source_member__id PRIMARY KEY (id)
)
    ENGINE      InnoDB
    AUTO_INCREMENT 1024;

--
-- INDEXES.
--
CREATE INDEX fkx_source__source_member ON source_member(object_id);
CREATE INDEX fkx_member__source_member ON source_member(member__id);

