# 分工与交接

[AC 与主状态](change.md) · [设计约定](design.md)

| 任务 | AC | 执行人 | 状态 | 改动位置与交付物 | 依赖 → 交给谁 | 验证与证据 |
| --- | --- | --- | --- | --- | --- | --- |
| T1 | AC1 | @sample-api | 已交付 | 订单导出接口，筛选与空结果 | 采用共享字段顺序 → @sample-web | 对照两个筛选输入，[E1](evidence.md#e1) |
| T2 | AC2 | @sample-web | 已交付 | 订单列表，下载入口与重试提示 | T1 的响应样本 → @sample-qa | 页面正常下载与失败重试，[E2](evidence.md#e2) |
| T3 | AC1–AC3 | @sample-qa | 已交付 | 联调样本与人工验收 | T1、T2 → 两位开发者修订 → 验收 | 保留首次失败 [E3](evidence.md#e3)，最终复验 [E5](evidence.md#e5) |
| T4 | AC3 | @sample-api、@sample-web | 已交付 | 接口统一编码，页面直接保存响应 | T3 的异常样本 → @sample-qa | 解析下载文件并比对原值，[E4](evidence.md#e4) |

## 交接记录

- 2026-11-11，@sample-api → @sample-web。工作项负责人随接口交付移交。[PR 17](../reviews.md#pr-17) 是最近已验版本，无未提交改动；先用 E1 的两组输入接页面，再把下载版本给 @sample-qa。
- 2026-11-12，@sample-web → @sample-qa。[PR 18](../reviews.md#pr-18) 可走查正常和失败路径；请补充真实操作中可能遇到的客户名样本。
- 2026-11-13，两位开发者 → @sample-qa。[PR 19](../reviews.md#pr-19) 已修复 E3 发现的问题，可按 E5 重走完整路径。
