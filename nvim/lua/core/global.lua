local global = {}

-- return system information (string)
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
    -- Check OS
	self.is_mac = os_name == "Darwin"
	self.is_linux = os_name == "Linux"
	self.is_windows = os_name == "Windows_NT"

    -- Windos's path_sep is "\", linux's path_sep is "/"
	local path_sep = self.is_windows and "\\" or "/"

    -- Note: vim.fn can be viewed by ':echo stdpath("string")'
    -- User configuration directory. "init.vim" is stored here.(string) eg. /home/danny/.config/nvim
	self.vim_path = vim.fn.stdpath("config")
    -- Get the string of environment variable. eg. /home/danny in ubuntu
	self.home = self.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
    -- cache_dir = /home/danny/.cache/nvim/
	self.cache_dir = self.home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep
    -- modules_dir = /home/danny/.config/nvim/modules
	self.modules_dir = self.vim_path .. path_sep .. "modules"
    -- data_dir = /home/danny/.local/share/nvim/site/
	self.data_dir = string.format("%s/site/", vim.fn.stdpath("data"))
end

global:load_variables()

return global
