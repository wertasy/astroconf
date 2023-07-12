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
    [";"] = ":",

    ["<A-Up>"]    = "<C-\\><C-N><C-w>k",
    ["<A-Down>"]  = "<C-\\><C-N><C-w>j",
    ["<A-Left>"]  = "<C-\\><C-N><C-w>h",
    ["<A-Right>"] = "<C-\\><C-N><C-w>l",

    ["<A-z>"] = ":set wrap!<cr>",

    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-j>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-p>"] = ":Telescope find_files<cr>",

    ["<C-Up>"] = "<C-b>",
    ["<C-Down>"] = "<C-f>",
    ["<C-Left>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<C-Right>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },

    -- Resize with arrows
    ["<C-S-Up>"] = ":resize -2<CR>",
    ["<C-S-Down>"] = ":resize +2<CR>",
    ["<C-S-Left>"] = ":vertical resize -2<CR>",
    ["<C-S-Right>"] = ":vertical resize +2<CR>",

    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
  },
  i = {
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
