require "travis.options"
require "travis.lazyplugins"
require "travis.keymaps"

local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/after/plugin/?.lua;" .. package.path
