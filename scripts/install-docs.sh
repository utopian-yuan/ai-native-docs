#!/bin/sh
set -eu

kit=$(CDPATH='' cd "$(dirname "$0")/.." && pwd -P)
target=$(CDPATH='' cd "${1:-.}" && pwd -P)

if [ "$kit" = "$target" ]; then
  printf '%s\n' '目标需要是另一个项目目录。' >&2
  exit 1
fi

exists() {
  [ -e "$1" ] || [ -L "$1" ]
}

copy_missing() {
  if exists "$target/$2"; then
    printf '保留 %s\n' "$2"
  else
    mkdir -p "$(dirname "$target/$2")"
    cp "$kit/$1" "$target/$2"
    printf '添加 %s\n' "$2"
  fi
}

# 保留可追读的教学工作项。模板库自身的任务和发布历史不写入新项目。
cd "$kit"
find docs -type f \( -name '*.md' -o -name '*.json' \) -print |
  while IFS= read -r path; do
    case "$path" in
      docs/*/*-example-*/*) ;;
      docs/*/TASK-*/* | docs/*/FEAT-*/* | docs/*/BUG-*/* | docs/changes/CHANGELOG.md) continue ;;
    esac
    copy_missing "$path" "$path"
  done

copy_missing AGENTS.md AGENTS.md
copy_missing CLAUDE.md CLAUDE.md

log=docs/changes/CHANGELOG.md
if exists "$target/$log"; then
  printf '保留 %s\n' "$log"
elif [ -f "$target/CHANGELOG.md" ]; then
  printf '# CHANGELOG\n\n沿用项目的 [根变更日志](../../CHANGELOG.md)。\n' > "$target/$log"
  printf '添加 %s，链接现有根日志\n' "$log"
else
  printf '# CHANGELOG\n\n按交付日期倒序记录每版变化、负责人、贡献者、证据和版本。[填写说明](README.md)\n' > "$target/$log"
  printf '添加 %s\n' "$log"
fi
