local augroup = "numbertoggle"

return {
  setup = function()
    vim.api.nvim_create_augroup(augroup, { clear = true })

    vim.api.nvim_create_autocmd(
      { "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
      {
        group = augroup,
        pattern = { "*" },
        command = "if &nu && mode() != 'i' | set rnu | endif",
      }
    )

    vim.api.nvim_create_autocmd(
      { "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
      {
        group = augroup,
        pattern = { "*" },
        command = "if &nu | set nornu | endif",
      }
    )
  end
}
