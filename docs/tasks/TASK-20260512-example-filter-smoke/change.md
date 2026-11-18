# 为候选版准备可重放的四单冒烟样本

> 教学案例。账号、候选版本和结果为虚构。

```json
{
  "id": "TASK-20260512-example-filter-smoke",
  "type": "task",
  "status": "in_progress",
  "risk": "low",
  "created": "2026-05-12",
  "updated": "2026-05-15",
  "owner": "demo-lin",
  "modules": [
    "联调数据",
    "冒烟操作"
  ],
  "related_architecture": [
    "design.md#流程与契约"
  ],
  "release_note": "../../releases/v0.4.0-rc.2-example.md#rc2",
  "acceptance_owner": "demo-yan",
  "verification_owner": "demo-yan",
  "accepted_by": "demo-yan",
  "accepted_at": "2026-05-12",
  "acceptance_ref": "../../plan/PLAN-20260511-example-ticket-inbox.md#范围决定",
  "verified_by": "",
  "verified_at": "",
  "verification_ref": ""
}
```

## 工程目标

原先两位同事各自临时造工单，复验时页码和总数不可比较。本轮提供可公开的四条合成工单和操作顺序，供功能联调、缺陷回归、候选版冒烟共用。

| AC | 交付条件 | 验证方法 |
| --- | --- | --- |
| AC1 | 样本有固定 ID、顺序、责任人和状态 | 两次准备后均为四条，核对逐行值 |
| AC2 | 发布人能独立重放「全部、林的待办、陈的待办」 | 对应总数严格为 4、1、0 |

@demo-lin 负责样本。测试环境已复做，后续版本的维护责任移交待确认。

[方案](design.md) · [任务](tasks.md) · [证据](evidence.md)
