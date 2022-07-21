' Channel entry point
sub Main()
    ShowChannelRSGScreen()
end sub

sub ShowChannelRSGScreen()
    ' The roSGScreen object is a SceneGraph canvas that displays the contents of a Scene node instance
    screen = CreateObject("roSGScreen")
    'message port is the place where events are sent
    m.port = CreateObject("roMessagePort")
    ' sets the message port which will be used for events from the screen
    screen.SetMessagePort(m.port) 
    ' every screen object must have a Scene node, or a node that derives from the Scene node
    scene = screen.CreateScene("MainScene")
    screen.Show() ' Init method in MainScene.brs is invoked