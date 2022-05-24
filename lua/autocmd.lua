local au = vim.api.nvim_create_autocmd
local aeron = vim.api.nvim_create_augroup("Aeron Commands", { clear = true })

-- This is causing a lot of issues atm
-- Saves folds on write and load on BufEnter
--au("BufWinLeave", { command = "mkview", group = aeron})
--au("BufWinEnter", { command = "silent! loadview", group = aeron,})

