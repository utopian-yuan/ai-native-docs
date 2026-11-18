# ai-native-docs

一套给团队开发者和 AI 编码助手共用的 Markdown 文档模板，提炼自 EDTQ 项目的协作实践。一个需求由多人并行开发，或者做到一半换人、换 AI 会话，下一位都可以打开同一个工作项，找到已经定下来的方案、自己能接的任务和可以复验的结果。整个流程只需要 Git 和 Markdown。

第一次使用，可以先看 [三人共用的 CSV 导出工作项](examples/csv-export/FEAT-20261110-csv-export/change.md) 和 [三次改版的署名记录](examples/csv-export/CHANGELOG.md)，再取用 [四件套模板](docs/_templates/change/)。要把现有产品、架构、指南也纳入管理，可从 [文档维护入口](docs/README.md) 开始。

## 团队怎么共用四件套

一个交付目标对应一个目录。新增功能放 `docs/features/FEAT-日期-主题/`，修复缺陷放 `docs/bugs/BUG-日期-主题/`，工程和协作规则变更放 `docs/tasks/TASK-日期-主题/`。日期用八位年月日，主题用简短英文，例如 `FEAT-20261110-csv-export`。同一个目标的后续改版沿用原目录。

| 文件 | 谁在什么时候写 | 接手人从这里得到什么 |
| --- | --- | --- |
| `change.md` | 负责人开工时写目标和可观察的验收条件，范围变化或收到验收决定时更新 | 要交什么、谁负责、什么算通过。这里保存工作项唯一的主状态 |
| `design.md` | 设计者写方案，受影响的同事一起核对接口和取舍 | 已约定的行为、实现位置、还有什么待决定。已有设计直接链接 |
| `tasks.md` | 大家在同一张表里认领任务，各自更新自己的行 | 谁在改哪块、依赖谁、下一步交给谁、用哪条证据验证 |
| `evidence.md` | 谁运行检查或走查，谁追加一条具名记录 | 哪个版本、什么输入、怎么复验、实际看到了什么、还有什么未测 |

**以三个人一起做 CSV 导出为例。** 负责人先把「导出当前筛选结果」写成 AC1，并让工作项目录在共享分支或草稿 PR 中可见。接口开发者在 T1 认领后端，页面开发者在 T2 认领导出按钮，验收人在 T3 接下联调。三人读同一份设计，各用自己的分支工作。接口交付后，T1 指向 E1，页面开发者从 E1 拿到样本继续。工程检查结束后，负责人写明待验范围；指定验收人给出决定后，再更新主状态。[示例分工](examples/csv-export/FEAT-20261110-csv-export/tasks.md) · [示例证据](examples/csv-export/FEAT-20261110-csv-export/evidence.md)

两个人同时编辑时，按任务号修改自己的行，证据用不同的编号。合入前同步团队分支；如果同一处产生冲突，保留双方执行项和证据，共同核对受影响的结论。交班时在任务里留下分支或 PR、最后验证的版本、卡点和下一步。工作项负责人换人时，记录日期和交接双方，再更新 `owner`。

## 每个人的改版怎么记到 CHANGELOG

**每交付一版，就在根目录的 `CHANGELOG.md` 增加一条。** 合入团队分支、把可联调的阶段版本交给同事、发布修复，都可以构成一次交付。贡献者随自己的 PR 写，工作项负责人在合入时核对；直接提交的仓库可以链接交付提交。同一批改动从多次保存到一次交付，只需一条。交付后再次改变行为，就新增一条，让读者能看到前后两版各改了什么。

每条写清日期、改了什么、交付时的负责人、实际贡献者和各自的改动，并链接**工作项、该次证据、PR 或提交**。工程已交付、仍待人工验收时，把这个事实写在条目里。

| 遇到的情况 | 怎么署名和留痕 |
| --- | --- |
| 甲先交付接口，乙随后交付页面 | 各写一条，链接同一个工作项，分别指向各自的证据和 PR |
| 甲乙一起修一版 | 共写一条，在「贡献」里分别写 `@账号（具体改动）` |
| 甲负责，乙实施，丙代提交 | 「负责人」填甲，「贡献」填乙并写明所做改动。丙若也有实际贡献，一并列出 |
| 中途换负责人，或 AI 代写记录 | 旧条目保留当时署名。新条目用交付时的负责人；AI 执行的内容具名写明，人的决定引用当事人记录 |

在 CHANGELOG 中搜索 `@账号` 就能查个人交付。例如在本仓库运行 `git grep -F '@sample-api' -- examples/csv-export/CHANGELOG.md`，可以同时找到其独立交付的接口和参与修复的版本。点进证据即可查看验证范围。[三次改版的完整记录](examples/csv-export/CHANGELOG.md) · [本项目的真实变更记录](CHANGELOG.md)

## 把模板带进自己的项目

1. 将本仓库克隆到本地。在目标项目根目录执行下面的命令，把第一行改成模板仓库在你机器上的实际路径。新项目和已有项目都可以这样接入。

   ```sh
   kit=/path/to/ai-native-docs
   mkdir -p docs/_templates/change
   copy_missing() {
     if [ -e "$2" ] || [ -L "$2" ]; then
       printf '保留已有文件 %s\n' "$2"
     else
       cp "$1" "$2"
     fi
   }
   for name in change design tasks evidence; do
     copy_missing "$kit/docs/_templates/change/$name.md" "docs/_templates/change/$name.md"
   done
   copy_missing "$kit/AGENTS.md" AGENTS.md
   copy_missing "$kit/CLAUDE.md" CLAUDE.md
   copy_missing "$kit/docs/_templates/CHANGELOG.md" CHANGELOG.md
   ```

   命令会列出保留的同名文件。已有规则的项目由维护者合并适用条款，并在已有 `CLAUDE.md` 中按需加入 `@AGENTS.md`。已有 CHANGELOG 可以沿用原位置，同步调整规则中的路径。在项目 README 加上四件套模板、规则和变更记录的入口。

2. 先搜项目里的工作项或 Issue。同目标已有记录就接着写；新目标从模板复制四个文件。以下命令在目标项目根目录执行，只有新建工作项目录成功才会复制，防止覆盖进行中的工作。

   ```sh
   item=docs/features/FEAT-20261110-csv-export
   mkdir -p docs/features
   mkdir "$item" && cp docs/_templates/change/*.md "$item/"
   ```

3. 打开新目录的 `change.md`，把 ID 改为目录名，功能项的 `type` 填 `feature`，填写真实负责人、目标和验收条件。接着在设计中约定边界，在任务表认领第一项，把目录推到团队能看到的位置。局部文字修订可以直接沿用已有工作项或 PR。

## AGENTS.md 怎么写、怎么用

根 [AGENTS.md](AGENTS.md) 是可以带走的团队规则。它告诉 Agent 开工前查什么、改哪份记录、遇到范围分歧怎么处理、交付时拿什么证明结果。项目维护者再补上本项目真实的需求与契约入口、常用验证命令和目录例外。详细做法与改写示例见 [AGENTS.md 编写指南](docs/guides/writing-agents.md)。

Codex 会话从项目根开始，可以让它先读该文件。仓库给 Claude Code 提供一个单行 [CLAUDE.md](CLAUDE.md) 来导入同一份规则。使用 DeepSeek、GLM 等模型时，在所用编码客户端的项目指令或会话开头显式引用同一文件。换工具后可以用下面这句交接，检查新会话能否找到正确的任务和证据。[Claude Code 项目指令说明](https://code.claude.com/docs/en/memory)

> 先读根 AGENTS.md 和这个工作项的四件套。告诉我当前负责人、你准备接哪一项、上一位留下的证据，以及还有谁需要作决定。

模板、指南和示例随仓库采用 [Apache License 2.0](LICENSE)。
