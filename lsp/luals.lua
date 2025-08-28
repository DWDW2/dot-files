return {
      cmd = {'lua-language-server'},
      filetypes = {'lua'},
      root_markers = {'.luarc.json', '.luarc.jsonc'},
      on_attach = function(client, bufnr) vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
            convert = function(item)
                  return { abbr = item.label:gsub('%b()', '') }
            end,
      })
end,
}
