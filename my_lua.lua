function Image(img)
    if img.classes:find('base',1) then
      local f = io.open("project/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local name = pandoc.utils.stringify(doc.meta.name)
      local AM = pandoc.utils.stringify(doc.meta.AM)
      local content = "> " .. caption .. "  \n>" .. "Ονοματεπωνυμο Φοιτητη:" .. name .. "Aριθμος Mητρωου:" .. AM
      return pandoc.RawInline('markdown',content)
    end
end
//vim.api.nvim_set_hl(0, "Normal", { fg = colors.text, bg = colors.crust })
