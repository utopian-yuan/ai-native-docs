# 接入脚本

从目标项目目录运行 `sh "/path/to/ai-native-docs/scripts/install-docs.sh" .`，也可用最后一个参数指定已存在的目标目录。脚本使用 POSIX sh，从模板库定位源文件，并输出每个文件是添加还是保留。

接入范围包括根 AGENTS.md、CLAUDE.md、文档中心、四件套及各分类中的教学案例。新项目的实际日志位于 `docs/changes/CHANGELOG.md`。如果目标已有根日志，文档中心接到它。模板库的真实历史任务和交付日志留在模板库。

修改脚本后，分别在空目录、带同名规则和历史日志的目录试跑并重复执行，核对案例链接和原有文件内容。[接入指南](../docs/guides/adoption.md)
