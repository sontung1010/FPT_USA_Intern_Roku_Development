sub Init()
    ' set background color for scene. Applied only if backgroundUri has empty value
    m.top.backgroundColor = "0x662D91"
    m.top.backgroundUri= ""
    rectangle = CreateObject("roSGNode", "Rectangle")
    rectangle.width = 100
    rectangle.height = 100
    rectangle.color = "0x880088FF"
    rectangle.translation = [30,50]
    m.top.appendChild(rectangle)

    rectangle = CreateObject("roSGNode", "Rectangle")
    rectangle.width = 100
    rectangle.height = 100
    rectangle.color = "0x880088FF"
    rectangle.translation = [130,120]
    m.top.appendChild(rectangle)
    
end sub
