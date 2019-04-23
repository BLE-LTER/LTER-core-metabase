-- Note: FIRST: edit %db_owner% to the account name of the DB owner 

-- This script cleans up table and column names.
-- DO NOT run if you are not sure of the consequences.
ALTER TABLE lter_metabase."DataSetAttributes" RENAME TO lter_metabase."Attributes";

ALTER TABLE lter_metabase."People" RENAME TO lter_metabase."PeopleList";

ALTER TABLE lter_metabase."Peopleidentification" RENAME TO lter_metabase."PeopleIDList";

ALTER TABLE lter_metabase."DataSetMissingCodes" RENAME TO lter_metabase."AttributeMissingCodes";

ALTER TABLE lter_metabase."EMLMissingCodes" RENAME TO lter_metabase."MissingCodeList";

ALTER TABLE lter_metabase."EMLAttributeCodeDefinition" RENAME TO lter_metabase."AttributeCodeDefinitions";

ALTER TABLE lter_metabase."Keywords" RENAME TO lter_metabase."KeywordList";

ALTER TABLE lter_metabase."KeywordThesaurus" RENAME TO lter_metabase."KeywordThesaurusList";

ALTER TABLE lter_metabase."MeasurementScaleDomains" RENAME TO lter_metabase."EMLMeasurementScaleDomains";

ALTER TABLE lter_metabase."EMLKeywordTypeList" RENAME TO lter_metabase."EMLKeywordTypes";

ALTER TABLE lter_metabase."EMLMeasurementScaleList" RENAME TO lter_metabase."EMLMeasurementScales";

ALTER TABLE lter_metabase."EMLNumberTypeList" RENAME TO lter_metabase."EMLNumberTypes";

ALTER TABLE lter_metabase."EMLStorageTypeList" RENAME TO lter_metabase."EMLStorageTypes";
