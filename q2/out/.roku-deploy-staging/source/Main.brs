'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

sub Main()

  input = "[({()})]"
  'input = "]]]]]"
  print "Initial string is "+ input

  stack = []
  length = len(input) - 1
  for i = 0 to length

    char = input.mid(i,1)
    if char = "[" or char = "{" or char = "("
      stack.Push(char)
    else 
      'print stack.count()
      if stack.count() < 1
        print "Invalid"
        return
      end if 

      a = stack.Pop()
      if (char = "]" and a <> "[") or (char = "}" and a <> "{") or (char = ")" and a <> "(")
        print "Invalid"
        return
      else
        print "Valid"
      end if

    end if

  end for

end sub