return {
    "rebelot/kanagawa.nvim",
    config = function()
        function ColorMyPencils(color)
            color = color or "kanagawa-wave"
            vim.cmd.colorscheme(color)
        end

        ColorMyPencils()
    end
}
