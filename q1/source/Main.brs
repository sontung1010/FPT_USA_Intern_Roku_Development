'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

sub Main()

  b = "jkhf23uiohc389"
  print "Initial string is "+b
  a=b.Split("")
  a.Reverse()
  s=a.Join("")
  print "Final string is "+s
  
end sub