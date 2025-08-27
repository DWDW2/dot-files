return {
  {
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end,
    lazy = true,
    event = "InsertEnter",  -- lazy load on entering insert mode
  },
}
