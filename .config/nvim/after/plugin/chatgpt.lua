require('chatgpt').setup {
    api_key_cmd = 'gpg --decrypt /home/tiagorg/.gnupg/openai_key.txt.gpg',
    chat = {
        keymaps = {
            close = "<C-c>",
            yank_last = "<C-y>",
            yank_last_code = "<C-k>",
            scroll_up = "<C-u>",
            scroll_down = "<C-d>",
            new_session = "<C-n>",
            cycle_windows = "<C-t>",
            cycle_modes = "<C-f>",
            next_message = "<C-j>",
            prev_message = "<C-k>",
            select_session = "<Space>",
            rename_session = "r",
            delete_session = "d",
            draft_message = "<C-r>",
            edit_message = "e",
            delete_message = "d",
            toggle_settings = "<C-o>",
            toggle_sessions = "<C-p>",
            toggle_help = "<C-h>",
            toggle_message_role = "<C-r>",
            toggle_system_role_open = "<C-s>",
            stop_generating = "<C-x>",
        },
    }
}

vim.keymap.set("n", "<leader>gpt", "<cmd>ChatGPT<cr>", { noremap = true, silent = true })
