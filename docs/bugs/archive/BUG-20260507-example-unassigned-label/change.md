# 未指派工单显示为 null

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "BUG-20260507-example-unassigned-label",
  "type": "bug",
  "status": "done",
  "risk": "low",
  "created": "2026-05-07",
  "updated": "2026-05-08",
  "owner": "demo-qiu",
  "modules": [
    "负责人展示"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "../../../releases/v0.4.0-rc.2-example.md#基线",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-07",
  "acceptance_ref": "evidence.md#人工决定",
  "verified_by": "demo-yan",
  "verified_at": "2026-05-08",
  "verification_ref": "evidence.md#人工决定"
}
```

## 缺陷与处理范围

负责人列上线联调后，W104 的 owner 为 null，表格直接显示字符串「null」。详情页对此状态一直显示「未指派」，列表应沿用相同语义。

| AC | 输入与操作 | 应观察到的结果 |
| --- | --- | --- |
| AC1 | 在列表打开未指派的 W104 | 显示「未指派」，原始 owner 仍为空 |
| AC2 | 同页查看已分派的 W101 | 继续显示林 |

5 月 8 日已按两种输入复验并获验收，修复随 0.3.0 交付。

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
