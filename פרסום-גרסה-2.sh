#!/bin/bash
# מעלה את "גרסה-2.html" לכתובת https://noam-gever.github.io/claude-code-install/v2/
# הקובץ שעורכים הוא תמיד "גרסה-2.html". הסקריפט מעתיק אותו ל-v2/index.html ודוחף.
# index.html ברמה העליונה — הגרסה הישנה שבאוויר — לא נגעים בו.
cd "$(dirname "$0")" || exit 1
cp "גרסה-2.html" v2/index.html || exit 1
git add "גרסה-2.html" v2/index.html README.md
git commit -m "${1:-עדכון גרסה 2}" && git push
echo "→ https://noam-gever.github.io/claude-code-install/v2/"
