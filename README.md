# cheminfo_tutorial_20241028

## cheminfomratics handson @ CBI2024年大会

## Breaf introduction

 This is the material for cheminformatics hands-on session at CBI2024

## Participants requirements

- Basic skill of python programming
- Basic knowledge of cheminfomratics
- Unfortunately it's difficult to support pure Windows os. The code will be tested on Linux, Mac OS and Windows WSL.

## Prerequreiment

- Install anaconda or mambaforge
- Install REINVENT ver4
- Install Autodock Vina
- Install Gypsum-DL
- Install Maize-contrib ver 0.5.5

## INSTALL

The following example uses [conda](https://docs.anaconda.com/miniconda/) for package management, but it is possible to use [mamba](https://github.com/conda-forge/miniforge) instead. mamba is a C++ re-implementation of the conda package manager, which is faster than conda but has problems with the build process in some environments.

### FOR Ubuntu24.04

#### REINVENT4

```bash
$ git clone https://github.com/MolecularAI/REINVENT4.git
$ cd REINVENT4
$ conda create --name reinvent4 python=3.10
$ conda activate reinvent4
$ pip install -r requirements-linux-64.lock
$ pip install --no-deps .
```

- _Optional_:
  - if you want to use AMD GPUs please check original repo's [README](https://github.com/MolecularAI/REINVENT4/blob/main/README.md)

#### Autodock Vina

The example put vina on /opt/vina but you can put vina any place.

```bash
$ wget https://github.com/ccsb-scripps/AutoDock-Vina/releases/download/v1.2.5/vina_1.2.5_linux_x86_64
$ sudo mkdir -p /opt/vina/bin/
$ sudo mv vina_1.2.5_linux_x86_64 /opt/vina/bin
$ sudo chmod a+x /opt/vina/bin/vina_1.2.5_linux_x86_64
$ sudo ln -s /opt/vina/bin/vina_1.2.5_linux_x86_64 /opt/vina/bin/vina
$ export PATH=/opt/vina/bin/:$PATH
```

#### Gypsum-DL

if you don't have mpi, remove mpi4py from the following command.

```bash
$ sudo apt install openmpi-bin
$ conda create --name gypsum python=3.10
$ conda activate gypsum
$ conda install -c conda-forge rdkit numpy scipy mpi4py
$ git clone https://github.com/durrantlab/gypsum_dl.git
```

#### Maize-contrib

```bash
$ git clone https://github.com/cbi-society/maize-contrib.git
$ cd maize-contrib
$ conda env create -f env-users.yml
$ conda activate maize
$ pip install --no-deps ./
$ conda install -c conda-forge pymol-open-source jupyter
```

### FOR MacOS 14.61(M3)

Set the directory to be used for the hands-on session.

```bash
$ cd ~
$ mkdir CBI
$ cd CBI
```

#### REINVENT4

```bash
$ git clone https://github.com/Mishima-syk/REINVENT4.git
$ cd REINVENT4
$ conda create --name reinvent4 python=3.11
$ conda activate reinvent4
$ pip install -r requirements-macOS.lock
$ pip install --no-deps .
```

#### Autodock Vina

```bash
$ wget https://vina.scripps.edu/wp-content/uploads/sites/55/2020/12/autodock_vina_1_1_2_mac_64bit.tar.gz
$ tar xvfz autodock_vina_1_1_2_mac_64bit.tar.gz
$ sudo mkdir -p /opt/vina/bin/
$ sudo mv autodock_vina_1_1_2_mac_catalina_64bit/bin/vina /opt/vina/bin/.
```

#### Gypsum-DL

```bash
$ sudo apt info openmpi-bin
$ conda create --name gypsum python=3.10
$ conda activate gypsum
$ conda install -c conda-forge rdkit numpy scipy
$ git clone https://github.com/durrantlab/gypsum_dl.git
```

#### Maize-contrib & Maize

```bash
$ git clone https://github.com/cbi-society/maize-contrib.git
$ cd maize-contrib
$ conda env create -f env-users.yml
$ conda activate maize
$ pip install --no-deps .
$ cd ..
$ git clone https://github.com/Mishima-syk/maize.git
$ cd maize
$ pip install --no-deps .
$ conda install -c conda-forge pymol-open-source jupyter
```

### FOR Windows 11

#### NOTE

- Following code run on WSL2. Not pure windows environment.
- WSL users should install pymol in another environment because WSL doesn't have GUI interface.
- To avoid error, I recommend to run following command before installing other packages.

```bash
# https://uwanosora22.hatenablog.com/entry/2022/03/15/125128
$ git config --global http.version HTTP/1.1
# https://web-survivor.com/useful/git-error-curl/
$ git config --global http.postBuffer 524288000

```

#### REINVENT4

```bash
$ git clone https://github.com/MolecularAI/REINVENT4.git
$ cd REINVENT4
$ conda create --name reinvent4 python=3.10
$ conda activate reinvent4
$ pip install -r requirements-linux-64.lock
$ pip install --no-deps .
```

#### Autodock Vina

The example put vina on /opt/vina but you can put vina any place.

```bash
$ wget https://github.com/ccsb-scripps/AutoDock-Vina/releases/download/v1.2.5/vina_1.2.5_linux_x86_64
$ sudo mkdir -p /opt/vina/bin/
$ sudo mv vina_1.2.5_linux_x86_64 /opt/vina/bin
$ sudo chmod a+x /opt/vina/bin/vina_1.2.5_linux_x86_64
$ sudo ln -s /opt/vina/bin/vina_1.2.5_linux_x86_64 /opt/vina/bin/vina
$ export PATH=/opt/vina/bin/:$PATH
```

#### Gypsum-DL

if you don't have mpi, remove mpi4py from the following command.

```bash
$ sudo apt install openmpi-bin
$ conda create --name gypsum python=3.10
$ conda activate gypsum
$ conda install -c conda-forge rdkit numpy scipy mpi4py
$ git clone https://github.com/durrantlab/gypsum_dl.git
```

#### Maize-contrib

```bash
$ git clone https://github.com/cbi-society/maize-contrib.git
$ cd maize-contrib
$ conda env create -f env-users.yml
$ conda activate maize
$ pip install --no-deps ./
$ conda install -c conda-forge jupyter
```

### Reference & Link

- [Anaconda](https://github.com/conda-forge/miniforge)
- [REINVENT ver4](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-024-00812-5)
- [reinvent4 Github](https://github.com/MolecularAI/REINVENT4)
- [Autodock Vina](https://vina.scripps.edu/)
- [Gypsum-DL](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-019-0358-3)
- [Gypsum-DL Github](https://github.com/durrantlab/gypsum_dl)
- [Maize-contrib](https://github.com/MolecularAI/maize-contrib)
- [Navigating the Maize: Cyclic and conditional computational graphs for molecular simulation](https://arxiv.org/pdf/2402.10064)
- [Computational chemistry workflows with Maize](https://ai-dd.eu/sites/default/files/slides/Thomas_Loehr-maize-talk.pdf)
- [useful materials](https://ai-dd.eu/lectures)

### _IMPORTANT_ Pre-requirements

- ./data以下にて配布しているxx_tmpl.tomlファイルはテンプレートファイルです。これを以下の手順に沿って各自の環境に書き換えて下さい。当日作業する場合、時間がかかりハンズオンについていけなくなる懸念があります。
- Please modify following toml files before participating hands-on training
- {put your environment here!} part should be changed as your own environment value.
- modified files should be saved as name without '_tmpl'
  - ./data/maize_tmpl.toml
  - ./data/genai/transfer_learning_tmpl.toml
  - ./data/genai/sampling_tmpl.toml
  - ./data/genai/TL_sampling_tmpl.toml
- To run the code, XDG_CONFIG_HOME variable should be set and the directory should contain maize.toml which is modefied above procedure. The procedure is shown below.

```bash
export XDG_CONFIG_HOME="{where your maize.toml placed}":$XDG_CONFIG_HOME
```

### _IMPORTANT2_ XDG_CONFIG_HOMEがうまく設定できない場合

- setenv.py内の'{where your maize.toml placed}'をご自身のmaize.tomlをおいた絶対Pathに置き換え、各ノートブックの一番最初に以下の一行を加えてください。

```python
import setenv
```

### Misc

- maize cofiguration file
  - By default Config will look for a configuration file named maize.toml in $XDG_CONFIG_HOME (usually at ~/.config/,) [detail](https://molecularai.github.io/maize/docs/userguide.html)
  - The repo provides example maize.toml for SBDD WF. We will configure it in this handson training ;-)

  ```bash
  $ echo $XDG_CONFIG_HOME
  /home/iwatobipen/.config
  $ cat /home/iwatobipen/.config/maize.toml
  # maize global configuration file example
  # Where to save temporary files and all workflow directories
  scratch = "/tmp"
  ```

- Tested OS
  - [x] Ubuntu24.04
  - [x] Ubuntu22.04
  - [ ] CentOS
  - [ ] MacOS M1
  - [ ] MacOS M2
  - [x] MacOS14 M3
  - [x] WSL on Windows11

## Author

- Kazufumi Ohkawa
- Koichiro Arai
- Natsumi Miyano
- Kazutoshi Takahashi
- Takayuki Serizawa

## 注意事項

- 利用しているパッケージはいずれも更新が頻繁にかかります。本リポジトリはCBI学会2024年大会チュートリアル用に各パッケージをフォークし作成しました。
- 今後フォーク元のコードの更新を継続的に追従し更新する保証はいたしません。
- プロダクションにあたっては、オリジナルのリポジトリを利用し最新の環境を構築されることをお勧めいたします。
- 本マテリアルに関する質問や、議論につきましてはIssue、Discussionに投稿してください。
