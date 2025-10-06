vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

vim.api.nvim_set_hl(0, 'CopilotChatHeader', { fg = '#7C3AED', bold = true })
vim.api.nvim_set_hl(0, 'CopilotChatSeparator', { fg = '#374151' })

require("CopilotChat").setup({
    window = {
        layout = 'float',
        width = math.abs(math.floor(vim.o.columns * 0.8 + 0.5)),
        height = math.abs(math.floor(vim.o.lines * 0.8 + 0.5)),
        border = 'rounded',
        title = '🤖 AI Assistant',
        zindex = 100,
    },

    headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
    },

    separator = '━━',
    auto_fold = true,
})

local chat = require("CopilotChat")

vim.keymap.set('n', '<leader>cc', chat.toggle, { desc = 'Toggle CopilotChat' })

vim.keymap.set('v', '<leader>cc', chat.open, { desc = 'Open CopilotChat with selection' })

vim.keymap.set('n', '<leader>cb', function()
    chat.ask("Explain this code", { selection = require("CopilotChat.select").buffer })
end, { desc = 'Ask about current buffer' })

vim.keymap.set('v', '<leader>cf', function()
    chat.ask("Fix this code")
end, { desc = 'Fix selected code' })

vim.keymap.set('v', '<leader>ce', function()
    chat.ask("Explain this code")
end, { desc = 'Explain selected code' })

vim.keymap.set('v', '<leader>co', function()
    chat.ask("Optimize this code")
end, { desc = 'Optimize selected code' })

