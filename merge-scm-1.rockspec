package = 'merge'
version = 'scm-1'
description = {
  summary = 'Merge two tables',
  license = 'MIT'
}
source  = {
  url = 'file:///usr/local/src/app/'..package..'-'..version..'.tar.gz'
}
build = {
  type = 'builtin',
  modules = {
    ['merge'] = 'init.lua',
  }
}
dependencies = {
  'lua >= 5.1'
}
