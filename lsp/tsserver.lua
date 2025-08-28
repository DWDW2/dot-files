return {
      cmd = {'typescript-language-server', '--stdio'},
      filetypes = {'typescript', 'typescriptreact', 'typescript.tsx'},
      root_markers = {'.git', 'package.json', 'tsconfig.json', 'jsconfig.json', '.eslintrc', '.prettierrc'},
      on_attach = function(client, bufnr) vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
            convert = function(item)
                  return { abbr = item.label:gsub('%b()', '') }
            end,
      })
end,
}
