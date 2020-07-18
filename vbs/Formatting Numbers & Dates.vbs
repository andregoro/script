a = 4570.8239483
b = 18.273
c = .76

MsgBox FormatNumber(a, 3)
MsgBox FormatCurrency(b)
MsgBox FormatPercent(c, 0)

MsgBox FormatDateTime("07-28-2009", vbLongDate)

'vbGeneralDate  Or 0
'vbLongDate  Or 1
'vbShortDate  Or 2
'vbLongTime  Or 3
'vbShortTime  Or 4