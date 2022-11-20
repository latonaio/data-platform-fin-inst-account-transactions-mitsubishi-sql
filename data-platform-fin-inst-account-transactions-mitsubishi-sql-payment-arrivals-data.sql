CREATE TABLE `data_platform_fin_inst_account_transactions_mitsubishi_payment_arrivals_data`
(
  `transactionDate`                             varchar(10) NOT NULL,
  `designatedDate`                              varchar(10) DEFAULT NULL,
  `transactionId`                               varchar(6) DEFAULT NULL,
  `transactionType`                             varchar(10) DEFAULT NULL,
  `applicantName`                               varchar(50) NOT NULL,
  `paymentFinancialInstitutionNameKana`         varchar(15) NOT NULL,
  `branchNameKana`                              varchar(15) NOT NULL,
  `paymentApplicantNo`                          varchar(10) DEFAULT NULL,
  `ediInfo`                                     varchar(20) DEFAULT NULL,
  `debitCreditTypeCode`                         varchar(1) DEFAULT NULL,
  `amount`                                      int(1) NOT NULL,

  PRIMARY KEY (`transactionDate`, `applicantName`, `paymentFinancialInstitutionNameKana`, `branchNameKana`, `amount`),
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;