#!/bin/bash -e

log(){
    printf '%10s: %s\n' "$1" "$2"
}

log "Git" "fetching tags from remote"

git fetch --tags -q

LATEST_TAG="$(git tag -l | sort | tail -n1)"
LATEST_TAG_DATE="${LATEST_TAG:0:8}"
LATEST_TAG_REVISION="${LATEST_TAG:8:2}"

log "Latest Tag" "${LATEST_TAG} (date: ${LATEST_TAG_DATE}, rev: ${LATEST_TAG_REVISION})"

NEW_TAG_DATE="$(date '+%Y%m%d')"
NEW_TAG_REVISION="00"

if [[ "$NEW_TAG_DATE" == "$LATEST_TAG_DATE" ]]; then
    NEW_TAG_REVISION="$(printf '%02d' $((LATEST_TAG_REVISION + 1)))"
fi

NEW_TAG="${NEW_TAG_DATE}${NEW_TAG_REVISION}"

log "New Tag" "${NEW_TAG} (date: ${NEW_TAG_DATE}, rev: ${NEW_TAG_REVISION})"

log "Git" "tagging new snapshot ${NEW_TAG}"

git tag -a "${NEW_TAG}" -m "${NEW_TAG}"

log "Git" "pushing new tag to remote"

git push -q origin "${NEW_TAG}"
