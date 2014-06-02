oraclejdk Cookbook
=======================

このCookbookはOracle版JDKをインストールします。
実際に運用で利用する場合は、
1. このCookbookを複製してgit上に保存
2. OracleのサイトからJDKをダウンロードし、Cookbookに追加
3. chefから呼び出して適用
という流れで利用する事を想定しています。

Requirements
------------

対応するOSは、CentOSです。

Attributes
----------
#### chef-infobright::install
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:oraclejdk][:version]</tt></td>
    <td>String</td>
    <td>OracleJDKのバージョン</td>
    <td><tt>7u25</tt></td>
  </tr>
</table>

Usage
-----
#### chef-oraclejdk::default
OracleJDKをインストールします。

Just include `oraclejdk` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[oraclejdk]"
  ]
}
```

License and Authors
-------------------
Authors: Takeshi Mikami
