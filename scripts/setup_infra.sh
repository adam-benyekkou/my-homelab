#!/bin/bash

# Define the root of your empire
BASE_DIR="/opt/infrastructure"

echo "🚀 Initializing professional infrastructure at $BASE_DIR..."

# 1. Create the Directory Hierarchy
# We use -p to ensure no errors if folders already exist
directories=(
    "$BASE_DIR/stacks"       # Docker Compose files
    "$BASE_DIR/data"         # Persistent app data (DBs, configs)
    "$BASE_DIR/config"       # Shared configs (Traefik rules, etc.)
    "$BASE_DIR/scripts"      # Automation scripts (Backups, Updates)
    "$BASE_DIR/backups"      # Local backup landing zone
)

for dir in "${directories[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        echo "✅ Created: $dir"
    else
        echo "ℹ️ Exists: $dir"
    fi
done

# 2. Set Permissions
# Ensuring root owns the system files but keep it accessible
chown -R root:root $BASE_DIR
chmod -R 755 $BASE_DIR

# 3. Create a Global .env Template
if [ ! -f "$BASE_DIR/.env" ]; then
    cat <<EOF > "$BASE_DIR/.env"
# GLOBAL INFRASTRUCTURE VARIABLES
DOMAIN=cavydev.com
EMAIL=your-email@example.com
TZ=Europe/Paris
INFRA_PATH=$BASE_DIR
EOF
    echo "📝 Created global .env file at $BASE_DIR/.env"
fi

# 4. Create a professional README
if [ ! -f "$BASE_DIR/README.md" ]; then
    cat <<EOF > "$BASE_DIR/README.md"
# 🏗 Infrastructure: Cavydev
Managed by Adam Benyekkou.

## 📂 Structure
- **/stacks**: Docker Compose deployments.
- **/data**: Persistent volumes for containers.
- **/scripts**: Automation and maintenance.

## 🚀 Deployment
To start a service:
\`cd stacks/<service> && docker compose up -d\`
EOF
    echo "📖 Created README.md"
fi

echo "✨ Infrastructure is ready! You can now move your stacks into $BASE_DIR/stacks"
