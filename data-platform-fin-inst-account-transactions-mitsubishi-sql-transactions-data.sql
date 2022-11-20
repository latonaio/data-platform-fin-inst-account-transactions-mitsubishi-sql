CREATE TABLE `data_platform_fin_inst_account_transactions_mitsubishi_transactions_data`
(
  `FinInstCountry`            varchar(3) NOT NULL, 
  `FinInstCode`               varchar(10) NOT NULL,
  `FinInstBranchCode`         varchar(10) NOT NULL,
  `FinInstFullCode`           varchar(15) NOT NULL,
  `InternalFinInstCustomerID` int(12) NOT NULL,
  `InternalFinInstAccountID`  int(12) NOT NULL,
  `ValidityEndDate`           date NOT NULL,
  `ValidityStartDate`         date NOT NULL,
  `transactionDate`           varchar(10) DEFAULT NULL,
  `designatedDate`            varchar(10) DEFAULT NULL,
  `transactionId`             varchar(6) NOT NULL,
  `transactionType`           varchar(12) DEFAULT NULL,
  `remarks`                   varchar(22) DEFAULT NULL,
  `debitCreditTypeCode`       varchar(1) NOT NULL,
  `amount`                    int(12) NOT NULL,
  `balance`                   int(13) DEFAULT NULL,

  PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `ValidityEndDate`, `ValidityStartDate`, `transactionId`),

  CONSTRAINT `DataPlatformFinInstAccountTransactionsMitsubishiTransactionsDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
