$wordlist = (Invoke-WebRequest https://gist.githubusercontent.com/TecharyJames/44607f1c994779da9cd7fba5549a7a79/raw/d1f569f0bbe59ccb64a10acfb28b5f82ab4a74c0/WordlWordlist -UseBasicParsing).content
$wordlist = $wordlist.split(",")

$WordNumber = 228
$StartDate = "02/02/2022"
$TodaysDate = get-date -format dd/MM/yyyy

$WordCount = $wordnumber + (NEW-TIMESPAN -Start $StartDate -End $todaysDate).days + 3

write-output "The wordle word of the day is $($wordlist[$wordcount])"

pause