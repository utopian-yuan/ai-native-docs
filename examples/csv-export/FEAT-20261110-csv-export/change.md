# 按当前筛选条件导出订单 CSV

```json
{
  "id": "FEAT-20261110-csv-export",
  "type": "feature",
  "status": "done",
  "owner": "sample-web",
  "acceptance_owner": "sample-qa",
  "verification_owner": "sample-qa",
  "accepted_by": "sample-qa",
  "accepted_at": "2026-11-10",
  "acceptance_ref": "../reviews.md#scope",
  "verified_by": "sample-qa",
  "verified_at": "2026-11-13",
  "verification_ref": "../reviews.md#acceptance"
}
```

教学用虚构案例，账号、评审编号、样本和结果均用于演示。三位成员用同一个工作项完成接口、页面和一次联调修订。

## 目标与范围

运营同事需要导出当前已筛选的订单，现有页面只能逐条复制。此次交付筛选导出和下载失败提示。大数据量的异步导出另行评估。

| 编号 | 操作与预期 |
| --- | --- |
| AC1 | 按「已支付」筛选后导出，CSV 只含匹配订单，空结果保留表头 |
| AC2 | 页面下载文件名为 orders.csv；请求失败时显示可重试提示 |
| AC3 | 客户名含逗号或英文双引号时，下载的 CSV 可解析回原始客户名 |

## 当前进展与决定

11 月 10 日 @sample-qa 接受 AC1、AC2，@sample-api 领单。11 月 11 日接口交给页面开发者，由 @sample-web 接任负责人。11 月 12 日联调暴露客户名转义缺陷，@sample-qa 确认将 AC3 加入本轮。11 月 13 日 @sample-qa 在联合修订版上验收 AC1 至 AC3 并确认通过。[范围决定和验收原文（示例）](../reviews.md)

[共同约定](design.md) · [任务和交班](tasks.md) · [验证记录](evidence.md) · [各版交付记录](../CHANGELOG.md)
