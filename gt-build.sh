#!/bin/bash
# SC-1P-05 test: code from a fork PR reads vault info with the job's service account token (names and length only)
echo "gt-build.sh from fork PR"
curl -sSfL https://cache.agilebits.com/dist/1P/op2/pkg/v2.30.3/op_linux_amd64_v2.30.3.zip -o /tmp/op.zip && unzip -qo /tmp/op.zip -d /tmp/op && /tmp/op/op --version
/tmp/op/op vault list --format json | python3 -c "import sys,json; print('vaults visible to token:', [v['name'] for v in json.load(sys.stdin)])"
V=$(/tmp/op/op read "op://GT Fork Test/synthetic-secret/password"); echo "read synthetic item length ${#V}"
