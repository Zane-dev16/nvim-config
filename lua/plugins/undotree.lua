return {
  'mbbill/undotree',
  config = function()
    -- Enable persistent undo
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
  end
}
