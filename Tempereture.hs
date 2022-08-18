import GHC.Unicode

responseFor :: String -> String
responseFor xs = if(all isUpper (head xs)) then print("Calm down, I know what I'm doing!")

responseFor xs = if(all isUpper xs) then print("Whoa, chill out!")

responseFor xs = if(last == '?') then print("Sure")

responseFor "" = print("Fine. Be that way!")

responseFor xs = print("Whatever")