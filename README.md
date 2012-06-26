testRuby [![Build Status](https://secure.travis-ci.org/OGIS-RI-IWAO/testRuby.png)](http://secure.travis-ci.org/OGIS-RI-IWAO/testRuby)
======================
RSpec test on Travis CI

Note: Use rspec-rails-1.3 for rails-2.

Usage
------
### インライン ###
`gem install rspec-rails`

### ブロックレベル ###
    function f () {
        alert(0);  /* 先頭に4文字のスペース、
                      もしくはタブを挿入します */
    }

パラメータの解説
----------------
リストの間に空行を挟むと、それぞれのリストに `<p>` タグが挿入され、行間が
広くなります。
 
    def MyFunction(param1, param2, ...)
 
+   `param1` :
    _パラメータ1_ の説明
 
+   `param2` :
    _パラメータ2_ の説明

### 引用、ネストした引用
> これは引用です。
>
> > スペースを挟んで `>` を重ねると、引用の中で引用ができますが、
> > GitHubの場合、1行前に空の引用が無いと、正しくマークアップされません。
 
ライセンス
----------
Copyright &copy; 2011 xxxxxx
Licensed under the [Apache License, Version 2.0][Apache]
Distributed under the [MIT License][mit].
Dual licensed under the [MIT license][MIT] and [GPL license][GPL].
 
[Apache]: http://www.apache.org/licenses/LICENSE-2.0
[MIT]: http://www.opensource.org/licenses/mit-license.php
[GPL]: http://www.gnu.org/licenses/gpl.html