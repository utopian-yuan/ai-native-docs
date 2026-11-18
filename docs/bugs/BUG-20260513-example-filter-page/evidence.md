# 从第二页切换「我的待办」误显空列表 · 验证

> 教学案例。账号、候选版本和结果为虚构。

## E1

5 月 13 日 @demo-yan 在 rc.1 测试环境以林登录，页长 2，翻到第 2 页再切换「我的待办」。请求带 page=2，返回 items=[]、total=1，页面显示空状态。预期见 AC1，评审要求修订。

## E2

5 月 15 日，同一检查人、[同一批样本](../../tasks/TASK-20260512-example-filter-smoke/design.md#四单样本)，改测 rc.2。林的第一次筛选请求 page=1、items=[W101]、total=1。陈的结果 page=1、items=[]、total=0，页面显示空状态。两条 AC 在测试环境通过。[复审结论](../../reviews/REVIEW-20260513-example-ticket-filter.md#复审)

## 验收

覆盖桌面列表两种身份。生产环境发布与业务签收尚待团队决定。
