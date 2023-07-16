# Repo Sync 自用修复版

因原仓库更新后无法使用，已恢复到上个可用版本（`0ed50071a5`）。

原仓库∶https://github.com/yehan68/yehan-repo-sync

原作者∶[Ye Han](https://github.com/yehan68)

用于将当前仓库同步到指定的仓库的 action. 

## Usage

### GitHub Actions
```
# File: .github/workflows/repo-sync.yml

name: "Git Repository Sync"
on:
  push:
jobs:
  repo-sync:
    runs-on: ubuntu-latest
    steps:
    - name: repo-sync
      uses: hmsjy2017/repo-sync@v1
      with:
        source_repo_url: git@github.com:${{ github.repository }}.git
        source_branch: master
        destination_repo_url: git@gitee.com:charleszht/test001.git
        destination_branch: master
        ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
```

###  GitHub Actions 参数说明
```
source_repo_url 需要同步的仓库地址

source_branch: 需要同步的仓库分支
destination_repo_url: 目标仓库地址
destination_branch: 目标仓库分支
ssh_private_key: 将本地 .ssh 文件夹中的 id_rsa 添加到仓库的secret中（同时需要将对应的 id_rsa.pub 添加到目标 git 仓库的 ssh keys 中）
```
