# CSV 导出示例的 CHANGELOG

这个虚构工作项由三人合作、分三次交付。按账号搜索，可以看出谁实施、谁验证、哪次交付发生在负责人交接之前。

## 2026-11-13

- 修复特殊客户名导出后错列。负责人 @sample-web。贡献 @sample-api（接口 CSV 编码）、@sample-web（页面直接下载响应）、@sample-qa（异常样本和最终复验）。本版人工验收通过。[工作项](FEAT-20261110-csv-export/change.md) · [修复证据](FEAT-20261110-csv-export/evidence.md#e4) · [验收](FEAT-20261110-csv-export/evidence.md#e5) · [PR 19](reviews.md#pr-19)

## 2026-11-12

- 订单列表支持下载 orders.csv，失败后可以重试。负责人 @sample-web。贡献 @sample-web（页面下载与重试）。已交付联调，待验收。[工作项](FEAT-20261110-csv-export/change.md) · [证据 E2](FEAT-20261110-csv-export/evidence.md#e2) · [PR 18](reviews.md#pr-18)

## 2026-11-11

- 接口按订单筛选值导出，空结果保留表头。负责人 @sample-api。贡献 @sample-api（筛选导出接口与样本验证）。可供页面接入。[工作项](FEAT-20261110-csv-export/change.md) · [证据 E1](FEAT-20261110-csv-export/evidence.md#e1) · [PR 17](reviews.md#pr-17)
