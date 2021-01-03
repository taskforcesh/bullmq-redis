#! /bin/bash
# ./zig build-lib bullmq.zig -target x86_64-linux -dynamic -Bsymbolic -I. -lc
# ./zig build-lib hello.zig -target x86_64-linux -dynamic -I. -lc -Bsymbolic

# Exit bash on errors
set -euo pipefail
zig build-lib -lc -dynamic -isystem . src/bullmq.zig
