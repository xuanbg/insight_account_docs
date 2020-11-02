INSERT ibs_application (`id`, `index`, `name`, `alias`, `permit_life`, `token_life`, `creator`, `creator_id`, `created_time`) VALUES
('d3cb9b57fe0211ea8761000c299ddad2', 3, '因赛特商户管理平台', 'AMS', 300000, 7200000, '系统', '00000000000000000000000000000000', now());

INSERT ibs_navigator(`id`, `parent_id`, `app_id`, `type`, `index`, `name`, `module_info`, `creator`, `creator_id`, `created_time`) VALUES
('663fef09fecc11ea8761000c299ddad2', NULL, 'd3cb9b57fe0211ea8761000c299ddad2', 1, 1, '账务中心', json_object("iconUrl", "icons/account.png"), '系统', '00000000000000000000000000000000', now()),
('99f4ab98fecc11ea8761000c299ddad2', '663fef09fecc11ea8761000c299ddad2', 'd3cb9b57fe0211ea8761000c299ddad2', 2, 1, '资金管理', json_object("module", 'fund', "file", 'Account.dll', "autoLoad", true, "iconUrl", "icons/fund.png"), '系统', '00000000000000000000000000000000', now()),
('99f4abd8fecc11ea8761000c299ddad2', '663fef09fecc11ea8761000c299ddad2', 'd3cb9b57fe0211ea8761000c299ddad2', 2, 2, '发票审核', json_object("module", 'invoice', "file", 'Account.dll', "autoLoad", false, "iconUrl", "icons/invoice.png"), '系统', '00000000000000000000000000000000', now()),

INSERT ibs_function(`id`, `nav_id`, `type`, `index`, `name`, `auth_codes`, `func_info`, `creator`, `creator_id`, `created_time`) VALUES
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 0, 1, '刷新', 'getAccount', json_object("method", "refresh", "iconUrl", "icons/refresh.png", "beginGroup", true, "hideText", true), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 1, 2, '充值', 'recharge', json_object("method", "recharge", "iconUrl", "icons/recharge.png", "beginGroup", true, "hideText", false), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 1, 3, '提现', 'withdraw', json_object("method", "withdraw", "iconUrl", "icons/withdraw.png", "beginGroup", false, "hideText", false), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 1, 4, '对账', 'newCheck', json_object("method", "check", "iconUrl", "icons/check.png", "beginGroup", true, "hideText", false), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 1, 5, '导出明细', 'getCheck', json_object("method", "export", "iconUrl", "icons/export.png", "beginGroup", true, "hideText", false), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4ab98fecc11ea8761000c299ddad2', 1, 6, '确认对账', 'confirmCheck', json_object("method", "confirm", "iconUrl", "icons/confirm.png", "beginGroup", false, "hideText", false), '系统', '00000000000000000000000000000000', now()),

(replace(uuid(), '-', ''), '99f4abd8fecc11ea8761000c299ddad2', 0, 1, '刷新', 'getInvoice', json_object("method", "refresh", "iconUrl", "icons/refresh.png", "beginGroup", true, "hideText", true), '系统', '00000000000000000000000000000000', now()),
(replace(uuid(), '-', ''), '99f4abd8fecc11ea8761000c299ddad2', 1, 2, '审核', 'auditInvoice', json_object("method", "paymentAudit", "iconUrl", "icons/paymentAudit.png", "beginGroup", true, "hideText", false), '系统', '00000000000000000000000000000000', now());
