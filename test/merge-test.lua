-- test/merge-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция объединения
local merge = require('lua.merge.init')

-- Тесты
g.test_merge = function()
  local t1 = {
    first_name = 'Vladimir',
    last_name = 'Mayakovsky'
  }
  local t2 = {
   poems = {
      [1915] = {
        'A Cloud in Trousers',
        'Backbone Flute'
      },
      [1917] = 'The War and the World',
      [1927] = 'All Right!'
    }
  }

  merge(t1, t2)

  luatest.assert_equals(t1.first_name, 'Vladimir')
  luatest.assert_equals(t1.last_name, 'Mayakovsky')

  luatest.assert_equals(t1.poems[1915][1], 'A Cloud in Trousers')
  luatest.assert_equals(t1.poems[1915][2], 'Backbone Flute')
  luatest.assert_equals(t1.poems[1917], 'The War and the World')
  luatest.assert_equals(t1.poems[1927], 'All Right!')
end
