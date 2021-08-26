local ts_utils = require("nvim-treesitter.ts_utils")


local M = {};

M.test = function ()
  local myNode = ts_utils.get_node_at_cursor();
  print('myNode', myNode)
  local prev = ts_utils.get_previous_node(myNode, false, true);
  print('prev', prev);
  ts_utils.goto_node(prev, true, true);

end

return M
