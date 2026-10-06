#!/bin/bash
set -euo pipefail

OUTPUT_DIR="."

EXPORT_ARGS=()
while [[ $# -gt 0 ]]
do
    case "$1" in
        -o)
            shift
            OUTPUT_DIR="$1"
            ;;
        *)
            EXPORT_ARGS+=("$1")
            ;;
    esac

    shift
done

NAME=$(grep '^name\s*=' pyproject.toml | sed -e 's/name\s*=\s*"\(.*\)"/\1/')

COMMIT_HASH=$(git rev-parse HEAD)
COMMIT_ID=${COMMIT_HASH:0:12}

DATE=$(date '+%Y%m%d%H%M')

SBOM_NAME="${NAME}-${COMMIT_ID}-${DATE}.sbom.json"

mkdir -p "${OUTPUT_DIR}"

uv export --format cyclonedx1.5 "${EXPORT_ARGS[@]}" > "${OUTPUT_DIR}/${SBOM_NAME}"
