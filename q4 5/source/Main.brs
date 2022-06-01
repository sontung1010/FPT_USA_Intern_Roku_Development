'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************


sub Main()
  b="!#$%&\()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
  s=b.Split("")
  m.stack=[]
  'print len(b)

  length=Rnd(100)
  y=length.ToStr()
  print "The length of string is "+y
  for i=1 to length 
    a=Rnd(1000) MOD 94
    u=a.ToStr()
    'print "a=" + u
    c=s[a]
    'print c
    m.stack.Push(c)
  end for
  
  x=m.stack.Join("")
  print "The initial string is "+x

  z=x.Split("")
  'print z
  z.Sort()
  'print z
  t=z.Join("")
  print "The sorted string is "+t
  
end sub

