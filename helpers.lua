local M  = {}

M.split_string = function(str, delimiter)
  delimiter = delimiter or " "
  local result = {}
  local from = 1
  local delim_from, delim_to = string.find(str, delimiter, from)
  while delim_from do
    table.insert(result, string.sub(str, from, delim_from - 1))
    from = delim_to + 1
    delim_from, delim_to = string.find(str, delimiter, from)
  end
  table.insert(result, string.sub(str, from))
  return result
end

M.parse_bin_path = function(str)
  local tokens = M.split_string(str, "/")
  return tokens[#tokens]
end

return M
