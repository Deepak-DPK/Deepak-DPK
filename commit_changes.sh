#!/bin/bash
set -e

DATEBASE="2026-02-28"
cd /home/deepak/Desktop/Deepak-DPK

# COMMIT 1: Remove "Data Engineer" from typing SVG
D="${DATEBASE}T09:15:00+05:30"
sed -i 's/lines=Python+Developer;Road+to+Data+Engineer/lines=Python+Developer;Building+%26+Learning/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: remove data engineer from typing animation"

# COMMIT 2: Remove short-term goal "Data Engineer" line
D="${DATEBASE}T09:22:00+05:30"
sed -i '/🎯 Short-term goal: \*\*Data Engineer\*\*/d' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: remove data engineer short-term goal"

# COMMIT 3: Add new short-term goal — Backend Developer
D="${DATEBASE}T09:30:00+05:30"
sed -i '/☕ Familiar with/a - 🎯 Short-term goal: **Backend Developer**' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: add backend developer as short-term goal"

# COMMIT 4: Update typing SVG — add Backend Developer tag
D="${DATEBASE}T09:45:00+05:30"
sed -i 's/lines=Python+Developer;Building+%26+Learning/lines=Python+Developer;Backend+Developer;Building+%26+Learning/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "style: update typing svg with backend developer tag"

# COMMIT 5: Update currently learning — add Docker
D="${DATEBASE}T10:05:00+05:30"
sed -i 's/Currently learning \*\*FastAPI\*\* \& \*\*SQL\*\*/Currently learning **FastAPI**, **SQL** \& **Docker**/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: add docker to currently learning"

# COMMIT 6: Add fastapi to tech stack icons
D="${DATEBASE}T10:20:00+05:30"
sed -i 's/i=python,java,mysql,mongodb,git,github,bash,linux,windows,figma/i=python,fastapi,java,mysql,mongodb,git,github,bash,linux,windows,figma/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: add fastapi to tech stack icons"

# COMMIT 7: Add docker to tech stack icons
D="${DATEBASE}T10:35:00+05:30"
sed -i 's/i=python,fastapi,java,mysql,mongodb,git,github,bash,linux,windows,figma/i=python,fastapi,java,mysql,mongodb,docker,git,github,bash,linux,windows,figma/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: add docker to tech stack icons"

# COMMIT 8: Add vscode to tech stack icons
D="${DATEBASE}T10:50:00+05:30"
sed -i 's/i=python,fastapi,java,mysql,mongodb,docker,git,github,bash,linux,windows,figma/i=python,fastapi,java,mysql,mongodb,docker,git,github,vscode,bash,linux,windows,figma/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: add vscode to tech stack icons"

# COMMIT 9: Update perline count for tech stack
D="${DATEBASE}T11:05:00+05:30"
sed -i 's/perline=10/perline=13/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "style: adjust tech stack icons per line"

# COMMIT 10: Update motto quote
D="${DATEBASE}T11:20:00+05:30"
sed -i 's/💡 \*"1% better everyday than yesterday"\*/💡 *"Code, Break, Learn, Repeat — 1% better every day"*/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: update personal motto"

# COMMIT 11: Simplify Gen AI line
D="${DATEBASE}T11:40:00+05:30"
sed -i 's/🤖 Exploring \*\*Gen AI\*\*, \*\*Prompt Engineering\*\* \& \*\*Agentic Tools\*\*/🤖 Exploring **Gen AI** \& **Agentic Tools**/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: simplify gen ai exploration line"

# COMMIT 12: Clean up featured repo descriptions
D="${DATEBASE}T12:00:00+05:30"
sed -i 's/Python — Beginner to Mastery/Python — From Basics to Advanced/' README.md
sed -i 's/Java — Fundamentals \& DSA/Java — Core Concepts \& DSA/' README.md
sed -i 's/SQL — Practice \& Queries/SQL — Hands-on Practice/' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "docs: clean up featured repo descriptions"

# COMMIT 13: Final cleanup — trailing whitespace
D="${DATEBASE}T12:15:00+05:30"
sed -i 's/[[:space:]]*$//' README.md
git add -A
GIT_AUTHOR_DATE="$D" GIT_COMMITTER_DATE="$D" git commit -m "style: final cleanup and formatting" --allow-empty

echo ""
echo "✅ All 13 commits created!"
echo ""
git log --format="%h %aI %s" -13
