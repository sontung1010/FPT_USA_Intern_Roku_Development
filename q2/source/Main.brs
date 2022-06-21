'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

sub Main()

  b = "jkhf23iiohc389"
  print "Initial string is "+b
  a=b.Split("")

  ' a.Reverse()
  ' s=a.Join("")
  ' print "Final string is "+s

  j=len(b)-1
  k=len(b)/2

  for i=0 to k
    temp = a[i]
    a[i] = a[j]
    a[j] = temp
    j--
  end for

  s=a.Join("")
  print "Final string is "+s

  
  
end sub
