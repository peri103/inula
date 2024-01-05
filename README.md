# openInula 代码贡献规范审查

## 运行环境配置

仓库克隆下来之后，首先运行 `pnpm install` 安装运行所需的依赖项。然后运行 `pnpm run test::inula` 即可运行 inula 包中的所有测试用例，如果想查看测试覆盖率报告，运行 `pnpm run test::inula-jest` 后既可以在命令行中查看结果，也可以在 `packages/inula/coverage/lcov-report/index.html` 中查看更为详细的报告。

## GitHub Actions

我们所构建的 Github Actions 持续集成位于 `.github/workflows` 中，分为 `autoTest.yaml`（测试通过及覆盖率审查），`checkTestCases.yml`（测试相关命名规范审查）和 `checkCommit.yml`（提交信息规范审查）。
