local bakup = require("bakup.bakup.bakup")
local files = require("bakup.bakup.files")

os.execute("pwd > t")
local pwd_ = io.open("./t", "r")
local pwd = pwd_:read("l") .. "/"
pwd_:close()
os.remove("t")

local t = bakup:new({ bakup.linux.pacman })

t:addPackage_list({
  {
    { "neovim", "luajit" },
    dependence = true,
    config = function()
      local f = files:new()
      f:add_g({
        "https://github.com/LzzKill/nvim"
      }); f:do_g()
      BuildCommand_t("ln -sn", pwd .. "nvim", "~/.config/nvim")
    end
  },
  {
    { "fish", "wayland", "hyprland", "hyprpaper", "waybar", "wayfire", "kitty", "wofi", "alacritty", "ranger" },
    dependence = true,
    config = function()
      local line = { "alacritty", "fish", "hypr", "kitty", "range", "waybar", "wofi" }
      for _, value in ipairs(line) do
        BuildCommand_t("ln -sn", pwd .. value, "~/.config/" .. value)
      end
      BuildCommand_t("ln -sn", pwd .. "wayfire.ini", "~/.config/wayfire.ini")
      BuildCommand_t("chsh") -- Type fish
    end
  },
  {
    { "fcitx5", "fcitx5-chinese-addons", "fcitx5-configtool", "fcitx5-gtk", "fcitx5-lua", "fcitx5-nord", "fcitx5-pinyin-moegirl-rime", "fcitx5-qt", },
  }, { { "exa", "grim", "fzf", "lua-language-server", "nodejs", "clang", "firefox-esr-i18n-zh-cn", "firefox", "cmake", "npm"} }
})

local parul = { "catppuccin-cursors-frappe", "catppuccin-fcitx5-git", "catppuccin-gtk-theme-frappe",
  "fcitx5-pinyin-custom-pinyin-dictionary", }
BuildCommand_t("paru -S", parul)
-- Archlinux cn TODO:

t:install_packages()
t:config_packages()
