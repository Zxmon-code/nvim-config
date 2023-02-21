local wk = require("which-key")
-- Options for Visual Mode
local vopts = {
  mode = "v",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

-- Options for Normal Mode
local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

-- Mappings for Visual Mode
local vmappings = {
  ["/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "Comment toggle linewise (visual)"},
}

-- Mappings for Normal Mode
local mappings = {
  ["e"] = { ":NvimTreeToggle<CR>", "Explorer"},
  ["/"] = { "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", "Comment toggle current line" },
  ["t"] = { ":ToggleTerm size=10 direction=horizontal<CR>", "Toggle Terminal"},
  ["h"] = { "<cmd>nohlsearch<CR>", "remove Search Highlights"},

  r = {
    name = "Notetaking",
    s = { ":set spell!<cr>", "Toggle spellchecking"},
    m = { ":MarkdownPreviewToggle<cr>", "Toggle Markdown Preview"}
  },

  d = {
    name = "Debug",
    t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
    U = { "<cmd>lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },
   },

  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  g = {
    name = "Git",
    g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "LazyGit"}
  },

  l = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<CR>", "Buffer Diagnostics" },
    w = { "<cmd>Telescope diagnostics<CR>", "Diagnostics" },
    f = { "<cmd>lua vim.lsp.buf.format{ asynv = true }<CR>", "Format" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    I = { "<cmd>Mason<cr>", "Mason Info" },
    j = {
      "<cmd>vim.diagnostic.goto_next<cr>",
     "Next Diagnostic",
    },
  },

  f = {
    name = "Telescope",

  }
}

wk.register(mappings, opts)
wk.register(vmappings, vopts)
