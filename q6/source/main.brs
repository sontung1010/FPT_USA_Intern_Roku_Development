'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

sub Main()
    ShowChannelRSGScreen()
end sub

sub ShowChannelRSGScreen()
    'Indicate this is a Roku SceneGraph application'
    white=&hFFFFFFFF
    screen0=CreateObject("roScreen")
    screen0.SetAlphaEnable(true)
    screen0.Clear(white)
    screen0.DrawRect(100,100, screen0.GetWidth()-200, screen0.GetHeight()-200, &h80)
    ' &h80 is black with a 50% alpha mix (RGBA)
    screen0.finish()
    m.port = CreateObject("roMessagePort")
    screen0.setMessagePort(m.port)

    ' 'Create a scene and load /components/helloworld.xml'
    ' ' scene = screen.CreateScene("HelloWorld")
    ' scene = screen.CreateScene("rectangleexample")
    ' screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub

