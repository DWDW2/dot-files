return {
      cmd = { 'clangd' },
      root_markers = { '.clangd', 'compile_commands.json' },
      filetypes = { 'c', 'cpp' },
      on_attach = function(client, bufnr) vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
            convert = function(item)
                  return { abbr = item.label:gsub('%b()', '') }
            end,
      })
end,
}
