hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "w", function()
  hs.alert.show("Hello World!")
  -- hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)


hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "r", function()
  hs.notify.new({title="Hammerspoon", informativeText="Reload"}):send()
  hs.reload()
end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "Y", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x - 10
--   f.y = f.y - 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "K", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.y = f.y - 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "U", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x + 10
--   f.y = f.y - 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "H", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x - 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "L", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x + 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "B", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x - 10
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "J", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.y = f.y + 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "ctrl", "alt", "shift"}, "N", function()j
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x + 10
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)

--- A closure function
function open(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end


local shortcut2 = {"cmd", "ctrl", "alt", "shift"}
local shortcut = {"cmd", "ctrl"}
--- quick open applications
hs.hotkey.bind(shortcut, "0", open("Mail"))
hs.hotkey.bind(shortcut, "2", open("iTerm"))
hs.hotkey.bind(shortcut, "3", open("IntelliJ IDEA"))
hs.hotkey.bind(shortcut, "1", open("Firefox"))
hs.hotkey.bind(shortcut, "4", open("Slack"))
hs.hotkey.bind(shortcut, "5", open("Google Chrome"))
hs.hotkey.bind(shortcut, "6", open("Visual Studio Code"))
hs.hotkey.bind(shortcut, "7", open("Notion"))
hs.hotkey.bind(shortcut, "8", open("Sublime Text"))




local laptopScreen = "Color LCD"
local windowLayout = {
      {"SNafari",  nil,          laptopScreen, hs.layout.maximized,    nil, nil, visible=true},
      {"Mail",    nil,          laptopScreen, hs.layout.maximized,   nil, nil},
  }
  hs.layout.apply(windowLayout)


local acerScreen = "Acer XR342CKP"
local workLayout= {
      {"IntelliJ IDEA",  nil,          acerScreen, hs.layout.left50,    nil, nil, visible=true},
      {"iTerm2",    nil,               acerScreen, hs.layout.right50,   nil, nil, visible=true},
      {"Slack",    nil,                acerScreen, hs.layout.right50,   nil, nil},
      {"Google Chrome",    nil,               acerScreen, hs.layout.right50,   nil, nil},
      {"Code",    nil,   acerScreen, hs.layout.right50,   nil, nil},
      {"Notion",    nil,               acerScreen, hs.layout.left50,   nil, nil},
      {"Sublime Text",    nil,               acerScreen, hs.layout.right50,   nil, nil},
  }
hs.layout.apply(workLayout)

