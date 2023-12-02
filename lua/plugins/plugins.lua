return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup()
    end,
    event = "VimEnter",
  },
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup({
        terminals = {
          type_opts = {
            float = {
              -- relative = 'editor',
              row = 0.05,
              col = 0.045,
              width = 0.9,
              height = 0.8,
              border = "rounded",
            },
          },
        },
      })
    end,
  },
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
      "BufReadPre /mnt/g/Meu Drive/the berserk/**.md",
      "BufNewFile /mnt/g/Meu Drive/the berserk/**.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      -- see below for full list of optional dependencies 👇
    },
    opts = {
      completion = {
        -- If using nvim-cmp, otherwise set to false
        nvim_cmp = true,
      },
      workspaces = {
        {
          name = "the berserk",
          path = "/mnt/g/Meu Drive/the berserk",
        },
      },
      -- Optional, key mappings.
      mappings = {
        -- ["gf"]
      },
      daily_notes = {
        folder = "journal",
        template = "daily note template.md",
      },
      disable_frontmatter = true,
      templates = {
        subdir = "templates",
      },
      ft = "markdown",
      -- see below for full list of options 👇
    },
  },
  {
    "styled-components/typescript-styled-plugin",
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        columns = {
          "icon",
          "permissions",
          "size",
          "mtime",
        },
      })
      vim.keymap.set("n", "-", require("oil").open, { desc = "open parent dir" })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
