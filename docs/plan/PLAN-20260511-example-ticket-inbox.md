# 工单看板 0.4 候选版计划

> 教学案例。时间、人员、版本和决定为虚构。

**交付目标**　值班人员可以一键找出分给自己的待处理工单。版本负责人 @demo-chen，范围和业务验收由 @demo-yan 确认。本计划覆盖测试候选版，生产排期另行决定。

## 基线记录

5 月 8 日的 0.3.0 已交付[负责人展示](../features/archive/FEAT-20260506-example-ticket-owner/change.md)及[未指派文案修复](../bugs/archive/BUG-20260507-example-unassigned-label/change.md)。该版本的查询契约允许负责人为空，工单状态包括「待处理」和「已关闭」。两项的原验收记录可在各自 archive 中回查。

## 范围决定

| 日期 | 决定人 | 本轮采用的范围 |
| --- | --- | --- |
| 05-11 | @demo-yan | 接受「我的待办」及清除筛选。暂缓跨设备保存。取消[夜间整表复制](../tasks/archive/TASK-20260508-example-queue-snapshot/change.md) |
| 05-12 | @demo-yan | 接受固定四单样本，以两个登录身份复验，供每位接手人重放 |
| 05-13 | @demo-yan | 将第二页切换误显空页列为进入下一候选版的阻塞项，需同输入复审 |

## 里程碑和依赖

| 节点 | 负责与协作 | 依赖 → 可交付的结果 | 状态及接手条件 |
| --- | --- | --- | --- |
| M1 · 05-12 固定输入 | @demo-lin → @demo-qiu | [四单样本](../tasks/TASK-20260512-example-filter-smoke/design.md#四单样本)和查询口径 → 可对照 total | 已交接口与输入，页面组接入 |
| M2 · 05-13 至 05-15 联调 | @demo-qiu、@demo-yan | [快捷筛选](../features/FEAT-20260511-example-my-open/change.md)和[分页修复](../bugs/BUG-20260513-example-filter-page/change.md) → 两种身份首次请求均为第 1 页 | rc.1 被退回，rc.2 复审通过 |
| M3 · 试用签收 | @demo-chen → @demo-yan | [测试环境发布](../releases/v0.4.0-rc.2-example.md)及[复审记录](../reviews/REVIEW-20260513-example-ticket-filter.md) → 业务负责人试用 | 待业务签收，再决定生产窗口 |

**退出条件**　M2 若仍出现 total=1 且第一屏无 W101，保留原手动筛选并退回页面组。每个工作项的实际进度、首次失败和复验继续写在自己的四件套。
