# 工作项标题

```json
{
  "id": "TASK-YYYYMMDD-short-slug",
  "type": "task",
  "status": "proposed",
  "owner": "",
  "acceptance_owner": "",
  "verification_owner": "",
  "accepted_by": "",
  "accepted_at": "",
  "acceptance_ref": "",
  "verified_by": "",
  "verified_at": "",
  "verification_ref": ""
}
```

建项时替换标题、ID、类型和负责人。用团队账号填写责任人，日期用 YYYY-MM-DD。`acceptance_owner` 指定接受需求的人，`verification_owner` 指定最终验收的人。实际决定发生后再填写对应的 by、at、ref。依据可用 Issue 评论、评审记录，或带日期和原话的授权摘要。

## 目标与范围

写明谁遇到了什么问题、本次交付会改变什么，以及决定留给以后做的部分。缺陷项写复现输入、预期行为和实际行为。

## 验收条件

| 编号 | 在什么条件下操作 | 应能观察到的结果 |
| --- | --- | --- |
| AC1 | 填入可复现的场景 | 填入可判断通过与否的结果 |

## 当前进展与决定

写明最近一次范围决定的时间、作决定的人和依据，以及下一步由谁做什么。任务主状态维护在顶部 JSON。

[方案与契约](design.md) · [任务分工](tasks.md) · [验证与验收](evidence.md)
