# 参考仓库目录对照

目录来自 EDTQ 和 grant-pilot 的 `docs/`。下表路径均相对 `docs/`。逐个工作项、版本包、原型批次和运行结果由可复制的目录或模板承接。按项目实际需要为这些实例分配自己的 ID 和版本。

## 一级目录

| 参考项目 | 参考路径 | 通用入口 |
| --- | --- | --- |
| 两边共有 | `_templates/`、`architecture/` | [模板](../_templates/README.md) · [架构](../architecture/README.md) |
| 两边共有 | `archive/`、`changes/` | [历史资料](../archive/README.md) · [变更记录](../changes/README.md) |
| 两边共有 | `features/`、`bugs/`、`tasks/` | [功能](../features/README.md) · [缺陷](../bugs/README.md) · [工程任务](../tasks/README.md) |
| 两边共有 | `guides/`、`plan/`、`product/`、`reports/` | [指南](README.md) · [计划](../plan/README.md) · [产品](../product/README.md) · [报告](../reports/README.md) |
| EDTQ | `data/`、`references/`、`superpowers/` | [数据](../data/README.md) · [参考资料](../references/README.md) · [AI 设计计划](../superpowers/README.md) |
| grant-pilot | `approvals/`、`releases/`、`reviews/` | [授权](../approvals/README.md) · [发布](../releases/README.md) · [评审](../reviews/README.md) |

## 子目录及实例

| 参考项目 | 参考路径或目录形态 | 通用位置 |
| --- | --- | --- |
| 两边共有 | `_templates/change/` | 保持四个文件，[四件套](../_templates/change/) |
| 两边共有 | `architecture/contracts/`、`architecture/decisions/` | [契约](../architecture/contracts/README.md) · [ADR](../architecture/decisions/README.md) |
| EDTQ | `architecture/assets/` 及按技术方案版本的附件 | [架构资产](../architecture/assets/README.md) · [按版本分组](../architecture/assets/system-design/README.md) |
| EDTQ | `archive/architecture/`、`archive/architecture/assets/` 及历史技术方案版本 | [历史架构](../archive/architecture/README.md) · [历史附件](../archive/architecture/assets/README.md) · [版本分组](../archive/architecture/assets/versioned-design/README.md) |
| EDTQ | `archive/plans/` | [历史计划](../archive/plans/README.md) |
| grant-pilot | `archive/harness-design-版本/` | [历史运行时和工具链](../archive/runtime-design/README.md) |
| 两边共有 | `features/FEAT-…/`、`bugs/BUG-…/`、`tasks/TASK-…/`，包括历史上放在 tasks 的异类工作项 | 原 ID 与四件套，入口见 [功能](../features/README.md)、[缺陷](../bugs/README.md)、[工程任务](../tasks/README.md) |
| grant-pilot | `features/archive/`、`bugs/archive/`、`tasks/archive/` 及各自历史工作项 | [功能归档](../features/archive/README.md) · [缺陷归档](../bugs/archive/README.md) · [工程任务归档](../tasks/archive/README.md) |
| 两边共有 | 工作项内的 `assets/` 和 `evidence-assets/` | [设计附件目录](../_templates/work-item-assets/assets/README.md) · [验证附件目录](../_templates/work-item-assets/evidence-assets/README.md) |
| EDTQ | `data/tasks/` 及数据侧工作项 | [数据专项任务](../data/tasks/README.md) |
| EDTQ | `guides/assets/` 及用户手册附件 | [指南附件](assets/README.md) · [用户手册截图](assets/user-manual/README.md) |
| EDTQ | `plan/assets/` | [计划附件](../plan/assets/README.md) |
| EDTQ | `product/mvp/`、`product/mvp/requirements/` | [MVP](../product/mvp/README.md) · [需求卡](../product/mvp/requirements/README.md) |
| EDTQ | `references/collection/`、文档索引中的政策数据批次入口 | [来源采集](../references/collection/README.md) · [数据与批次](../references/datasets/README.md) |
| EDTQ | `references/product/`、`references/product/prototypes/` | [产品原始资料](../references/product/README.md) · [交互原型](../references/product/prototypes/README.md) |
| EDTQ | 管理端、用户端的原型及各自 `assets/` | [管理端](../references/product/prototypes/admin-console/README.md) · [管理端附件](../references/product/prototypes/admin-console/assets/README.md) · [用户工作区](../references/product/prototypes/user-workspace/README.md) · [用户端附件](../references/product/prototypes/user-workspace/assets/README.md) |
| EDTQ | 审阅工作台原型、产品资料中的独立后台预览 | [审阅工作台](../references/product/prototypes/review-workbench/README.md) · [产品预览](../references/product/previews/README.md) |
| EDTQ | `references/qualifications/` 及单个认证标准专题 | [行业标准和资质来源](../references/standards/README.md) · [单项框架资料](../references/standards/frameworks/README.md) |
| 两边共有 | `reports/assets/` 及按 Agent 回归、接入、部署和任务保存的附件批次 | [报告附件](../reports/assets/README.md) · [按批次归档](../reports/assets/by-run/README.md) |
| EDTQ | `superpowers/plans/`、`superpowers/specs/` | [执行计划](../superpowers/plans/README.md) · [设计规格](../superpowers/specs/README.md) |
| grant-pilot | `releases/<日期和版本>/` 的内部发布快照 | [发布目录模板](../releases/release-template/README.md) · [产物清单](../releases/release-template/release-manifest.json) |

EDTQ 的 `docs/AGENTS.md` 与 `docs/CLAUDE.md` 也有对应文件。[文档维护约定](../AGENTS.md) · [Claude 入口](../CLAUDE.md)
