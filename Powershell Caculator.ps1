#Desc: Powershell Caculator
#Author: johnny yang

Clear-Host

function Main-Menu
{

do
{
"========CACULATOR=========="
"Press 1 for Addition"
"Press 2 for Subtraction"
"Press 3 for Multiply"
"Press 4 for Division"
"Press 5 to Exit"
"==========================="

$choice = Read-Host "SELECT YOUR OPTION"

#Start Functions
function Addition
    {
    $num1, $num2 = Get-Numbers
    $sum = $num1 + $num2 #Total amount
    Write-Host "The sum is $sum" #Output
    }

function Subtraction
    {
    $num1, $num2 = Get-Numbers
    $diff  = $num1 - $num2 #Total amount
    Write-Host "The difference is $diff" #Output
    }

function Multiplication
    {
    $num1, $num2 = Get-Numbers
    $results  = $num1 * $num2 #Total amount
    Write-Host "The results is $results" #Output
    }

function Division
    {
    $num1, $num2 = Get-Numbers
    $total  = $num1 / $num2 #Total amount
    Write-Host "The total is $total" #Output
    }

function Get-Numbers
    {
        [int]$sum1 = Read-Host "Enter the first number" # [int] = interger (data type).
        [int]$sum2 = Read-Host "Enter the second number"
        return $sum1, $sum2 # "return" = save info (caculating number)
    }

#Start Switch
switch($choice)
{
    1
        {
            Addition

        }
    2
        {
            Subtraction
        }
    3
        {
            Multiplication
        }
    4
        {
            Division
        }
    5
        {
            "goodbye."
         break
        }
    default
        {
            "Invalid Choice"
           
        }
        
}

 $answer = Read-Host "`nWould you like to continue? (Y/N)"

}while($answer -eq "Y")

#end of function
}

#START CACULATOR
Main-Menu #Starts the Main Menu logic

