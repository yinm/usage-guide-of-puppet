# 用語の説明

## クラス
* オブジェクト指向言語のクラスと似ているが、意味を持つ一連のコードブロックをまとめ、利用しやすくする側面が強い

```puppet
class クラス名 {
  # Puppetのコード
}
```

* クラスの呼び出し方は2種類ある
  * classを使った、リソースライクな呼び出し
  * includeを使った呼び出し

* classを使ったリソースライクな呼び出しは、属性を記述できる
* includeを使った呼び出しでは属性を記述できないので、チェイニングリソースを使って代替する

* puppetのクラスはシングルトンであるため、パラメータ付きクラスのパラメータを変更しても、同一のノードで複数回同じクラスを呼び出せない

