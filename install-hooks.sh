#!/bin/bash

cd .git/hooks
if [ ! -f pre-commit ]; then
    cat << 'EOF' > pre-commit
#!/bin/bash

./generate.py

git add emonTH3-floorplan.pdf
git add emonTH3-schematic.pdf
git diff --staged --name-only | xargs git add

EOF
chmod +x pre-commit
fi
