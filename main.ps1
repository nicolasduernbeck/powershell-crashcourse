$PSVersionTable.PSVersion

Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned

#Comment
Write-Host "Hello world" -NoNewline

Get-Command -CommandType Cmdlet
Get-Help Write-Host


"Test" | Out-File test.txt

$TestVar = "Hello"
$TestVar | Out-File tester.txt
$TestVar.GetType()

$testBool = $true
$testBool.GetType().Name

$x = 1
$y = 1
$z = $x + $y

$z

$TestVar | Select-Object -Property *

Get-Member -InputObject $TestVar

#Array example
$Jedi = @('Obi Wan', 'Luke Skywalker', 'Yoda')

$Jedi.GetType()
$Jedi[0]
$Jedi[1]
$Jedi[2].GetType()

$Jedi += "Qui-Gon Chin"

#Typescript example
$Fellowship = @{key1= "1"; key2 = "2"}
$Fellowship.Add('key3', '3')
$Fellowship.Set_Item('key4', '4')

$Fellowship[1]

$testArray = @('a', 'b');
$testArray[0]

$testHashTable = @{name = 'lisa';  age= 16}

$testHashTable.name
$testHashTable.age
$testHashTable.Remove('age')
$testHashTable.age

$input = Read-Host -Prompt 'Input someting'

$thiefsCaught = "49";
if ($thiefsCaught -gt 20 -and $thiefsCaught -lt 50) {
    Write-Host "You are a good catcher!"
} elseif($thiefsCaught ) {

} else {
    Write-Host "Keep going, you will be a good catcher soon!"
}

$value = "10"

switch ($value) {
    "1" {Write-Host "It's 1"; break}
    "2" {Write-Host "It's 2"; break}
    default {Write-Host "I dont know which value it is"; break}
}

for ($i = 1; $i -le 10; $i++) {
    Write-Host "The current number is ${i}"
}

$arr = @('Luisa', 'Peter', 'Luke', 'Nico')

for ($i = 0; $i -lt $arr.Length; $i++) {
    $currentName = $arr[$i]
    Write-Host "The current character is ${currentName}"
}

foreach ($name in $arr) {
    Write-Host $name
}

$counter = 0
while ($counter -ne $arr.Length) {
    Write-Host $arr[$counter]  $counter
    $counter++
}