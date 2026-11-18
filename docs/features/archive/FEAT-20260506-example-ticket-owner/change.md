# 在工单列表展示负责人

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "FEAT-20260506-example-ticket-owner",
  "type": "feature",
  "status": "done",
  "risk": "low",
  "created": "2026-05-06",
  "updated": "2026-05-08",
  "owner": "demo-qiu",
  "modules": [
    "工单列表"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "../../../releases/v0.4.0-rc.2-example.md#基线",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-06",
  "acceptance_ref": "evidence.md#人工决定",
  "verified_by": "demo-yan",
  "verified_at": "2026-05-08",
  "verification_ref": "evidence.md#人工决定"
}
```

## 已交付范围

此前值班人员要打开详情才能知道一张工单由谁跟进。0.3.0 在列表新增「负责人」列，复用查询响应中的展示名。新增或修改指派动作留在原有流程。

| AC | 条件 | 验收结果 |
| --- | --- | --- |
| AC1 | 林负责 W101，秋负责 W102 | 列表中两行分别显示林、秋，与详情一致 |

5 月 8 日 @demo-yan 确认通过。空值显示在[独立缺陷](../../../bugs/archive/BUG-20260507-example-unassigned-label/change.md)中跟踪。

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
