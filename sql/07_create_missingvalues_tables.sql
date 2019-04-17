-- Note: FIRST: edit %db_owner% to the account name of the DB owner 

CREATE TABLE lter_metabase."EMLMissingCodes" (
	"CodeID" character varying(20) NOT NULL,
	"MissingValueCode" character varying(200) NOT NULL,
	"MissingValueCodeExplanation" character varying(1024) NOT NULL
);
ALTER TABLE ONLY lter_metabase."EMLMissingCodes" 
	ADD CONSTRAINT "UQ_EMLMissingCodes_CodeID" UNIQUE("CodeID");
	
ALTER TABLE lter_metabase."EMLMissingCodes"
    OWNER TO %db_owner%;

CREATE TABLE lter_metabase."DataSetMissingCodes" (
	"DataSetID" integer NOT NULL,
	"EntitySortOrder" integer NOT NULL,
	"ColumnName" character varying(200) NOT NULL,
	"CodeID" character varying(200) NOT NULL
);

ALTER TABLE lter_metabase."DataSetMissingCodes"
    OWNER TO %db_owner%;
	
ALTER TABLE ONLY lter_metabase."DataSetMissingCodes"
	ADD CONSTRAINT
	"FK_DatasetMissingCode_CodeID" FOREIGN KEY ("CodeID") REFERENCES lter_metabase."EMLMissingCodes"("CodeID") ON UPDATE CASCADE;
	
ALTER TABLE ONLY lter_metabase."DataSetMissingCodes"
    ADD CONSTRAINT "PK_DataSetMissingCodes" PRIMARY KEY ("DataSetID", "EntitySortOrder", "ColumnName", "CodeID");
	
CREATE VIEW mb2eml_r.vw_eml_missingcodes AS
SELECT d."DataSetID" as datasetid, d."EntitySortOrder" as entity_position, d."ColumnName" as "attributeName", e."MissingValueCode" as "MissingValueCode", e."MissingValueCodeExplanation" as "MissingValueCodeExplanation" FROM (lter_metabase."DataSetMissingCodes" d JOIN lter_metabase."EMLMissingCodes" e ON (((d."CodeID")::text = (e."CodeID")::text))) ORDER BY d."DataSetID";

ALTER TABLE mb2eml_r.vw_eml_missingcodes OWNER TO %db_owner%;

