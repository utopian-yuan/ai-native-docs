# 团队开发约定

本文件供仓库成员和编码 Agent 共用。进入子目录时也读取沿途适用的 AGENTS.md。根文件保存跨团队约定，目录文件补充本模块的契约、命令和交接要求。

## 开始工作

1. 确认本次要交付的目标、目标分支和授权范围。运行 `git status --short --branch`；仓库已有提交时，用 `git rev-parse --short HEAD` 记录起点。保留其他人的未提交改动。
2. 从项目 README 和 [文档中心](docs/README.md) 定位需求、设计或契约、实现和测试入口。修改文档时读 [docs/AGENTS.md](docs/AGENTS.md)。对行为的判断核对当前版本，对是否验收的判断核对当事人的决定。两者有差异时，把具体差异写进工作项，交给负责这项决定的人。长期事实按[规范归属](docs/architecture/authority.md)回写。
3. 在 `docs/features/`、`docs/bugs/`、`docs/tasks/` 和已有 Issue 中查同一目标。讨论和评审交付结论；局部文字修订直接改相关文档；正式功能、缺陷、工程或团队规则变更复用已有工作项，或从 [四件套模板](docs/_templates/change/) 复制一套。

## 建立工作项和决定

- 用 `FEAT-YYYYMMDD-slug`、`BUG-YYYYMMDD-slug`、`TASK-YYYYMMDD-slug` 命名，分别对应 `feature`、`bug`、`task`。目录名与 `change.md` 首个 JSON 代码块中的 `id` 一致。缺陷先记复现条件、预期与实际结果。
- 在 `change.md` 写一个人类负责人的团队账号、范围和可观察的 AC 编号。账号按指派或认领记录填写，代提交时保留实际负责人。团队使用 GitHub 时，元数据使用 login，正文和 CHANGELOG 使用 `@login`。共享登录的归属向认领者核实。
- 主状态只写在 `change.md`。从草案 `proposed`、需求接受 `accepted` 进入实施 `in_progress`。阻塞时用 `blocked`，写明依赖及解除条件，恢复后回到 `in_progress`。指定人员完成最终验收才记 `done`。有明确取消决定时用 `cancelled` 并记录原因和剩余影响。
- 接受需求时在 `accepted_by / accepted_at / acceptance_ref` 留下决定人、日期和可定位的依据。最终验收另填 `verified_by / verified_at / verification_ref`。已有明确授权直接引用。工程交付待验时保持 `in_progress`，写明待谁验、验什么。Agent 可以代录明确决定。

## 并行实施和接手

1. 在共享的工作项、Issue 或草稿 PR 公示认领。每一行任务写任务号、AC、执行人、改动位置、上游依赖、下游接手人和验证方式。分支或 worktree 随团队现有流程使用。
2. 在 `design.md` 先对齐共同使用的接口、数据结构或组件。已有权威契约就链接其维护位置。范围调整时由负责人将新决定和受影响的 AC 写回 `change.md`。
3. 各人维护自己认领的任务行，用稳定的任务号和证据编号互链。同一文件出现并行修改，合入前同步目标分支，逐项保留双方的任务和证据。主状态由工作项负责人协调。
4. 接手时读最近证据，核对当前分支、实际改动、失败项和下一步。交接负责人时，在 `tasks.md` 留日期、交接双方和接续位置，再更新 `change.md` 的 `owner`。历史证据及署名保留当时记录。

## 验证和交付

- 在 `evidence.md` 针对本次 AC 记录执行人、日期、输入或版本、环境、命令或操作、实际结果和限制。修复缺陷时用同一条件复验。对失败或未覆盖的情况标明后续负责人；使用脱敏样本。
- 交付一版就更新 [CHANGELOG](docs/changes/CHANGELOG.md)。写明日期、可观察的变化、交付时的负责人和每位贡献者的账号及改动，链接工作项、本轮证据和 PR 或交付提交。同一版合写，各次改版分别追加。AI 代做的具体工作也具名记录。提交账号、负责人和贡献者分别按事实填写。
- 涉及设计、上线或恢复时，按需链接具名[评审](docs/reviews/README.md)、已有[授权](docs/approvals/README.md)、[运行记录](docs/releases/README.md)及实际证据。工作项关闭后可原地保留。需要归档时使用所属类型的 archive/，同步入口和受影响链接。
- 合入前审阅完整差异，运行项目里与本次改动相关的检查。文档改动核对引用路径、模板复制后的可用性和 `git diff --check`。把实际跑过的检查和仍待决定的事项交给下一位。
