# 取消夜间复制整表作为冒烟输入的方案

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "TASK-20260508-example-queue-snapshot",
  "type": "task",
  "status": "cancelled",
  "risk": "medium",
  "created": "2026-05-08",
  "updated": "2026-05-11",
  "owner": "demo-lin",
  "modules": [
    "测试数据准备"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-08",
  "acceptance_ref": "evidence.md#人工决定",
  "verified_by": "",
  "verified_at": "",
  "verification_ref": ""
}
```

## 原目标与终止边界

团队曾考虑每晚复制工单表到测试环境，使候选版能覆盖更多输入。@demo-lin 先调查依赖，未执行复制。

| 原 AC | 原计划要观察的结果 | 取消时进展 |
| --- | --- | --- |
| AC1 | 每晚可生成可定位的快照 | 调研了字段和限制，尚未建立定时作业 |
| AC2 | 发布人能从固定快照重放筛选结果 | 已识别漂移问题，未交付快照 |

5 月 11 日 @demo-yan 决定取消。ID、讨论和证据在此保留。后续需求由[固定冒烟样本](../../../tasks/TASK-20260512-example-filter-smoke/change.md)承接。

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
