local M = {}

-- Helper to open the floating window (same as before)
local function open_floating_window()
  local width = math.ceil(vim.o.columns * 0.8)
  local height = math.ceil(vim.o.lines * 0.8)
  local row = math.ceil((vim.o.lines - height) / 2)
  local col = math.ceil((vim.o.columns - width) / 2)

  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
    title = " Runner Output ",
    title_pos = "center",
  })

  vim.keymap.set("n", "q", ":close<CR>", { buffer = buf, silent = true })
  vim.keymap.set("n", "<ESC>", ":close<CR>", { buffer = buf, silent = true })

  return buf, win
end

function M.run_code()
  local ft = vim.bo.filetype
  -- %:p gets the absolute path
  -- %:p:r gets the absolute path without extension
  local abs_path = vim.fn.expand("%:p")
  local abs_root = vim.fn.expand("%:p:r")
  local execution_cmd = ""

  if ft == "cpp" then
    print("🔨 Compiling C++...")
    -- Compile using absolute paths
    local compile_out = vim.fn.system(string.format("g++ %s -o %s", abs_path, abs_root))

    if vim.v.shell_error ~= 0 then
      print("❌ Compilation Failed!")
      print(compile_out)
      return
    end

    -- IMPORTANT: For absolute paths, do NOT add "./"
    execution_cmd = abs_root
  elseif ft == "typescript" then
    print("🔨 Compiling Typescript...")
    vim.fn.system("tsc " .. abs_path)
    if vim.v.shell_error ~= 0 then
      return
    end
    execution_cmd = "node " .. abs_root .. ".js"
  elseif ft == "javascript" then
    execution_cmd = "node " .. abs_path
  elseif ft == "python" then
    execution_cmd = "python3 " .. abs_path
  elseif ft == "lua" then
    execution_cmd = "lua " .. abs_path
  end

  -- Open UI and Execute
  open_floating_window()
  vim.fn.termopen(execution_cmd)
  vim.cmd("startinsert")
end
function M.setup()
  local group = vim.api.nvim_create_augroup("Runner", { clear = true })
  local supported_fts = { "typescript", "javascript", "python", "cpp", "lua" }

  vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = supported_fts,
    callback = function()
      vim.keymap.set("n", "<leader>r", M.run_code, {
        buffer = true,
        desc = "Build and Run Code",
      })
    end,
  })
end

return M
