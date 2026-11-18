# 工单列表增加「我的待办」

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "FEAT-20260511-example-my-open",
  "type": "feature",
  "status": "in_progress",
  "risk": "medium",
  "created": "2026-05-11",
  "updated": "2026-05-15",
  "owner": "demo-qiu",
  "modules": [
    "工单查询",
    "Web 列表"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "../../releases/v0.4.0-rc.2-example.md#rc2",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-11",
  "acceptance_ref": "../../plan/PLAN-20260511-example-ticket-inbox.md#范围决定",
  "verified_by": "",
  "verified_at": "",
  "verification_ref": ""
}
```

## 背景与范围

值班人员每天先选自己的名字，再选「待处理」。本轮把这两步合成列表里的「我的待办」。按钮只作用于当前会话。跨设备保存筛选属于后续需求。@demo-yan 在[版本计划](../../plan/PLAN-20260511-example-ticket-inbox.md#范围决定)接受了范围。

| AC | 条件和操作 | 可观察结果 |
| --- | --- | --- |
| AC1 | 以林登录，在四单样本上点击「我的待办」 | 只返回 W101，总数为 1。本人已关闭、他人及未指派工单均被排除 |
| AC2 | 从未加其他筛选的列表启用，再关闭该按钮 | 恢复四条工单，总数为 4，列表从第一页开始 |

## 影响与当前决定

查询接口负责身份和筛选，页面负责切换及分页。测试环境已交付 rc.2，工程验证见 [E2](evidence.md#e2)。产品使用场景的最终决定由 @demo-yan 记录。

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
