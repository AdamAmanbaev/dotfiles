require("chopingu.editor")
require("chopingu.graphical")
require("chopingu.mappings")
require("chopingu.lazy")
require("chopingu.plugins")
require("nvim-lastplace").setup{}

pcall(require, "overrides")
