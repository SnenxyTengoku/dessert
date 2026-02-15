#!/usr/bin/env bash
set -euox pipefail

#
# LazyVim
#
git clone https://github.com/LazyVim/starter /etc/skel/.config/nvim
rm -rf /etc/skel/.config/nvim/.git
mkdir -p /etc/skel/.config/nvim/lua/plugins
# config modifications
tee -a /etc/skel/.config/nvim/lua/plugins/core.lua << 'EOF'
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",

        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
            separator = { left = "", right = "" },
            right_padding = 2,
          },
        },
      },
    },
  },
}
EOF
