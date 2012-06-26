testRuby [![Build Status](https://secure.travis-ci.org/OGIS-RI-IWAO/testRuby.png)](http://secure.travis-ci.org/OGIS-RI-IWAO/testRuby)
======================
RSpec test on Travis CI

Note: Use rspec-rails-1.3 for rails-2.

Usage
------
### フォルダ構成 ###
    testRuby
    │  .travis.yml
    │  Gemfile
    │  Gemfile.lock
    │  Rakefile
    │  README.md
    │
    ├─spec
    │      array_spec.rb
    │
    ├─src
    │      foo.rb
    │
    └─test
            test_foo.rb

Test
------
### 単体テスト ###
test/* をテスト実行します

`ruby -I test test/*`

### Rspecテスト
Gemfile, Gemfile.lock, Rakefileと共に動きます。

`rake spec`

##### Gemfile

    source "https://rubygems.org"
    
    gem 'rake',           :require => false
    gem 'rspec',          :require => false

##### Gemfile.lock

    GEM
      remote: https://rubygems.org/
      specs:
        diff-lcs (1.1.3)
        rake (0.9.2.2)
        rspec (2.10.0)
          rspec-core (~> 2.10.0)
          rspec-expectations (~> 2.10.0)
          rspec-mocks (~> 2.10.0)
        rspec-core (2.10.1)
        rspec-expectations (2.10.0)
          diff-lcs (~> 1.1.3)
        rspec-mocks (2.10.1)
    
    PLATFORMS
      ruby
    
    DEPENDENCIES
      rake
      rspec

##### Rakefile

    # coding: utf-8
    
    task :default => [:spec]
    begin
      require 'rspec/core/rake_task'
      RSpec::Core::RakeTask.new(:spec) do |spec|
        spec.pattern = 'spec/**/*_spec.rb'
        spec.rspec_opts = ['-cfs']
      end
    rescue LoadError => e
    end

ライセンス
----------
Copyright &copy; 2012 iwao_harada  
Licensed under the [Apache License, Version 2.0][Apache]
Distributed under the [MIT License][mit].  
Dual licensed under the [MIT license][MIT] and [GPL license][GPL].
 
[Apache]: http://www.apache.org/licenses/LICENSE-2.0
[MIT]: http://www.opensource.org/licenses/mit-license.php
[GPL]: http://www.gnu.org/licenses/gpl.html