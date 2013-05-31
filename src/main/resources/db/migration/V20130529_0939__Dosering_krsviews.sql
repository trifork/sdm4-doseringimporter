
-- -----------------------------------------------------
-- Someone has to create the SKRS tables first time
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SKRSViewMapping` (
  `idSKRSViewMapping` BIGINT(15) NOT NULL AUTO_INCREMENT ,
  `register` VARCHAR(255) NOT NULL ,
  `datatype` VARCHAR(255) NOT NULL ,
  `version` INT NOT NULL ,
  `tableName` VARCHAR(255) NOT NULL ,
  `createdDate` TIMESTAMP NOT NULL ,
  PRIMARY KEY (`idSKRSViewMapping`) ,
  INDEX `idx` (`register` ASC, `datatype` ASC, `version` ASC) ,
  UNIQUE INDEX `unique` (`register` ASC, `datatype` ASC, `version` ASC) )
  ENGINE = InnoDB;
CREATE  TABLE IF NOT EXISTS `SKRSColumns` (
  `idSKRSColumns` BIGINT(15) NOT NULL AUTO_INCREMENT ,
  `viewMap` BIGINT(15) NOT NULL ,
  `isPID` TINYINT NOT NULL ,
  `tableColumnName` VARCHAR(255) NOT NULL ,
  `feedColumnName` VARCHAR(255) NULL ,
  `feedPosition` INT NOT NULL ,
  `dataType` INT NOT NULL ,
  `maxLength` INT NULL ,
  PRIMARY KEY (`idSKRSColumns`) ,
  INDEX `viewMap_idx` (`viewMap` ASC) ,
  UNIQUE INDEX `viewColumn` (`tableColumnName` ASC, `viewMap` ASC) ,
  CONSTRAINT `viewMap`
  FOREIGN KEY (`viewMap` )
  REFERENCES `SKRSViewMapping` (`idSKRSViewMapping` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;

-- ---------------------------------------------------------------------------------------------------------------------
-- Doserings forslag
-- ---------------------------------------------------------------------------------------------------------------------

INSERT IGNORE INTO SKRSViewMapping (register, datatype, version, tableName, createdDate) VALUES ('doseringsforslag', 'dosagestructure', 1, 'DosageStructure', NOW());
INSERT IGNORE INTO SKRSColumns (viewMap, isPID, tableColumnName, feedColumnName, feedPosition, dataType, maxLength) VALUES
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 1, 'DosageStructurePID',               NULL, 0, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'releaseNumber',         'releaseNumber', 2, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'code',                           'code', 1, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'type',                           'type', 3, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'simpleString',           'simpleString', 4, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'supplementaryText', 'supplementaryText', 5, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'xml',                             'xml', 6, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'shortTranslation',   'shortTranslation', 7, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'longTranslation',     'longTranslation', 8, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'ModifiedDate',                     NULL, 0, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'ValidFrom',                 'validFrom', 9, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosagestructure' AND version=1), 0, 'ValidTo',                     'validTo',10, 93, 12);

INSERT IGNORE INTO SKRSViewMapping (register, datatype, version, tableName, createdDate) VALUES ('doseringsforslag', 'dosageunit', 1, 'DosageUnit', NOW());
INSERT IGNORE INTO SKRSColumns (viewMap, isPID, tableColumnName, feedColumnName, feedPosition, dataType, maxLength) VALUES
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 1, 'DosageUnitPID',            NULL, 0, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'code',                   'code', 2, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'releaseNumber', 'releaseNumber', 1, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'textSingular',   'textSingular', 3, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'textPlural',       'textPlural', 4, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'ModifiedDate',             NULL, 0, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'ValidFrom',         'validFrom', 5, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='dosageunit' AND version=1), 0, 'ValidTo',             'validTo', 6, 93, 12);

INSERT IGNORE INTO SKRSViewMapping (register, datatype, version, tableName, createdDate) VALUES ('doseringsforslag', 'version', 1, 'DosageVersion', NOW());
INSERT IGNORE INTO SKRSColumns (viewMap, isPID, tableColumnName, feedColumnName, feedPosition, dataType, maxLength) VALUES
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 1, 'DosageVersionPID',         NULL, 0, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'daDate',               'daDate', 1, 91, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'lmsDate',             'lmsDate', 2, 91, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'releaseDate',     'releaseDate', 3, 91, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'releaseNumber', 'releaseNumber', 4, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'ModifiedDate',             NULL, 0, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'ValidFrom',         'validFrom', 5, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='version' AND version=1), 0, 'ValidTo',             'validTo', 6, 93, 12);

INSERT IGNORE INTO SKRSViewMapping (register, datatype, version, tableName, createdDate) VALUES ('doseringsforslag', 'drug', 1, 'DosageDrug', NOW());
INSERT IGNORE INTO SKRSColumns (viewMap, isPID, tableColumnName, feedColumnName, feedPosition, dataType, maxLength) VALUES
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 1, 'DosageDrugPID',              NULL, 0, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'releaseNumber',   'releaseNumber', 1, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'drugId',                 'drugId', 2, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'dosageUnitCode', 'dosageUnitCode', 4, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'drugName',             'drugName', 3, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'ModifiedDate',               NULL, 0, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'ValidFrom',           'validFrom', 5, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drug' AND version=1), 0, 'ValidTo',               'validTo', 6, 93, 12);

INSERT IGNORE INTO SKRSViewMapping (register, datatype, version, tableName, createdDate) VALUES ('doseringsforslag', 'drugdosagestructurerelation', 1, 'DrugDosageStructureRelation', NOW());
INSERT IGNORE INTO SKRSColumns (viewMap, isPID, tableColumnName, feedColumnName, feedPosition, dataType, maxLength) VALUES
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 1, 'DrugDosageStructureRelationPID',                 NULL, 0, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'id',                                             'id', 1, 12, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'drugId',                                     'drugId', 2, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'dosageStructureCode',           'dosageStructureCode', 4, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'releaseNumber',                       'releaseNumber', 3, -5, NULL),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'ModifiedDate',                                   NULL, 0, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'ValidFrom',                               'validFrom', 5, 93, 12),
((SELECT idSKRSViewMapping FROM SKRSViewMapping WHERE register='doseringsforslag' AND datatype='drugdosagestructurerelation' AND version=1), 0, 'ValidTo',                                   'validTo', 6, 93, 12);
