require "travis.plugins"
require "travis.options"
require "travis.keymaps"

local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/after/plugin/?.lua;" .. package.path
