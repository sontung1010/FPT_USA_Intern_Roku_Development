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
  
  p=length-1

  ascArray = []
  for i=0 to p
    o=z[i]
    r=o.ToStr()
    'print r
    'print type(r)
    'print Asc(r)
    w=Asc(r)
    'print w
    ascArray.Push(w)
  end for

  'print "The initial ascArray is:"
  'print ascArray

  for i=0 to p
    'print "i = " + i.ToStr()
    e=p-i-1
    for j=0 to e
      q=ascArray[j]
      'print "q = " + q.ToStr()
      k=ascArray[j+1] 
      'print "k = " + k.ToStr()
      if q > k
        'print q.ToStr() + ">" + k.ToStr()
        'print "ascArray["+j.ToStr()+"] > ascArray["+(j+1).ToStr()+"]"
        temp = ascArray[j]
        'print "temp = " + temp.ToStr()
        ascArray[j] = ascArray[j+1]
        'print "ascArray["+j.ToStr()+"] = " + ascArray[j].ToStr()
        ascArray[j+1] = temp
        'print "ascArray["+(j+1).ToStr()+"] = " + ascArray[j+1].ToStr()
      end if
    end for
  end for

  sortedArray = ascArray

  'print "The sorted ascArray is:"
  'print sortedArray
  
  chrArray = []
  for i=0 to p
    h=sortedArray[i]
    'print Chr(h)
    l=Chr(h)
    chrArray.Push(l)
  end for

  'print chrArray
  g=chrArray.Join("")

  z.Sort()
  'print z
  t=z.Join("")
   
  print "The sorted string using bult-in function is "+t
  print "The sorted string manually is "+g
  
end sub

