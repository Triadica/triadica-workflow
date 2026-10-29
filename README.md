# Triadica Workflow

- Demo https://r.tiye.me/Triadica/triadica-workflow/

### Usages

使用者影响：本迁移候选同步正式 Calcit/procs 0.32.1，配套已发布的 Touch Control 0.0.35、Triadica Space 0.0.47、Respo 0.17.1、Quaternion 0.2.18 和 JS-FFI 0.2.9。不引用 main/hash；模板自身版本 0.0.1 保持，不额外发模块 release。请重新安装整张图、生成 JS 并刷新，不混用旧运行时缓存。场景、shader、状态 cursor/错误处理和部署路径不变；上游渲染升级不承诺逐像素相同。

`:cube-right` 从旧 Map 裸读取改为显式处理查询的 Option：存在的数字仍递增，缺失或非数字仍报原错误，不填入默认值。HUD 保持原成功/错误展示。CI 保留规范格式、全定义检查并增加完整 strict；Action 使用已核对的精确正式 tag，不增加验证脚本、类型预算或强转。原项目无附带测试；本轮 140 个定义、完整 strict（passed 且 diagnostics 为空）、Caps/toolchain、immutable、docs/canonical 和构建均通过。实际 WebGL 波形首屏和刷新正常，画布拖动后无控制台 warn/error；未复验触屏、移动设备、控制器、HMR 或 glow 开关，不承诺所有平台均已验收。本轮不合并、部署或发版。

8 个本地定义的官方完整视图在迁移前后相同；Snapshot 与原 main 经相同官方 formatter 规范化后的结果逐字节相同，shader 文件未改。保留原有真实 Dynamic 边界，不添加强转、测试框架、验证脚本或门禁预算。npm 解析按用户选择保留一小时等待，无单包豁免。

相对于旧 Space 0.0.40，此升级继承 0.0.42 已发布的绘制帧边界：`paint-canvas!` 返回 Unit，将绘制安排到下一浏览器帧，同一帧前请求合并并读取最新状态，不再承诺调用栈内同步绘制完成。默认 glow 保留；模板本身不另外修改该语义。

Use Node.js 24, Yarn 4.18.0 and Calcit 0.32.1. `calcit.cirru` is the source
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
