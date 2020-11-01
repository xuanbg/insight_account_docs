
-- ----------------------------
-- Table structure for iaf_account
-- ----------------------------
DROP TABLE IF EXISTS `iaf_account`;
CREATE TABLE `iaf_account` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `tenant_id` char(32) NOT NULL COMMENT '租户ID',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型:0.银行;1.支付宝;2.微信;3.店铺……',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `balance` decimal(18, 2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `is_invalid` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否失效:0.有效;1.失效',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_account_tenant_id` (`tenant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='资金账户表';

-- ----------------------------
-- Table structure for iaf_account_check
-- ----------------------------
DROP TABLE IF EXISTS `iaf_account_check`;
CREATE TABLE `iaf_account_check` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `account_id` char(32) NOT NULL COMMENT '资金账户ID',
  `start_date` datetime NOT NULL COMMENT '开始日期',
  `end_date` datetime NOT NULL COMMENT '截止日期',
  `count` int(10) unsigned NOT NULL COMMENT '对账交易笔数',
  `amount` decimal(18, 2) NOT NULL COMMENT '对账金额',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `auditor` varchar(64) DEFAULT NULL COMMENT '审核人',
  `auditor_id` char(32) DEFAULT NULL COMMENT '审核人ID',
  `audit_time` datetime DEFAULT NULL COMMENT '审核时间',
  `is_confirm` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否确认对账:0.未确认;1.已确认',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_account_check_account_id` (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='资金账户对账单表';

-- ----------------------------
-- Table structure for iaf_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `iaf_account_detail`;
CREATE TABLE `iaf_account_detail` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `account_id` char(32) NOT NULL COMMENT '资金账户ID',
  `check_id` char(32) DEFAULT NULL COMMENT '对账单ID',
  `transaction_code` varchar(32) NOT NULL COMMENT '对方流水单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '流水金额',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_account_detail_account_id` (`account_id`) USING BTREE,
  KEY `idx_account_detail_check_id` (`check_id`) USING BTREE,
  KEY `idx_account_detail_transaction_code` (`transaction_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='资金账户流水表';

-- ----------------------------
-- Table structure for iaf_audit_payment
-- ----------------------------
DROP TABLE IF EXISTS `iaf_audit_payment`;
CREATE TABLE `iaf_audit_payment` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `account_id` char(32) NOT NULL COMMENT '企业账户ID',
  `code` varchar(16) NOT NULL COMMENT '付款单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '付/退款金额',
  `detail` json DEFAULT NULL COMMENT '付款信息',
  `remark` varchar(1024) DEFAULT NULL COMMENT '审核备注',
  `auditor` varchar(64) DEFAULT NULL COMMENT '审核人',
  `auditor_id` char(32) DEFAULT NULL COMMENT '审核人ID',
  `audit_time` datetime DEFAULT NULL COMMENT '审核时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态:0.待审核;1.已付款;2.已驳回',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_audit_payment_account_id` (`account_id`) USING BTREE,
  KEY `idx_audit_payment_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='付款审核表';

-- ----------------------------
-- Table structure for iaf_online_payment
-- ----------------------------
DROP TABLE IF EXISTS `iaf_online_payment`;
CREATE TABLE `iaf_online_payment` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `account_id` char(32) NOT NULL COMMENT '企业账户ID',
  `business_code` varchar(16) NOT NULL COMMENT '业务单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '交易金额',
  `detail` json DEFAULT NULL COMMENT '交易信息',
  `query_id` varchar(64) DEFAULT NULL COMMENT '交易查询ID',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态:0.待交易;1.交易成功;2.交易失败',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_online_payment_business_code` (`business_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='在线支付记录表';


-- ----------------------------
-- Table structure for iau_account
-- ----------------------------
DROP TABLE IF EXISTS `iau_account`;
CREATE TABLE `iau_account` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `tenant_id` char(32) NOT NULL COMMENT '租户ID',
  `owner_id` char(32) DEFAULT NULL COMMENT '所有者ID',
  `owner` varchar(64) DEFAULT NULL COMMENT '所有者',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型:0.扣罚/赔付账户;1.匿名结算户;2.一般结算户;3.授信/月结账户;4.保证金账户;5.供应商账户……',
  `code` varchar(16) DEFAULT NULL COMMENT '账号',
  `balance` decimal(18, 2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `bonus` decimal(18, 2) NOT NULL DEFAULT '0.00' COMMENT '赠金余额',
  `is_invalid` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否失效:0.有效;1.失效',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_account_tenant_id` (`tenant_id`) USING BTREE,
  KEY `idx_account_owner_id` (`owner_id`) USING BTREE,
  KEY `idx_account_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='用户账户表';

-- ----------------------------
-- Table structure for iau_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `iau_account_detail`;
CREATE TABLE `iau_account_detail` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `account_id` char(32) NOT NULL COMMENT '用户账户ID',
  `check_id` char(32) DEFAULT NULL COMMENT '对账单ID',
  `type` tinyint(3) NOT NULL COMMENT '类型:-1.充值赠送;0.订单收银;1.充值/还款;2.保证金入账;3.酬金入账;4.业务退款;5.售后赔付;6.售后扣罚;7.订单扣款;8.提现;9.保证金退款;10.现金退款',
  `business_code` varchar(16) DEFAULT NULL COMMENT '业务单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '流水金额',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `settlement_time` datetime NOT NULL COMMENT '结算时间',
  `allow_invoice` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否允许开票:0.不允许;1.允许',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_account_detail_account_id` (`account_id`) USING BTREE,
  KEY `idx_account_detail_check_id` (`check_id`) USING BTREE,
  KEY `idx_account_detail_type` (`type`) USING BTREE,
  KEY `idx_account_detail_business_code` (`business_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='用户账户流水表';

-- ----------------------------
-- Table structure for iau_audit_invoice
-- ----------------------------
DROP TABLE IF EXISTS `iau_audit_invoice`;
CREATE TABLE `iau_audit_invoice` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `tenant_id` char(32) NOT NULL COMMENT '租户ID',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型:0.普通发票;1.专用发票',
  `code` varchar(16) NOT NULL COMMENT '开票申请单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '开票总金额',
  `detail` json DEFAULT NULL COMMENT '开票信息',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `invoice_no` varchar(32) DEFAULT NULL COMMENT '发票号',
  `auditor` varchar(64) DEFAULT NULL COMMENT '审核人',
  `auditor_id` char(32) DEFAULT NULL COMMENT '审核人ID',
  `audit_time` datetime DEFAULT NULL COMMENT '审核时间',
  `audit_remark` varchar(1024) DEFAULT NULL COMMENT '审核备注',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态:0.待审核;1.已开票;2.已寄送;3.已驳回;4.已作废',
  `creator` varchar(64) NOT NULL COMMENT '创建人',
  `creator_id` char(32) NOT NULL COMMENT '创建人ID',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_audit_invoice_tenant_id` (`tenant_id`) USING BTREE,
  KEY `idx_audit_invoice_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='发票申请表';

-- ----------------------------
-- Table structure for iau_audit_invoice_detail
-- ----------------------------
DROP TABLE IF EXISTS `iau_audit_invoice_detail`;
CREATE TABLE `iau_audit_invoice_detail` (
  `id` char(32) NOT NULL COMMENT '主键(UUID)',
  `invoice_id` char(32) NOT NULL COMMENT '开票申请ID',
  `record_id` char(32) NOT NULL COMMENT '账户流水ID',
  `business_code` varchar(16) NOT NULL COMMENT '业务单号',
  `amount` decimal(18, 2) NOT NULL COMMENT '开票金额',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_audit_invoice_detail_invoice_id` (`invoice_id`) USING BTREE,
  KEY `idx_audit_invoice_detail_record_id` (`record_id`) USING BTREE,
  KEY `idx_audit_invoice_detail_business_code` (`business_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='发票申请明细表';
