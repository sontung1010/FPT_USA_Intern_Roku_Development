sub Init()
    ' set background color for scene. Applied only if backgroundUri has empty value
    m.top.backgroundColor = "0xffffff"
    m.top.backgroundUri= ""

    row = 50
    column = 60

    lastrow = row - 1
    lastcolumn = column - 1

    w = 1280/column
    h = 720/row

    for i=0 to lastrow
        print "i = " + i.ToStr()
        for j = 0 to lastcolumn

            print "j = " + j.ToStr()
            a = w*j
            print "a = " + a.ToStr()
            b = h*i
            print "b = " + b.ToStr()

            rectangle = CreateObject("roSGNode", "Rectangle")
            rectangle.width = w
            rectangle.height = h

            code="0123456789abcdef"
            s=code.Split("")
            m.stack=["0x"]
            for k=1 to 6 
                ind=Rnd(1000) MOD 16
                m.stack.Push(s[ind])
            end for
            colorcode = m.stack.Join("")

            print "The color code of (" + i.ToStr() + "," + j.ToStr() + ") is "  + colorcode

            rectangle.color = colorcode
            rectangle.translation = [a,b]
            m.top.appendChild(rectangle)

        end for
    end for

    ' rectangle = CreateObject("roSGNode", "Rectangle")
    ' rectangle.width = 100
    ' rectangle.height = 100
    ' rectangle.color = "0x0000FFFF"
    ' rectangle.translation = [130,120]
    ' m.top.appendChild(rectangle)
    
end sub
