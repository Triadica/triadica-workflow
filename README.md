# Triadica Workflow

- Demo https://r.tiye.me/Triadica/triadica-workflow/

### Usages

Use Node.js 24, Yarn 4.18.0 and Calcit 0.29.0. `calcit.cirru` is the source
Snapshot and `deps.cirru` pins formal module releases.

```bash
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs --strict-types
calcit js
yarn vite
```

shader files in [`shaders/`](shaders/).

For live source/shader generation use `calcit js --watch --watch-dir shaders/`
alongside `yarn vite`. Generated `js-out/` and `dist/` are not committed.

State widgets dispatch a `List<Tag>` cursor and their state payload. The old
tagged `:states` placeholder was invalid; it is not a cursor alias. The retained
`:cube-right` scaffold requires an existing numeric `:v`, rather than silently
introducing a default. Unknown operations warn without resetting the store.

Production JS/CSS use `https://cos-sh.tiye.me/Triadica/triadica-workflow/assets/`.
The original page destination remains `/web-assets/repo/Triadica/triadica-workflow/`.
Only main deploys; PRs check and build without accessing deployment secrets.
Configure `COS_BUCKET`, `COS_SECRET_ID`, `COS_SECRET_KEY` and the existing
`rsync_private_key` at repository or organization level. The COS action itself
verifies uploaded assets through the public URL; no separate verifier is needed.

### Workflow

https://github.com/Triadica/triadica-workflow

### License

MIT
