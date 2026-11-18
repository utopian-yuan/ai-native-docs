# 从第二页切换「我的待办」误显空列表

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "BUG-20260513-example-filter-page",
  "type": "bug",
  "status": "in_progress",
  "risk": "medium",
  "created": "2026-05-13",
  "updated": "2026-05-15",
  "owner": "demo-qiu",
  "modules": [
    "Web 列表分页"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "../../releases/v0.4.0-rc.2-example.md#rc2",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-13",
  "acceptance_ref": "../../plan/PLAN-20260511-example-ticket-inbox.md#范围决定",
  "verified_by": "",
  "verified_at": "",
  "verification_ref": ""
}
```

## 现象与边界

rc.1 中林从全部工单第二页点「我的待办」，页面提示没有待办。但接口报告 total=1，回到第一页能看到 W101。影响已经翻页的用户，修复范围为切换筛选时的分页状态。

| AC | 操作 | 预期 |
| --- | --- | --- |
| AC1 | 林从第 2 页点击「我的待办」 | 请求第 1 页，显示 W101，total=1 |
| AC2 | 陈按同样步骤切换 | 请求第 1 页，显示空状态，total=0 |

5 月 13 日 @demo-yan 将本缺陷列为测试候选版的阻塞项。rc.2 复审通过，业务使用验收与功能一同跟进。[评审](../../reviews/REVIEW-20260513-example-ticket-filter.md)

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
