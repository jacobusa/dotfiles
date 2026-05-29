return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true, -- show dotfiles by default
      ignored = false, -- show gitignored files
      -- follow = true,
    },

    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        --         header = [[
        -- ------------   --------   ------------ ----    ---- ------------
        -- ************  **********  ************ ****    **** ************
        -- ----         ----    ---- ---          ----    ---- ----
        -- ************ ***      *** ***          ****    **** ************
        -- ------------ ---      --- ---          ----    ---- ------------
        -- ****         ****    **** ***          ************        *****
        -- ----          ----------  ------------ ------------ ------------
        -- ****           ********   ************ ************ ************
        --
        --          ]],
        --         header = [[
        --          ______________
        --         /             /|
        --        /             / |
        --       /____________ /  |
        --      | ___________ |   |
        --      ||           ||   |
        --      ||           ||   |
        --      ||           ||   |
        --      ||___________||   |
        --      |   _______   |  /
        --     /|  (_______)  | /
        --    ( |_____________|/
        --     \
        -- .=======================.
        -- | ::::::::::::::::  ::: |
        -- | ::::::::::::::[]  ::: |
        -- |   -----------     ::: |
        -- `-----------------------'
        -- ]],
        header = [[

            ___,
            '._.'\
        _____/'-.\
    |    / |
    |~~~/~~|
    \ ()   /
    '.__.'
    ||
    _||_
jgs `----`


         ]],
--         header = [[
--     kj- <O> -.        .-====-.      ,-------.      .-=<>=-.
--    /_-\'''/-_\      / / '' \ \     |,-----.|     /__----__\
--   |/  o) (o  \|    | | ')(' | |   /,'-----'.\   |/ (')(') \|
--    \   ._.   /      \ \    / /   {_/(') (')\_}   \   __   /
--    ,>-_,,,_-<.       >'=jf='<     `.   _   .'    ,'--__--'.
--  /      .      \    /        \     /'-___-'\    /    :|    \
-- (_)     .     (_)  /          \   /         \  (_)   :|   (_)
--  \_-----'____--/  (_)        (_) (_)_______(_)   |___:|____|
--   \___________/     |________|     \_______/     |_________|
--
--
-- ]],
--         insp for ascii art
-- https://asciiart.website/
        --
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
