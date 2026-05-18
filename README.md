# Flutter Chapter 5 - 容器类组件

本项目用于学习和复现Flutter第5章「容器类组件」的各个知识点。

---

## 5.1 填充（Padding）

### 知识点说明

Padding是Flutter中用于给子组件添加填充（内边距）的组件。它可以在子组件的四周添加指定的空白区域，是布局中最常用的组件之一。

**主要特性：**
- `EdgeInsets.all(double value)`: 四个方向统一设置相同的填充值
- `EdgeInsets.only({left, top, right, bottom})`: 单独指定某一个或多个方向的填充值
- `EdgeInsets.symmetric({vertical, horizontal})`: 分别设置垂直和水平方向的填充值
- `EdgeInsets.fromLTRB(left, top, right, bottom)`: 分别指定左、上、右、下四个方向的填充值

> **实例程序来源：** [Flutter实战·第二版 - 5.1.3 示例](https://book.flutterchina.club/chapter5/padding.html#_5-1-3-%E7%A4%BA%E4%BE%8B)

### 演示效果

<div align="center">
  <table>
    <tr>
      <td align="center">
        <strong>代码截图</strong>
      </td>
      <td align="center">
        <strong>运行效果</strong>
      </td>
    </tr>
    <tr>
      <td>
        <img src="screenshots/5-1-padding-code.png" width="480" alt="代码截图" style="border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);">
      </td>
      <td>
        <img src="screenshots/5-1-padding-result.png" width="480" alt="运行效果" style="border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);">
      </td>
    </tr>
  </table>
</div>

### 核心代码示例

```dart
Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: const <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text("Hello world"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text("I am Jack"),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Text("Your friend"),
      )
    ],
  ),
)
```

---

## 目录说明

- `lib/main.dart`: 主程序入口
- `screenshots/`: 各知识点的截图素材

---

## 运行方式

```bash
flutter run -d chrome
```
