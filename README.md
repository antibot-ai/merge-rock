# Рекурсивное объединение двух таблиц
Модуль объединяет две таблицы и возвращает мутированную первую таблицу.

### Параметры
- **t1** (table) Первая таблица
- **t2** (table) Вторая таблица

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru merge
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru merge
```

# Использование
```lua
local merge = require('merge')

local tbl = merge({ type = 'bot' }, { id = 100 })
print(tbl.type) -- 'bot'
print(tbl.id) -- 100
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```
