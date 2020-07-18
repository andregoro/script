a = 5
b = 3
c = 3

MsgBox a + b ,, "5 plus 3"
MsgBox a - c ,, "5 minus 3"
MsgBox b / a ,, "3 divided by 5"
MsgBox a * c ,, "5 times 3"

MsgBox Int(5.298723) ,, "Cuts off decimals of: 5.298723"
MsgBox Int(5.862987) ,, "Cuts off decimals of: 5.862987"

MsgBox Round(5.298723) ,, "Rounds off decimals of: 5.298723"
MsgBox Round(5.862987) ,, "Rounds off decimals of: 5.862987"

MsgBox Abs(-3) ,, "Absolute value of -3"

Randomize
MsgBox Int(10*Rnd) ,, "Random number between 0 and 10"