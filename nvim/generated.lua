-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color1 = '#8087ee'
local Color9 = '#b6b2c0'
local Color0 = '#d6d6eb'
local Color11 = '#c0bbcb'
local Color12 = '#302e55'
local Color14 = '#372e53'
local Color4 = '#7f729c'
local Color15 = '#645a7c'
local Color3 = '#fe719e'
local Color7 = '#f070a3'
local Color6 = '#f8a066'
local Color8 = '#19152a'
local Color2 = '#ddb672'
local Color5 = '#75bcff'
local Color10 = '#241e3d'
local Color13 = '#361c34'

highlight('Identifier', nil, Color0, nil)
highlight('Keyword', nil, Color1, nil)
highlight('Operator', nil, Color1, nil)
highlight('Conditional', nil, Color1, nil)
highlight('Type', nil, Color1, nil)
highlight('Repeat', nil, Color1, nil)
highlight('String', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Comment', nil, Color4, nil)
highlight('Type', nil, Color5, nil)
highlight('Constant', nil, Color6, nil)
highlight('Comment', nil, nil, 'italic')
highlight('Type', nil, nil, 'italic')
highlight('Error', nil, Color7, nil)
highlight('StatusLine', Color9, Color8, nil)
highlight('WildMenu', Color10, Color11, nil)
highlight('Pmenu', Color10, Color11, nil)
highlight('PmenuSel', Color11, Color10, nil)
highlight('PmenuThumb', Color10, Color11, nil)
highlight('DiffAdd', Color12, nil, nil)
highlight('DiffDelete', Color13, nil, nil)
highlight('Normal', Color10, Color11, nil)
highlight('Visual', Color14, nil, nil)
highlight('CursorLine', Color14, nil, nil)
highlight('ColorColumn', Color14, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color15, nil)
highlight('TabLine', Color8, nil, nil)
highlight('TabLineSel', nil, Color10, nil)
highlight('TabLineFill', Color8, nil, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TSFunction', 'Function')
link('TSLabel', 'Type')
link('TSType', 'Type')
link('CursorLineNr', 'Identifier')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('Operator', 'Keyword')
link('Repeat', 'Conditional')
link('TSParameter', 'Constant')
link('TSRepeat', 'Repeat')
link('TSProperty', 'TSField')
link('Conditional', 'Operator')
link('TSNamespace', 'TSType')
link('TSOperator', 'Operator')
link('TSTag', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('Folded', 'Comment')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('TSString', 'String')
link('TSConditional', 'Conditional')
link('TSNumber', 'Number')
link('Macro', 'Function')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('TSKeyword', 'Keyword')
