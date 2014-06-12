# libmysqlclient-cookbook

A simple cookbook to install libmysqlclient & libmysqlclient-dev.

This can solve problems with cookbooks such as [Zabbix](https://github.com/laradji/zabbix) if you see issues with installing the mysql2 gem.

# Requirements:
## Platform:

* Ubuntu 10.04
* Ubuntu 12.04
* Ubuntu 14.04

## Cookbooks:
* apt

# Usage:

Include this cookbook in your run list `run_list[recipe['libmysqlclient']]`

# Tests
Serverspec will test the package is correctly installed using test kitchen.

```
berks install
kitchen test
```

License & Authors
-----------------
- Author:: Mike Splain <mike.splain@gmail.com>

```text

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
