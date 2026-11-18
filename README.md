# ai-native-docs

给团队开发者和 AI 编码助手共用的一套项目文档。一个目标从认领到交付有固定位置，同事换分支、换人或换 AI 会话，都能查清谁改了什么、哪一版验证过、还等谁作决定。日常编辑用 Markdown，历史由 Git 保存。

## 第一次使用

想看一个版本怎样协作，可以跟着「工单看板」案例走一遍。产品提出「我的待办」，两位开发者分做接口和页面。测试人员从列表第二页切换筛选，发现一条明明存在的工单消失了。团队留下复现、修订、复审和候选版发布记录。所有带 `example` 的文件或目录均为教学案例，账号、版本及运行结果为虚构。

| 想看什么 | 从哪里开始 |
| --- | --- |
| 这轮为什么做、哪些工作相互依赖 | [版本计划](docs/plan/PLAN-20260511-example-ticket-inbox.md) |
| 功能、缺陷和工程任务分别怎么写 | [我的待办](docs/features/FEAT-20260511-example-my-open/change.md) · [切换筛选后误显空页](docs/bugs/BUG-20260513-example-filter-page/change.md) · [四单冒烟样本](docs/tasks/TASK-20260512-example-filter-smoke/change.md) |
| 怎样复审一个缺陷、决定候选版是否可用 | [候选版评审](docs/reviews/REVIEW-20260513-example-ticket-filter.md) · [测试环境发布记录](docs/releases/v0.4.0-rc.2-example.md) |
| 已验收和已取消的工作怎样留档 | [已交付功能](docs/features/archive/FEAT-20260506-example-ticket-owner/change.md) · [已修缺陷](docs/bugs/archive/BUG-20260507-example-unassigned-label/change.md) · [取消的工程方案](docs/tasks/archive/TASK-20260508-example-queue-snapshot/change.md) |

## 接入自己的仓库

克隆模板仓库后，在目标项目根目录运行接入脚本，把路径换成模板库在本机的位置。

```sh
sh "/path/to/ai-native-docs/scripts/install-docs.sh" .
```

脚本复制团队规则、文档目录、模板和教学案例，逐项跳过已有同名文件。项目已有根 CHANGELOG 时，文档中心可沿用它。接入后在自己的 README 添加 `docs/README.md` 入口，并在 AGENTS.md 补上真实的模块、测试和部署命令。[接入说明](docs/guides/adoption.md)

## 团队怎样共用一套工作项

一个交付目标对应一个目录。新增或改变用户能力用 FEAT，现状偏离既定预期用 BUG，发布准备、基建或治理用 TASK。先在活动区、对应的 archive 和 Issue 中查同一目标。新目标从项目根复制模板，下例创建一个工程任务。

```sh
item=docs/tasks/TASK-20261118-smoke-handoff
mkdir "$item" && cp docs/_templates/change/*.md "$item/"
```

目录里有一份阅读入口和四份工作文档。把 `change.md` 的 ID 改为目录名，填实际负责人和验收条件，再把认领结果放到团队可见的分支、Issue 或 PR。[模板填写说明](docs/_templates/README.md)

| 阶段 | 谁写、写在哪里 | 下一位能据此做什么 |
| --- | --- | --- |
| 接受工作 | 负责人在 `change.md` 写目标、范围、风险和编号验收条件（AC），引用决定人和依据 | 看懂允许做什么、怎样判断完成 |
| 商定方案 | 提供方与使用方在 `design.md` 约定流程、接口、状态、方案取舍和回滚 | 在不同分支按同一约定开发 |
| 各自实施 | 每人认领 `tasks.md` 的任务行，标出依赖、交付对象和验证方式 | 找到能接的一项工作，知道卡点找谁 |
| 验证和交班 | 执行人在 `evidence.md` 具名记录版本、输入、操作、结果和限制 | 重做上次验证，区分阶段交付与最终验收 |

同一目标的后续改版继续写原工作项。改自己认领的任务行，验证按证据编号追加。换负责人时在任务里记交接双方、分支和下一步，再改 `owner`。合并并行编辑时保留双方记录。只有指定验收人作出决定后，负责人才能把工作项记为 `done`。

## 每个人的改版怎样进入 CHANGELOG

可联调的阶段版、合入的行为改动或正式发布，每交付一版就记一条。写日期、变化、当时的负责人、各位贡献者的账号及各自的改动，链接工作项、本轮证据和 PR 或提交。甲先交接口、乙后交页面，就写两条。甲乙合作修同一版，就同条分列。代提交、AI 代写、后来换负责人，都沿用交付当时的实际署名。按 `@账号` 搜索即可回查贡献。[带版本和证据的署名样例](docs/changes/README.md) · [本仓库的真实交付记录](docs/changes/CHANGELOG.md)

## 文档从哪里进

```text
docs/
  _templates/     建工作项时复制的四件套
  plan/           本期目标、里程碑和跨团队依赖
  architecture/   系统现状、接口契约、架构决定和配图
  features/       要交付的新能力及其归档
  bugs/           有复现输入的缺陷及其归档
  tasks/          工程交付和治理任务及其归档
  guides/         他人可以照着复做的操作指南
  approvals/      谁授权在哪个范围执行什么动作
  reviews/        对哪版提出了什么发现，怎样复审
  releases/       哪套产物进入哪个环境，如何回退
  changes/        每次改版及其贡献者
```

开发者按任务查阅[文档中心](docs/README.md)，编码 Agent 从根 [AGENTS.md](AGENTS.md) 读取协作规则。Claude Code 的 [CLAUDE.md](CLAUDE.md) 引用同一份规则，其他编码客户端也可在项目指令中显式引用。许可见 [Apache License 2.0](LICENSE)。
