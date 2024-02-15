return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[                                                                     ]],
      [[  iiii  VVVVVVVV           VVVVVVVV  iiii                            ]],
      [[ i::::i V::::::V           V::::::V i::::i                           ]],
      [[  iiii  V::::::V           V::::::V  iiii                            ]],
      [[        V::::::V           V::::::V                                  ]],
      [[ iiiiiii  V:::::V           V:::::V iiiiiii    mmmmmmm    mmmmmmm    ]],
      [[ i:::::i   V:::::V         V:::::V  i:::::i  mm:::::::m  m:::::::mm  ]],
      [[  i::::i    V:::::V       V:::::V    i::::i m::::::::::mm::::::::::m ]],
      [[  i::::i     V:::::V     V:::::V     i::::i m::::::::::::::::::::::m ]],
      [[  i::::i      V:::::V   V:::::V      i::::i m:::::mmm::::::mmm:::::m ]],
      [[  i::::i       V:::::V V:::::V       i::::i m::::m   m::::m   m::::m ]],
      [[  i::::i        V:::::V:::::V        i::::i m::::m   m::::m   m::::m ]],
      [[  i::::i         V:::::::::V         i::::i m::::m   m::::m   m::::m ]],
      [[ i::::::i         V:::::::V         i::::::im::::m   m::::m   m::::m ]],
      [[ i::::::i          V:::::V          i::::::im::::m   m::::m   m::::m ]],
      [[ i::::::i           V:::V           i::::::im::::m   m::::m   m::::m ]],
      [[ iiiiiiii            VVV            iiiiiiiimmmmmm   mmmmmm   mmmmmm ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("t", "Find text", "<cmd>Telescope live_grep<cr>"),
      dashboard.button("f", "Find file", "<cmd>Telescope find_files<cr>"),
      dashboard.button("n", "New file", "<cmd>ene<cr>"),
      dashboard.button("q", "Quit", "<cmd>q<cr>"),
    }
    _Gopts = {
      position = "center",
      hl = "Type",
    }

    local function footer()
      return "¯\\_(ツ)_/¯"
    end

    dashboard.section.footer.val = footer()

    dashboard.opts.opts.noautocmd = true
    require("alpha").setup(dashboard.opts)
  end,
}
