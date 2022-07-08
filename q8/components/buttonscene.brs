sub init()
  m.Button1 = m.top.findNode("Button1")
  m.Button1.textColor = "0x000000"
  m.Button1.focusFootprintBitmapUri = "pkg:/images/N2yuH.png"
  m.Button1.focusBitmapUri = "pkg:/images/round-button-focused.9.png"
  m.Button1.focusedTextColor = "0x24c84f"

  rect1 = m.Button1.boundingRect()
  x1 = (1280 - rect1.width) / 3
  y1 = (720 - rect1.height) / 2
  m.Button1.translation = [x1, y1]

  m.Button1.setFocus(true)
  m.Button1.observeField("buttonSelected","onbutton1Selected")

  m.Button2 = m.top.findNode("Button2")
  m.Button2.textColor = "0x000000"
  m.Button2.focusFootprintBitmapUri = "pkg:/images/N2yuH.png"
  m.Button2.focusBitmapUri = "pkg:/images/round-button-focused.9.png"
  m.Button2.focusedTextColor = "0x24c84f"

  rect2 = m.Button2.boundingRect()
  x2 = (1280 - rect2.width)/3*2
  y2 = (720 - rect2.height) / 2
  m.Button2.translation = [x2, y2]

  'Button2.setFocus(true)
  m.Button2.observeField("buttonSelected","onbutton2Selected")
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
  if press then
    if (key = "left") then
      m.Button1.setFocus(true)
      ?"Left pressed"
      return true
    else if (key = "right") then
      m.Button2.setFocus(true)
      ?"Right pressed"
      return true
    end if
  end if

  return false
end function

function onbutton2Selected() as void
  ?"onbutton2Selected"
  m.Button1 = m.top.findNode("Button1")

  newX = Rnd(1280)
  newY = Rnd(720)
  m.Button1.translation = [newX, newY]
end function

function onbutton1Selected() as void
  ?"onbutton1Selected"
  m.Button2 = m.top.findNode("Button2")

  newX = Rnd(1280)
  newY = Rnd(720)
  m.Button2.translation = [newX, newY]
end function
