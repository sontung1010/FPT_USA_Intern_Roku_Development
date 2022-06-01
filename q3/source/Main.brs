'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************


sub Main()
  a=Rnd(10000)
  b=a.ToStr()
  print "The chosen number is "+b
  m.stack=[]
  while a>0
    x=a MOD 2 'remainder
    u=x.ToStr()
    m.stack.Push(u)
    a=fix(a/2) 'quotient
  end while

  'print m.stack
  m.stack.Reverse()
  'print m.stack
  z=m.stack.Join("")
  'print z
  print "The binary code of "+b+" is "+z

  
end sub

