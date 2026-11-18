# 将团队文档接入项目

## 首次接入

1. 取得模板仓库。在目标项目的现有目录执行 `sh "/path/to/ai-native-docs/scripts/install-docs.sh" .`，将脚本路径替换为本机的实际位置。
2. 在项目 README 加上 `docs/README.md` 链接。在根 AGENTS.md 登记本项目的需求、代码、真实测试入口和团队联系人。有现成规则时，将需要的协作条款合入原文。
3. 在[文档中心](../README.md)选一套教学案例，沿任务、证据、审阅和发布走一遍。创建实际工作时复制[空白模板](../_templates/change/README.md)，使用新的工作项 ID。
4. 首次阶段交付时，实际贡献者在[项目 CHANGELOG](../changes/CHANGELOG.md)留下自己的版本、工作项和证据。

## 已有项目及再次运行

脚本仅补齐缺少的文件，同名文件逐项保留。已有根 CHANGELOG 时，文档中心的日志入口可以指向它。已有 docs/changes/CHANGELOG.md 时，继续使用现有内容。新接入项目直接在 docs/changes/ 记账。

模板库自己的真实任务和交付历史留在模板库，带 `example` 的示范记录随说明一起接入。对已采用旧版模板的仓库，比较同名 README、AGENTS.md 和模板，人工合并希望采用的修订。旧工作项的 ID、原始证据和决定来源仍可继续使用。

接入后从 [功能案例](../features/FEAT-20260511-example-my-open/change.md) 追到该版评审，再从 CHANGELOG 反向追一个真实参与人的改动。如果新的目录归属与业务项目原有路径不同，可以在索引中链接原维护源。
