# Triadica Workflow

- Demo https://r.tiye.me/Triadica/triadica-workflow/

### Usages

使用者影响：本迁移候选同步正式 Calcit/procs 0.30.1，配套已发布的 Touch Control 0.0.32、Triadica Space 0.0.44、Respo 0.16.124、Quaternion 0.2.16 和 JS-FFI 0.2.5。不引用 main/hash；模板自身版本 0.0.1 保持，不额外发模块 release。请重新安装整张图、生成 JS 并刷新，不混用旧运行时缓存。场景、shader、状态 cursor/错误处理和部署路径不变；上游渲染升级不承诺逐像素相同。

`:cube-right` 从旧 Map 裸读取改为显式处理查询的 Option：存在的数字仍递增，缺失或非数字仍报原错误，不填入默认值。HUD 保持原成功/错误展示。CI 保留规范格式、全定义检查并增加完整 strict；第三方 Action 保留正式发布对应的完整 SHA，不增加验证脚本、类型预算或强转。原项目无附带测试，静态检查和构建不等同真实 WebGL/触控交互验收；本轮不合并、部署或发版。

相对于旧 Space 0.0.40，此升级继承 0.0.42 已发布的绘制帧边界：`paint-canvas!` 返回 Unit，将绘制安排到下一浏览器帧，同一帧前请求合并并读取最新状态，不再承诺调用栈内同步绘制完成。默认 glow 保留；模板本身不另外修改该语义。

Use Node.js 24, Yarn 4.18.0 and Calcit 0.30.1. `calcit.cirru` is the source
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
