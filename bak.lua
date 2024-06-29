local bakup = require("bakup.bakup.bakup")

local paru = bakup.linux.pacman
paru.command = "paru"

local p = bakup:new({ paru })

local t = bakup:new({
  bakup.linux.pacman
})

t:addPackage_list({
  {
    { "neovim", "luajit" },
    dependence = true,
    config = function() end -- TODO:
  },
  {
    { "fish", "wayland", "hyprland", "hyprpaper", "waybar", "wayfire", "kitty", "wofi", "alacritty", "ranger" },
    dependence = true,
    config = function() end -- TODO:
  },
  {
    { "fcitx5", "fcitx5-chinese-addons", "fcitx5-configtool", "fcitx5-gtk", "fcitx5-lua", "fcitx5-nord", "fcitx5-pinyin-moegirl-rime", "fcitx5-qt", },
    dependence = true,
    config = function() end -- TODO:
  }, { { "exa", "grim", "fzf", "lua-language-server", "nodejs", "clang", "firefox-esr-i18n-zh-cn", "firefox", "cmake", "npm", "paru" } }
})

p:addPackage_list({
  {
    { "catppuccin-cursors-frappe", "catppuccin-fcitx5-git", "catppuccin-gtk-theme-frappe", "fcitx5-pinyin-custom-pinyin-dictionary", }
  }
})

-- Archlinux cn TODO: 


t:install_packages()
p:install_packages()
t:config_packages()
p:config_packages()
