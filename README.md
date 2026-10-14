# Triadica Workflow

- Demo https://r.tiye.me/Triadica/triadica-workflow/

### Usages

使用者影响：本迁移候选同步正式 Calcit/procs 0.29.3，配套 Touch Control 0.0.30、Triadica Space 0.0.43、Respo 0.16.120、Quaternion 0.2.13 和 JS-FFI 0.2.3。该依赖图须在前置 Space 0.0.43 正式发布后使用，不引用 main/hash；模板自身版本 0.0.1 保持，不额外发模块 release。原场景源码、状态 cursor/错误处理和部署路径不变。

相对于旧 Space 0.0.40，此升级继承 0.0.42 已发布的绘制帧边界：`paint-canvas!` 返回 Unit，将绘制安排到下一浏览器帧，同一帧前请求合并并读取最新状态，不再承诺调用栈内同步绘制完成。默认 glow 保留；模板本身不另外修改该语义。

Use Node.js 24, Yarn 4.18.0 and Calcit 0.29.3. `calcit.cirru` is the source
Snapshot and `deps.cirru` pins formal module releases.

```bash
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
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
