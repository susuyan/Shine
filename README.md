# Shine

Automatically generates from template and imports it into Xcode project.

通过命令行的方式来初始化一个 Swift App 项目。

## Todo
* [ ] 整理初始化时的重复操作
* [ ] 编写模板代码
* [ ] 梳理初始化工作，并分出对应的子模块出来，输出到对应的Feature中

## Feature

- [x] 通过 yml 来定制项目文件夹结构
- [ ] 制作 stencil，并输出到对应的目录中
- [ ] Cocoapods 初始化工作
- [ ] Fastlane 初始化

## Installation

- **Swift Package Manager**

Add `.package(url: "https://github.com/susuyan/Shine.git", from: "0.1.0") to your Package.swift file's dependencies`.

## Usage

在你的初始项目中新建一个`shine.yml`文件，来定制你的文件结构。

```sh
// 先进入到你的项目目录下
$ shine init
```

## Command line options

- `init` 初始化文件结构
