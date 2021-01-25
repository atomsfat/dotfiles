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
hs.hotkey.bind(shortcut, "a", open("Slack"))
hs.hotkey.bind(shortcut, "b", open("Google Chrome"))
hs.hotkey.bind(shortcut, "c", open("Mail"))
hs.hotkey.bind(shortcut, "d", open("Firefox"))

hs.hotkey.bind(shortcut, "e", open("IntelliJ IDEA"))
hs.hotkey.bind(shortcut, "f", open("iTerm"))
hs.hotkey.bind(shortcut, "g", open("Visual Studio Code"))
hs.hotkey.bind(shortcut, "h", open("Notion"))

hs.hotkey.bind(shortcut, "i", open("Sublime Text"))




local laptopScreen = "Color LCD"
local windowLayout = {
      {"Safari",  nil,          laptopScreen, hs.layout.maximized,    nil, nil, visible=true},
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

