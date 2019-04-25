-- Note: FIRST: edit %db_owner% to the account name of the DB owner 

-- This script cleans up table and column names.
-- DO NOT run if you are not sure of the consequences.

ALTER TABLE IF EXISTS lter_metabase."DataSet" RENAME TO lter_metabase."DataSets";

ALTER TABLE IF EXISTS lter_metabase."DataSetAttributes" RENAME TO lter_metabase."Attributes";

ALTER TABLE IF EXISTS lter_metabase."DataSetEntities" RENAME TO lter_metabase."Entities";

ALTER TABLE IF EXISTS lter_metabase."People" RENAME TO lter_metabase."PeopleList";

ALTER TABLE IF EXISTS lter_metabase."Peopleidentification" RENAME TO lter_metabase."PeopleIDList";

ALTER TABLE IF EXISTS lter_metabase."DataSetMissingCodes" RENAME TO lter_metabase."AttributeMissingCodes";

ALTER TABLE IF EXISTS lter_metabase."EMLMissingCodes" RENAME TO lter_metabase."MissingCodeList";

ALTER TABLE IF EXISTS lter_metabase."EMLAttributeCodeDefinition" RENAME TO lter_metabase."AttributeCodeDefinitions";

ALTER TABLE IF EXISTS lter_metabase."Keywords" RENAME TO lter_metabase."KeywordList";

ALTER TABLE IF EXISTS lter_metabase."KeywordThesaurus" RENAME TO lter_metabase."KeywordThesaurusList";

ALTER TABLE IF EXISTS lter_metabase."MeasurementScaleDomains" RENAME TO lter_metabase."EMLMeasurementScaleDomains";

ALTER TABLE IF EXISTS lter_metabase."EMLKeywordTypeList" RENAME TO lter_metabase."EMLKeywordTypes";

ALTER TABLE IF EXISTS lter_metabase."EMLMeasurementScaleList" RENAME TO lter_metabase."EMLMeasurementScales";

ALTER TABLE IF EXISTS lter_metabase."EMLNumberTypeList" RENAME TO lter_metabase."EMLNumberTypes";

ALTER TABLE IF EXISTS lter_metabase."EMLStorageTypeList" RENAME TO lter_metabase."EMLStorageTypes";

ALTER TABLE IF EXISTS lter_metabase."EMLUnitDictionary" RENAME TO lter_metabase."UnitList";