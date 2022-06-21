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

  length=Rnd(50)
  y=length.ToStr()
  print "The length of string is "+y
  for i=1 to length 
    a=Rnd(1000) MOD 94
    m.stack.Push(s[a])
  end for
  

  print "The initial string is " + m.stack.Join("")


  p=length-1


  for i=0 to p
    e=p-i-1
    for j=0 to e
      q=m.stack[j]
      k=m.stack[j+1] 
      if q > k
        temp = m.stack[j]
        m.stack[j] = m.stack[j+1]
        m.stack[j+1] = temp
      end if
    end for
  end for

  sortedArray = m.stack.Join("")

  print "The sorted string is " + sortedArray
  
  
end sub

