sub init()
  exampleButton = m.top.findNode("exampleButton")
  exampleButton.focusedTextColor = "0x24c84f"
  exampleButton.focusBitmapUri = "pkg:/images/round-button-focused.9.png"

  examplerect = exampleButton.boundingRect()
  centerx = (1280 - examplerect.width) / 2
  centery = (720 - examplerect.height) / 2
  exampleButton.translation = [ centerx, centery ]

  exampleButton.setFocus(true)
  exampleButton.observeField("buttonSelected","onbuttonSelected")
end sub

function onbuttonSelected() as void
  ?"onbuttonSelected"
  exampleButton = m.top.findNode("exampleButton")

  newX = Rnd(1280)
  newY = Rnd(720)
  exampleButton.translation = [newX, newY]
end function
