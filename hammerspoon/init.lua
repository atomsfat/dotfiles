

local geometry = require("hs.geometry")

local shortcut2 = {"cmd", "ctrl", "alt", "shift"}

hs.hotkey.bind(shortcut2, "H", function()
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

hs.hotkey.bind(shortcut2, "L", function()
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


hs.hotkey.bind(shortcut2, "6", function()
  hs.notify.new({title="Hammerspoon", informativeText="Reload"}):send()
  hs.reload()
end)


--- A closure function
function open(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end


--- quick open applications
hs.hotkey.bind(shortcut2, "1", open("IntelliJ IDEA"))
hs.hotkey.bind(shortcut2, "2", open("iTerm"))
hs.hotkey.bind(shortcut2, "3", open("Safari"))
hs.hotkey.bind(shortcut2, "4", open("Slack"))
hs.hotkey.bind(shortcut2, "5", open("Mail"))


hs.hotkey.bind(shortcut2, "q", open("Visual Studio Code"))
hs.hotkey.bind(shortcut2, "w", open("Evernote"))
hs.hotkey.bind(shortcut2, "e", open("Google Chrome"))
hs.hotkey.bind(shortcut2, "r", open("Mail"))
hs.hotkey.bind(shortcut2, "t", open("Mail"))


hs.hotkey.bind(shortcut2, "s", open("Sublime Text"))
hs.hotkey.bind(shortcut2, "d", open("Firefox"))


h1q3 = geometry.rect(0, 0, 0.333, 1)
h1q3Above = geometry.rect(0, 0, 0.333, 0.5)
h1q3Bottom = geometry.rect(0, 0.5, 0.333, 0.5)

h1q3Above75 = geometry.rect(0, 0, 0.333, 0.75)
h1q3Above25 = geometry.rect(0, 0, 0.333, 0.25)


h2q3 = geometry.rect(0.333, 0, 0.333, 1)
h2q3Above = geometry.rect(0.333, 0, 0.333, 0.5)
h2q3Bottom = geometry.rect(0.333, 0.5, 0.333, 0.5)


h3q3 = geometry.rect(0.666, 0, 0.333, 1)
h3q3Above = geometry.rect(0.666, 0, 0.333, 0.5)
h3q3Bottom = geometry.rect(0.666, 0.5, 0.333, 0.5)
h3q3Above75 = geometry.rect(0.666, 0, 0.333, 0.75)
h3q3Bottom25 = geometry.rect(0.666, 0.75, 0.333, 0.25)



local laptopScreen = "Built-in Retina Display"
local acerScreen = "Acer XR342CKP"


 -- Two column layout
local windowTwoColumLayout = {
      {"Safari",  nil,          laptopScreen, hs.layout.maximized,    nil, nil, visible=true},
      {"Mail",    nil,          laptopScreen, hs.layout.maximized,   nil, nil},
      {"Slack",    nil,         laptopScreen, hs.layout.maximized,   nil, nil}
  }



local workTwoColumnLayout = {
      {"IntelliJ IDEA",  nil,          acerScreen, hs.layout.left50,    nil, nil, visible=true},
      {"iTerm2",    nil,               acerScreen, hs.layout.right50,   nil, nil, visible=true},
      {"Slack",    nil,                acerScreen, hs.layout.right50,   nil, nil},
      {"Google Chrome",    nil,        acerScreen, hs.layout.right50,   nil, nil},
      {"Code",    nil,                 acerScreen, hs.layout.right50,   nil, nil},
      {"Notion",    nil,               acerScreen, hs.layout.left50,   nil, nil},
      {"Sublime Text",    nil,         acerScreen, hs.layout.right50,   nil, nil}
  }
 

 -- Three column layout
local windowThreeColumnLayout = {
      {"Google Chrome",  nil,          laptopScreen, hs.layout.maximized,    nil, nil, visible=true},
      {"Mail",    nil,          laptopScreen, hs.layout.maximized,   nil, nil},
      {"Slack",    nil,         laptopScreen, hs.layout.maximized,   nil, nil}
  }


local workThreeColumnLayout = {
      {"IntelliJ IDEA",  nil,           acerScreen, h1q3,    nil, nil, visible=true},
      {"Code",    nil,                  acerScreen, h1q3,   nil, nil},
      

      {"iTerm2",    nil,                acerScreen, h2q3,   nil, nil, visible=true},
   
      {"Safari",    nil,                acerScreen, h3q3Above75,   nil, nil},
      {"Firefox",    nil,               acerScreen, h3q3Above75,   nil, nil},
      {"Notion",    nil,                acerScreen, h3q3Above75,   nil, nil},
      {"Sublime Text",    nil,          acerScreen, h3q3Bottom25,   nil, nil}

     
  }



-- Two column caller
hs.hotkey.bind(shortcut2, "7", function()
  hs.layout.apply(windowTwoColumLayout)
  hs.layout.apply(workTwoColumnLayout)
end)

-- Three column caller
hs.hotkey.bind(shortcut2, "8", function()
  hs.layout.apply(windowThreeColumnLayout)
  hs.layout.apply(workThreeColumnLayout)
end)

hs.layout.apply(windowTwoColumLayout)
hs.layout.apply(workTwoColumnLayout)

