--- Рекурсивный мердж двух таблиц
--

--- Функция мерджа
--
-- @param t1 Первая таблица
-- @param t2 Вторая таблица
-- @return t1 Мутированная первая таблица
function merge(t1, t2)
  for k, v in pairs(t2) do
    if (type(v) == 'table') and (type(t1[k] or false) == 'table') then
      merge(t1[k], t2[k])
    else
      t1[k] = v
    end
  end

  return t1
end

--- merge
-- @table export
return merge
