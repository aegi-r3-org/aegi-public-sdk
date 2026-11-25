# Confluence 사내 문서 요약: PG 재시도 지표 설계

- **문서 제목**: PG 재시도 지표 설계
- **스페이스**: ENGWIKI
- **작성자**: Jiwon Yang
- **최종 수정일**: 2026-11-24
- **원문 링크**: [Confluence 페이지 바로가기](https://aegi-inc.atlassian.net/wiki/spaces/ENGWIKI/pages/6750209/PG)

---

## 1. 개요 및 목적
결제 시스템(`payment-gateway`)에서 PG 승인 및 취소 요청 시 발생하는 타임아웃 및 망취소 재시도 횟수를 추적하여 결제 안정성을 모니터링하기 위한 지표 설계입니다.

---

## 2. 주요 사양

| 항목 | 내용 |
|---|---|
| **지표 이름** | `pg_timeout_retry_total` |
| **지표 설명** | PG 타임아웃 망취소 재시도 횟수 |
| **수집 위치** | `payment-gateway` 의 PG 승인·취소 호출부 (재시도 직전 카운터 증가) |
| **알림 기준** | 5분 동안 재시도율 5% 초과 시 알림 발생 |

---

*본 문서는 Confluence 사내 문서를 요약하여 자동으로 생성되었습니다.*
