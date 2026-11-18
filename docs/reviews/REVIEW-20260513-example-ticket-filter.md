# 工单快捷筛选候选版评审

> 教学案例。这里的评审意见及验收人均为虚构。

| 对象 | 范围 | 评审人和输入 |
| --- | --- | --- |
| 0.4.0-rc.1，05-13 | 快捷筛选、分页、空状态 | @demo-yan 使用固定[四单样本](../tasks/TASK-20260512-example-filter-smoke/design.md#四单样本)，桌面浏览器，页长 2 |
| 0.4.0-rc.2，05-15 | 针对发现项复审，重复正常和空结果 | @demo-yan 沿用原输入和两种身份 |

## 首轮发现

F01，阻塞进入候选试用。林从全量列表第 2 页点「我的待办」，首个请求仍取 page=2。total=1、items=[]，用户会认为自己没有待办。预期首个请求应取第一页并显示 W101。@demo-qiu 负责修正页面切换状态，@demo-yan 在同一输入下复验。[缺陷及首次失败](../bugs/BUG-20260513-example-filter-page/evidence.md#e1)

首轮结论为需修订。现有证据已覆盖服务端的单条结果，问题发生在页面请求时机。

## 复审

05-15 的 rc.2，林从第 2 页切换后首次请求 page=1，页面显示 W101、total=1。陈在相同步骤下得到 total=0 和空提示。关闭按钮回到四单列表。F01 关闭。[修复复验](../bugs/BUG-20260513-example-filter-page/evidence.md#e2) · [功能回归](../features/FEAT-20260511-example-my-open/evidence.md#e2)

**结论**　@demo-yan 同意 rc.2 用作测试环境试用候选。业务签收和生产发布仍待决定。发布人 @demo-chen 接收[测试环境发布记录](../releases/v0.4.0-rc.2-example.md#rc2)。
