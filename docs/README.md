# 项目文档中心

团队成员和 AI 编码助手从这里定位当前任务需要的文档。项目级行为查[根规则](../AGENTS.md)，移动、更新和引用文档查[文档维护约定](AGENTS.md)。每类资料由一处维护，其他页面链接到它。

## 按任务阅读

| 我现在要做什么 | 起点和接续 |
| --- | --- |
| 入职或接手项目 | [产品简报](product/product-brief.md) → [系统概览](architecture/system-overview.md) → [开发与交接](guides/development.md) |
| 确认本期做什么、何时交付 | [MVP 基线](product/mvp/scope.md) → [需求卡](product/mvp/requirements/README.md) → [路线图](plan/roadmap.md) |
| 准备功能、缺陷或工程任务 | [工作项模板](_templates/README.md) → [功能](features/README.md) / [缺陷](bugs/README.md) / [工程任务](tasks/README.md) |
| 改接口、模型或数据 | [契约](architecture/contracts/README.md) → [架构决策](architecture/decisions/README.md) → [数据接入](data/README.md) |
| 验证、评审或申请执行授权 | [验证指南](guides/verification.md) → [评审](reviews/README.md) / [决定和授权](approvals/README.md) |
| 发布、核对版本或恢复 | [发布记录](releases/README.md) → [运维手册](guides/operations.md) → [CHANGELOG](changes/CHANGELOG.md) |
| 查原件、设计草案或旧方案 | [参考资料](references/README.md) / [AI 设计与计划](superpowers/README.md) / [历史归档](archive/README.md) |

## 目录职责

| 目录 | 维护内容 |
| --- | --- |
| [`product/`](product/README.md) | 产品目标、术语、MVP 范围、需求与业务验收条件 |
| [`architecture/`](architecture/README.md) | 技术现状、设计、权威归属、跨模块契约、ADR 和架构资产 |
| [`plan/`](plan/README.md) | 路线图、阶段依赖、开发分工与里程碑 |
| [`features/`](features/README.md) | 新能力与用户行为变更的四件套，含完成及取消记录 |
| [`bugs/`](bugs/README.md) | 复现、修复与回归的四件套，含历史缺陷 |
| [`tasks/`](tasks/README.md) | 基建、治理、部署和跨模块工作四件套，含历史任务 |
| [`data/`](data/README.md) | 数据架构、来源、接入、数据契约、运维与专项工作项 |
| [`guides/`](guides/README.md) | 可复做的开发、联调、使用、验证与运维步骤 |
| [`references/`](references/README.md) | 原始资料、采集来源、样本数据、标准与原型 |
| [`reviews/`](reviews/README.md) | 对具体版本的评审发现、结论和跟进 |
| [`approvals/`](approvals/README.md) | 有明确授权要求的动作或重要决定及其依据 |
| [`reports/`](reports/README.md) | 带日期、版本、输入及限制的验证、审计、观察和评测 |
| [`releases/`](releases/README.md) | 版本产物、部署、迁移、回滚、冒烟和人工验收边界 |
| [`changes/`](changes/README.md) | 各次交付的影响、证据与人员署名 |
| [`superpowers/`](superpowers/README.md) | AI 辅助产出的规格与计划，供评审和接续 |
| [`archive/`](archive/README.md) | 被替代的架构、计划和运行方案 |
| [`_templates/`](_templates/README.md) | 工作项、证据附件和新项目变更日志模板 |

目录内的索引负责导航。需要判断内容冲突时，先定位 [各项事实的维护来源](architecture/authority.md)。
