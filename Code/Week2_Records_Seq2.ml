(*
TIME ON PLANET SHADOKUS  (30 points possible)
On planet Shadokus, a year has 5 months, each month has 4 days, each day has 3 hours and each hour has 2 minutes. A calendar date is therefore defined as the record type date of the given prelude.

A date is well-formed if its year index is >= 1, its month index is >= 1 and <= 5, its day index is >= 1 and <= 4, its hour index is >= 0 and <= 2, and its minute index is >= 0 and <= 1.
The start of year 12 would be:
{ year = 12; month = 1; day = 1; hour = 0; minute = 0 }
The end of year 12 would be:
{ year = 12; month = 5; day = 4; hour = 2; minute = 1 }

Write a function wellformed : date -> bool which checks that the input date is well formed.
On planet Shadokus, the origin of time is the discovery of the Big-Lambda-Machine, a magical computer that evaluates the infinite lambda-term of time. It is defined by value the_origin_of_time of the given prelude.
Write a function next : date -> date which computes the date which comes one minute after the input date.
In this computer, the time is represented by an integer that counts the number of minutes since 1/1/1 0:0 (the origin of time).
Write a function of_int : int -> date that converts such an integer into a date.
*)

type date =
  { year : int; month : int; day : int;
    hour : int; minute : int }

let the_origin_of_time =
  { year = 1; month = 1; day = 1;
    hour = 0; minute = 0 }

let wellformed date =
  let {year = y; month = m; day = d; hour = h; minute = mi} = date in
  y >= 1 &&
  m >= 1 && m <= 5 &&
  d >= 1 && d <= 4 &&
  h >= 0 && h <= 2 &&
  mi >= 0 && mi <= 1;;

let next date =
  let {year = y; month = m; day = d; hour = h; minute = mi} = date in
  let nmi = mi + 1 in
  if nmi < 2 then {year = y; month = m; day = d; hour = h; minute = nmi}
  else let nmi = 0 and nh = h + 1 in
    if nh < 3 then {year = y; month = m; day = d; hour = nh; minute = nmi}
    else let nh = 0 and nd = d + 1 in
      if nd < 5 then {year = y; month = m; day = nd; hour = nh; minute = nmi}
      else let nd = 1 and nm = m + 1 in
        if nm < 6 then {year = y; month = nm; day = nd; hour = nh; minute = nmi}
        else let nm = 1 and ny = y + 1 in
          {year = ny; month = nm; day = nd; hour = nh; minute = nmi};;

let of_int minutes =
  let mi = minutes mod 2
  and minutes = minutes / 2 in
  let h = minutes mod 3
  and minutes = minutes / 3 in
  let d = minutes mod 4 + 1
  and minutes = minutes / 4 in
  let m = minutes mod 5 + 1
  and y = minutes / 5 + 1 in
  {year = y; month = m; day = d; hour = h; minute = mi};;
