local function trim(str)
    return str:gsub("^%s*(.-)%s*$", "%1")
end

function LoadColors()
    local color = nil
    local file = io.open("/home/tiagorg/.dotfiles/.config/nvim/data/colorscheme.txt", "r")

    -- check if file exists
    if file == nil then
        vim.cmd.colorscheme("monokai-pro-spectrum")
        return
    end

    color = file:read("*a")
    file:close()

    color = trim(color)

    if color == nil then
        color = "monokai-pro-spectrum"
    elseif color == "monokai-pro" then
        color = "monokai-pro-spectrum"
    end

    vim.cmd.colorscheme(color)
end

-- Define a function to be called when the colorscheme changes
function OnColorschemeChanged()
    local newColorscheme = vim.g.colors_name

    local file = io.open("/home/tiagorg/.dotfiles/.config/nvim/data/colorscheme.txt", "w")
    if file == nil then
        return
    end
    file:write(newColorscheme)
end

LoadColors()
-- Set up an autocmd to trigger the function when the colorscheme changes
vim.cmd([[autocmd ColorScheme * lua OnColorschemeChanged()]])

vim.api.nvim_create_user_command("TransparentBackground", function(opts)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end, {})

