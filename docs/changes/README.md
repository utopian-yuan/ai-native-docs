# 按交付版本和贡献者记录改版

一条 CHANGELOG 是一版可交付的变化。写明日期、用户或下游能观察到的改变、交付时的负责人、每位贡献者的具体工作，再链接工作项、当轮证据和 PR 或提交。直接提交的团队可以在生成提交后补上交付链接。

分批交付各留一条，同一批多人完成就在一条中分别署名。代写日志者从工作项和实际分工取账号。交接或改名后保留当时的历史署名，按 `@账号` 在日志中可以查到同一成员的独立及共同交付。[当前项目 CHANGELOG](CHANGELOG.md)

## 填好的教学样例

下面两条属于虚构的工单看板。教学版用可在仓库内打开的候选版记录作为版本依据。

- 05-15，快捷筛选从第二页也能正确找到 W101。负责人 @demo-qiu。贡献 @demo-qiu（重置页码）、@demo-yan（两种身份复审）、@demo-chen（测试环境冒烟）。[BUG](../bugs/BUG-20260513-example-filter-page/change.md) · [E2](../bugs/BUG-20260513-example-filter-page/evidence.md#e2) · [rc.2](../releases/v0.4.0-rc.2-example.md#rc2)
- 05-12，按当前会话查询本人待处理工单，并给出匹配总数。负责人 @demo-qiu。贡献 @demo-lin（查询与固定输入）。[FEAT](../features/FEAT-20260511-example-my-open/change.md) · [E1](../features/FEAT-20260511-example-my-open/evidence.md#e1) · [rc.1](../releases/v0.4.0-rc.2-example.md#rc1)
