# 团队文档中心

先辨认你要更新的是哪一种事实。一次迭代可以有一份版本计划、几个工作项、一份评审和一条发布记录。它们通过 ID、版本和证据链接相连。

| 目录 | 什么时候写，由谁维护 | 阅读入口 |
| --- | --- | --- |
| `_templates/` | 新建工作项时由认领人复制，全团队约定格式后才改模板 | [四件套](_templates/README.md) |
| `features/` | 产品行为有意变化，功能负责人维护范围和验收条件 | [功能与归档](features/README.md) |
| `bugs/` | 现有行为偏离预期，修复人记录复现，验证人补回归 | [缺陷与归档](bugs/README.md) |
| `tasks/` | 交付工具、样本、迁移或治理成果时，由工程负责人写 | [工程任务与归档](tasks/README.md) |
| `architecture/` | 长期模块边界、接口和决定变化时，由维护模块的团队写 | [系统、契约与 ADR](architecture/README.md) |
| `guides/` | 他人需要独立重复操作时，由实操过的成员整理 | [操作指南](guides/README.md) |
| `plan/` | 多项工作需要排顺序、对齐依赖或约定交接时，由版本负责人编排 | [计划及实例](plan/README.md) |
| `approvals/` | 一项操作需要明确许可时，由决定人或记录人登记范围和来源 | [授权](approvals/README.md) |
| `reviews/` | 审阅具体版本时，由评审人记录发现、结论和复审 | [评审及实例](reviews/README.md) |
| `releases/` | 产物进入指定环境时，由发布人固定版本、验证和恢复办法 | [发布及实例](releases/README.md) |
| `changes/` | 每次阶段交付时，由贡献者记录改版，负责人核实署名 | [归属和日志](changes/README.md) |

**走一遍示例。** 从[候选版计划](plan/PLAN-20260511-example-ticket-inbox.md)找到三项工作，在[评审](reviews/REVIEW-20260513-example-ticket-filter.md)查看为何退回第一个候选版，在[发布记录](releases/v0.4.0-rc.2-example.md)查到修订版进入了哪个环境。示例均为教学资料。

接手既有任务时，先看 change.md、待认领或阻塞的任务行，再按证据复验。查资料有冲突时使用[规范归属](architecture/authority.md)，编辑文档遵循[本目录约定](AGENTS.md)。
