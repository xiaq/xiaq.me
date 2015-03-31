(**Work in progress; expect updates**)

补一则这个月初参加的 [FOSDEM 2015](https://fosdem.org/2015/) 的见闻。

因为有课程 ddl，只去了一个下午，先做了介绍 [elvish](https://github.com/elves/elvish) 的 lightning talk，然后去参加了一个 workshop。“回到未来：再访 Smalltalk”就是这个 workshop 的名字。

Workshop 使用的是 [Pharo](http://pharo.org/) ([Wikipedia](https://en.wikipedia.org/wiki/Pharo))，目前最活跃的开源 Smalltalk 变体。主要内容是对一个基于 [Seaside 框架](http://www.seaside.st/) 的 web 应用进行进一步开发。可惜的是这个 workshop 的录像以及它使用的 Pharo image 都暂时找不到。系统地组织文字向来不是我的特长，因此就直接在下面 dump 我的琐碎的感想：

1.  Smalltalk 对其他语言的主要影响是面向对象范式和 IDE。这两点都被很多语言学去了，但是都失去了 Smalltalk 独有的风格。

1.  Smalltalk 是“纯”面向对象语言。不光数字、字符串、数组是对象，类、函数也是对象。此外，所有的“操作”都用消息传递实现。传统的函数/过程调用是消息传递，中缀表达式、控制结构、类的继承也是消息传递。

<!-- vi: se tw=0 nolbr: -->
