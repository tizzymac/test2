#!/bin/bash
# Reset test2 on GitHub
gh repo delete tizzymac/test2 --yes
gh repo create tizzymac/test2 --public --no-readme

# Reset local remote config back to repoA
cd /path/to/test   # update this to your actual path
git remote remove repoB 2>/dev/null
git remote set-url origin https://github.com/tizzymac/test

echo "✅ test2 reset and local remote restored"