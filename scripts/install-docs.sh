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

# 枚举模板库维护的文档结构，应用仓库自己的记录留在模板库。
cd "$kit"
find docs -type f \( -name '*.md' -o -name '*.json' \) -print |
  while IFS= read -r path; do
    case "$path" in
      docs/tasks/TASK-*/* | docs/changes/CHANGELOG.md) continue ;;
    esac
    copy_missing "$path" "$path"
  done

copy_missing AGENTS.md AGENTS.md
copy_missing CLAUDE.md CLAUDE.md

log=docs/changes/CHANGELOG.md
if exists "$target/CHANGELOG.md" && ! exists "$target/$log"; then
  printf '# CHANGELOG\n\n沿用项目的 [根变更日志](../../CHANGELOG.md)。\n' > "$target/$log"
  printf '添加 %s，链接现有根日志\n' "$log"
else
  copy_missing docs/_templates/CHANGELOG.md "$log"
  copy_missing CHANGELOG.md CHANGELOG.md
fi
