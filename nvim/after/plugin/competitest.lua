require('competitest').setup{
  received_contests_directory = "$(HOME)/Documents/code/$(JUDGE)/$(CONTEST)"
}

-- keymaps
vim.keymap.set('n', '<leader>ta', '<Cmd>CompetiTest add_testcase<CR>', { desc = "[A]dd Testcase" , silent = true})
vim.keymap.set('n', '<leader>tr', '<Cmd>CompetiTest run<CR>', { desc = "[R]un Code" , silent = true})
vim.keymap.set('n', '<leader>te', '<Cmd>CompetiTest edit_testcase<CR>', { desc = "[E]dit Testcases" , silent = true})
vim.keymap.set('n', '<leader>tc', '<Cmd>CompetiTest receive contest<CR>', { desc = "Start [C]ontest" , silent = true})
