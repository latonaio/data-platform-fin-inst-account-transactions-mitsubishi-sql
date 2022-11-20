CREATE TABLE `data_platform_fin_inst_account_transactions_mitsubishi_transaction_response_data`
(
  `nextFlag`                                 varchar(1) DEFAULT NULL,
  `nextKeyword`                              varchar(23) DEFAULT NULL,
  `number`                                   int(1) NOT NULL,
  `transactionDateFrom`                      varchar(10) NOT NULL,
  `transactionDateTo`                        varchar(10) NOT NULL,
  `transactionIdFirst`                       varchar(6) NOT NULL,
  `transactionIdLast`                        varchar(6) NOT NULL,
  `operationDate`                            varchar(10) DEFAULT NULL,
  `operationTime`                            varchar(8) DEFAULT NULL,

  PRIMARY KEY (`number`, `transactionDateFrom`, `transactionDateTo`, `transactionIdFirst`, `transactionIdLast`),
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;