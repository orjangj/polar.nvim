local M = {}

function M.highlight(highlights)
  for group, opts in pairs(highlights) do
    if opts.link and opts.link ~= "" then
      vim.api.nvim_set_hl(0, group, { link = opts.link })
    else
      local hl = {
        bg = opts.bg,
        fg = opts.fg,
        sp = opts.sp,
      }

      if opts.style then
        if type(opts.style) == "table" then
          hl = vim.tbl_extend("force", hl, opts.style)
        elseif opts.style:lower() ~= "none" then
          -- handle old string style definitions
          for s in string.gmatch(opts.style, "([^,]+)") do
            hl[s] = true
          end
        end
      end

      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

return M
