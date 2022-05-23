local M = {}

local status_gps_ok, gps = pcall(require, "nvim-gps")
if not status_gps_ok then
	return
end

local function isempty(s)
	return s == nil or s == ""
end

M.filename = function()
	local filename = vim.fn.expand("%") --:match("([^/]+)$")
	local extension = ""

	if not isempty(filename) then
		extension = filename:match("^.+(%..+)$")

		local default = false

		if isempty(extension) then
			extension = ""
			default = true
		else
			extension = extension:gsub("%.", "") -- remove . (. is a special character so we have to escape it)
		end

		return " " .. "%#" .. "#" .. "%*" .. " " .. "%#LineNr#" .. filename .. "%*"
	end
end

M.gps = function()
	local status_ok, gps_location = pcall(gps.get_location, {})
	if not status_ok then
		return
	end

	local icons = require("plugins.configs.icons")

	if not gps.is_available() then
		return
	end

	local retval = M.filename()

	if gps_location == "error" then
		return ""
	else
		if not isempty(gps_location) then
			return retval .. " " .. icons.ui.ChevronRight .. " " .. gps_location
		else
			return retval
		end
	end
end

return M
