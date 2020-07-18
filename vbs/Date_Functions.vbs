'Interval Values
'-------------------
'd   = Day
'm    = Month
'yyyy = Year
'w    = Weekday
'y    = Day of year
'ww   = Week of year
'q    = Quarter
'h   = Hour
'n   = Minute
's   = Second
'-------------------

'Date()
 MsgBox Date()  ,,"Current date"
'Time()
 MsgBox Time()  ,,"Current time"
'Now()
 MsgBox Now()  ,,"Current date & time"
 
'DateAdd(interval, amount, date)
 MsgBox DateAdd("m", 3, date)   ,,"+3 Months"
 MsgBox DateAdd("yyyy", 8, date)  ,,"+8 Years"
 MsgBox DateAdd("d", -7, date)  ,,"-7 Days"

'DateDiff(interval, date1, date2) 
 MsgBox DateDiff("s", DateAdd("n",-5,Now), Now) ,,"Seconds -5min Ago"
 MsgBox DateDiff("ww", "01-01-2014", Now)  ,,"Week of year"

'DatePart(interval, date) 
 MsgBox DatePart("w", now)   ,,"Weekday of today's date"
 MsgBox DatePart("q", "1-Apr-98") ,,"Quarter of April 1, 1998"