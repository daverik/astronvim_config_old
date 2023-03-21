-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- harpoon
    ["<leader>h"] = { name = "Harpoon" },
    ["<leader>ho"] = { require("harpoon.ui").toggle_quick_menu, desc = "Harpoon menu" },
    ["<leader>hm"] = { require("harpoon.mark").add_file, desc = "Harpoon mark" },
    ["<C-l>"] = { require("harpoon.ui").nav_next, desc = "Harpoon mark" },
    ["<C-h>"] = { require("harpoon.ui").nav_prev, desc = "Harpoon mark" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
