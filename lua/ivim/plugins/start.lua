return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local header = [[
       iiii  VVVVVVVV           VVVVVVVV  iiii                           
      i::::i V::::::V           V::::::V i::::i                          
       iiii  V::::::V           V::::::V  iiii                           
             V::::::V           V::::::V                                 
      iiiiiii  V:::::V           V:::::V iiiiiii    mmmmmmm    mmmmmmm   
      i:::::i   V:::::V         V:::::V  i:::::i  mm:::::::m  m:::::::mm 
       i::::i    V:::::V       V:::::V    i::::i m::::::::::mm::::::::::m
       i::::i     V:::::V     V:::::V     i::::i m::::::::::::::::::::::m
       i::::i      V:::::V   V:::::V      i::::i m:::::mmm::::::mmm:::::m
       i::::i       V:::::V V:::::V       i::::i m::::m   m::::m   m::::m
       i::::i        V:::::V:::::V        i::::i m::::m   m::::m   m::::m
       i::::i         V:::::::::V         i::::i m::::m   m::::m   m::::m
      i::::::i         V:::::::V         i::::::im::::m   m::::m   m::::m
      i::::::i          V:::::V          i::::::im::::m   m::::m   m::::m
      i::::::i           V:::V           i::::::im::::m   m::::m   m::::m
      iiiiiiii            VVV            iiiiiiiimmmmmm   mmmmmm   mmmmmm
    ]]
    header = "\n\n" .. header .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        tabline = false,
      },
      config = {
        header = vim.split(header, "\n"),
        center = {
          {
            action = "Telescope live_grep",
            desc = " Find text",
            icon = " ",
            key = "t",
          },
          {
            action = "Telescope find_files",
            desc = " Find file",
            icon = " ",
            key = "f",
          },
          { action = "ene", desc = " New file", icon = " ", key = "n" },
          { action = "qa", desc = " Quit", icon = " ", key = "q" },
        },
        footer = function()
          return { "¯\\_(ツ)_/¯" }
        end,
      },
    }

    return opts
  end,
}
