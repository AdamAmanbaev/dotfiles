-- Quite insert mode "jk"
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")
vim.keymap.set("i", "jK", "<ESC>")
vim.keymap.set("i", "Jk", "<ESC>")

-- Move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Curly braces
vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")
vim.keymap.set("i", "{{", "{")
vim.keymap.set("i", "{}", "{}")

-- Switch between windows when not in tmux
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- For compiling C++ files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		vim.keymap.set("n", "<F8>", function()
			vim.cmd("write") -- Save the file
			local cmd = string.format(
				[[wt.exe cmd /t:0A /c "wsl -u %s --cd %s -e g++ -DDEBUG -std=c++20 -g %s -o %s"]],
				os.getenv("USER"),
				vim.fn.expand("%:p:h"),
				vim.fn.expand("%:p"),
				vim.fn.expand("%:r")
			)
			vim.fn.system(cmd) -- Execute the command
		end, { buffer = true })
	end,
})

-- For running C++ files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		vim.keymap.set("n", "<F9>", function()
			local cmd = string.format(
				[[wt.exe cmd /t:0A /k "wsl -u %s --cd %s -e ./%s"]],
				os.getenv("USER"),
				vim.fn.expand("%:p:h"),
				vim.fn.expand("%:r")
			)
			vim.fn.system(cmd) -- Execute the command
		end, { buffer = true })
	end,
})

-- For running Python files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.keymap.set("n", "<F9>", function()
			vim.cmd("write") -- Save the file
			local cmd = string.format(
				[[wt.exe cmd /t:0A /k "wsl -u %s --cd %s -e python3 %s"]],
				os.getenv("USER"),
				vim.fn.expand("%:p:h"),
				vim.fn.expand("%:p")
			)
			vim.fn.system(cmd) -- Execute the command
		end, { buffer = true })
	end,
})
