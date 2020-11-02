INSERT `ici_interface`(`id`, `name`, `method`, `url`, `auth_code`, `limit_gap`, `limit_cycle`, `limit_max`, `message`, `is_verify`, `is_limit`, `created_time`) VALUES 
-- 资金账户管理
(replace(uuid(), '-', ''), '获取账户列表', 'GET', '/account/v1.0/accounts', 'getAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取账户流水', 'GET', '/account/v1.0/accounts/records', 'getAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '商户账户充值', 'PUT', '/account/v1.0/accounts/recharge', 'recharge', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '商户账户提现', 'PUT', '/account/v1.0/accounts/withdraw', 'withdraw', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '导出账户对账单', 'GET', '/account/v1.0/accounts/checks/{id}', 'getCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新建账户对账单', 'POST', '/account/v1.0/accounts/checks', 'newCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '确认账户对账单', 'PUT', '/account/v1.0/accounts/checks', 'confirmCheck', 1, NULL, NULL, NULL, 1, 1, now()),

-- 在线结算
(replace(uuid(), '-', ''), '支付宝回调', 'POST', '/account/callbacks/alipay', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
(replace(uuid(), '-', ''), '微信回调', 'POST', '/account/callbacks/wechat', NULL, 0, NULL, NULL, NULL, 0, 0, now()),

-- 发票
(replace(uuid(), '-', ''), '获取开票申请列表', 'GET', '/account/v1.0/invoices', 'getInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取开票申请详情', 'GET', '/account/v1.0/invoices/{id}', 'getInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '审核开票申请', 'PUT', '/account/v1.0/invoices/status', 'auditInvoice', 1, NULL, NULL, NULL, 1, 1, now()),

-- 客户端接口
(replace(uuid(), '-', ''), '我的账户', 'GET', '/account/client/v1.0/accounts', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '我的账单', 'GET', '/account/client/v1.0/accounts/records', NULL, 1, NULL, NULL, NULL, 1, 1, now()),

(replace(uuid(), '-', ''), '我的发票', 'GET', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '发票详情', 'GET', '/account/client/v1.0/invoices/{id}', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '申请开票', 'POST', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '撤回开票', 'DELETE', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now());

-- 业务结算
-- (replace(uuid(), '-', ''), '收款', 'POST', '/account/settlement/v1.0/receipt', NULL, 0, NULL, NULL, NULL, 0, 0, now())
-- (replace(uuid(), '-', ''), '退款', 'POST', '/account/settlement/v1.0/refund', NULL, 0, NULL, NULL, NULL, 0, 0, now())
-- (replace(uuid(), '-', ''), '赔付', 'POST', '/account/settlement/v1.0/reparation', NULL, 0, NULL, NULL, NULL, 0, 0, now())
