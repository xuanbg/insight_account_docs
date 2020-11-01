INSERT `ici_interface`(`id`, `name`, `method`, `url`, `auth_code`, `limit_gap`, `limit_cycle`, `limit_max`, `message`, `is_verify`, `is_limit`, `created_time`) VALUES 
-- 会计主体管理
(replace(uuid(), '-', ''), '获取会计主体列表', 'GET', '/account/funds/v1.0/entities', 'getEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取会计主体详情', 'GET', '/account/funds/v1.0/entities/{id}', 'getEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新增会计主体', 'POST', '/account/funds/v1.0/entities', 'newEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '编辑会计主体', 'PUT', '/account/funds/v1.0/entities', 'editEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '禁用会计主体', 'PUT', '/account/funds/v1.0/entities/disable', 'disableEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '启用会计主体', 'PUT', '/account/funds/v1.0/entities/enable', 'enableEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '删除会计主体', 'DELETE', '/account/funds/v1.0/entities', 'deleteEntity', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取会计主体可绑定应用', 'GET', '/account/funds/v1.0/entities/{id}/apps', 'bindEntityApp', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '绑定会计主体应用关系', 'POST', '/account/funds/v1.0/entities/apps', 'bindEntityApp', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '解除会计主体绑定应用', 'DELETE', '/account/funds/v1.0/entities/apps', 'unbindEntityApp', 1, NULL, NULL, NULL, 1, 1, now()),

-- 资金账户管理
(replace(uuid(), '-', ''), '获取资金账户列表', 'GET', '/account/funds/v1.0/accounts', 'getFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取资金账户详情', 'GET', '/account/funds/v1.0/accounts/{id}', 'getFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取资金账户流水', 'GET', '/account/funds/v1.0/accounts/{id}/records', 'getFundsDetail', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新增资金账户', 'POST', '/account/funds/v1.0/accounts', 'newFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '编辑资金账户', 'PUT', '/account/funds/v1.0/accounts', 'editFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '调整资金账户余额', 'PUT', '/account/funds/v1.0/accounts/balance', 'changeBalance', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '禁用资金账户', 'PUT', '/account/funds/v1.0/accounts/disable', 'disableFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '启用资金账户', 'PUT', '/account/funds/v1.0/accounts/enable', 'enableFundsAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '导出资金账户对账单', 'GET', '/account/funds/v1.0/accounts/checks/{id}', 'getFundsCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新建资金账户对账单', 'POST', '/account/funds/v1.0/accounts/checks', 'newFundsCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '确认资金账户对账单', 'PUT', '/account/funds/v1.0/accounts/checks', 'confirmFundsCheck', 1, NULL, NULL, NULL, 1, 1, now()),

-- 在线结算
(replace(uuid(), '-', ''), '获取在线支付记录列表', 'GET', '/account/funds/v1.0/onlines', 'getSettlement', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '在线交易结果查询', 'GET', '/account/funds/v1.0/onlines/{id}', 'getSettlementStatus', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '支付宝回调', 'POST', '/account/funds/callbacks/alipay', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
(replace(uuid(), '-', ''), '微信回调', 'POST', '/account/funds/callbacks/wechat', NULL, 0, NULL, NULL, NULL, 0, 0, now()),

-- 收款
(replace(uuid(), '-', ''), '获取收款申请列表', 'GET', '/account/funds/v1.0/receipts', 'getReceipt', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取收款申请详情', 'GET', '/account/funds/v1.0/receipts/{id}', 'getReceipt', 1, NULL, NULL, NULL, 1, 1, now()),
-- (replace(uuid(), '-', ''), '收款', 'POST', '/account/funds/v1.0/receipts', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
(replace(uuid(), '-', ''), '审核收款申请', 'PUT', '/account/funds/v1.0/receipts', 'auditReceipt', 1, NULL, NULL, NULL, 1, 1, now()),

-- 付款
(replace(uuid(), '-', ''), '获取付款申请列表', 'GET', '/account/funds/v1.0/payments', 'getPayment', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取付款申请详情', 'GET', '/account/funds/v1.0/payments/{id}', 'getPayment', 1, NULL, NULL, NULL, 1, 1, now()),
-- (replace(uuid(), '-', ''), '付款', 'POST', '/account/funds/v1.0/payments', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
(replace(uuid(), '-', ''), '审核付款申请', 'PUT', '/account/funds/v1.0/payments', 'auditPayment', 1, NULL, NULL, NULL, 1, 1, now()),


-- 用户账户管理
(replace(uuid(), '-', ''), '获取账户列表', 'GET', '/account/users/v1.0/accounts', 'getUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取账户详情', 'GET', '/account/users/v1.0/accounts/{id}', 'getUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取账户流水', 'GET', '/account/users/v1.0/accounts/{id}/records', 'getUsersDetail', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新增账户', 'POST', '/account/users/v1.0/accounts', 'newUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '编辑账户', 'PUT', '/account/users/v1.0/accounts', 'editUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '月结账户授信', 'PUT', '/account/users/v1.0/accounts/credit', 'credit', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '禁用账户', 'PUT', '/account/users/v1.0/accounts/disable', 'disableUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '启用账户', 'PUT', '/account/users/v1.0/accounts/enable', 'enableUsersAccount', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '账户充值', 'PUT', '/account/users/v1.0/accounts/recharge', 'recharge', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '账户退款', 'PUT', '/account/users/v1.0/accounts/refund', 'refund', 1, NULL, NULL, NULL, 1, 1, now()),

-- 用户对账
(replace(uuid(), '-', ''), '获取对账单列表', 'GET', '/account/users/v1.0/accounts/checks', 'getCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '导出对账单', 'GET', '/account/users/v1.0/accounts/checks/{id}', 'getCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新建对账单', 'POST', '/account/users/v1.0/accounts/checks', 'newCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '确认对账单', 'PUT', '/account/users/v1.0/accounts/checks/status', 'confirmCheck', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '删除对账单', 'DELETE', '/account/users/v1.0/accounts/checks', 'deleteCheck', 1, NULL, NULL, NULL, 1, 1, now()),

-- 提现
(replace(uuid(), '-', ''), '获取提现申请列表', 'GET', '/account/manage/v1.0/withdraws', 'getWithdraw', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取提现申请详情', 'GET', '/account/manage/v1.0/withdraws/{id}', 'getWithdraw', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '审核提现申请', 'PUT', '/account/manage/v1.0/withdraws', 'auditWithdraw', 1, NULL, NULL, NULL, 1, 1, now()),

-- 发票
(replace(uuid(), '-', ''), '获取开票申请列表', 'GET', '/account/manage/v1.0/invoices', 'getInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '获取开票申请详情', 'GET', '/account/manage/v1.0/invoices/{id}', 'getInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '新增开票申请', 'POST', '/account/manage/v1.0/invoices', 'newInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '编辑开票申请', 'PUT', '/account/manage/v1.0/invoices', 'editInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '删除开票申请', 'DELETE', '/account/manage/v1.0/invoices', 'deleteInvoice', 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '审核开票申请', 'PUT', '/account/manage/v1.0/invoices/status', 'auditInvoice', 1, NULL, NULL, NULL, 1, 1, now()),

-- 客户端接口
(replace(uuid(), '-', ''), '我的账户', 'GET', '/account/client/v1.0/accounts', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '我的账单', 'GET', '/account/client/v1.0/accounts/records', NULL, 1, NULL, NULL, NULL, 1, 1, now()),

(replace(uuid(), '-', ''), '我的提现', 'GET', '/account/client/v1.0/withdraws', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '申请提现', 'POST', '/account/client/v1.0/withdraws', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '撤回提现', 'DELETE', '/account/client/v1.0/withdraws', NULL, 1, NULL, NULL, NULL, 1, 1, now()),

(replace(uuid(), '-', ''), '我的发票', 'GET', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '发票详情', 'GET', '/account/client/v1.0/invoices/{id}', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '申请开票', 'POST', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now()),
(replace(uuid(), '-', ''), '撤回开票', 'DELETE', '/account/client/v1.0/invoices', NULL, 1, NULL, NULL, NULL, 1, 1, now());

-- 业务结算
(replace(uuid(), '-', ''), '结算账户查询', 'GET', '/account/users/v1.0/settlements/accounts', NULL, 0, NULL, NULL, NULL, 1, 0, now()),
-- (replace(uuid(), '-', ''), '收款', 'POST', '/account/users/v1.0/settlements/receipt', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
-- (replace(uuid(), '-', ''), '退款', 'POST', '/account/users/v1.0/settlements/refund', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
-- (replace(uuid(), '-', ''), '酬金结算', 'POST', '/account/users/v1.0/settlements/salary', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
-- (replace(uuid(), '-', ''), '扣罚', 'POST', '/account/users/v1.0/settlements/penalty', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
-- (replace(uuid(), '-', ''), '赔付', 'POST', '/account/users/v1.0/settlements/reparation', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
-- (replace(uuid(), '-', ''), '冻结', 'POST', '/account/users/v1.0/settlements/freeze', NULL, 0, NULL, NULL, NULL, 0, 0, now()),
