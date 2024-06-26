

Invoke-RestMethod https://summit.dcrich.net/api/user_password -Headers @{Authorization = "Basic " }


function ConvertTo-Base64 {
    param (
        [string]$inputText
    )

    # Convert the input string to bytes using UTF-8 encoding
    $encodedBytes = [System.Text.Encoding]::UTF8.GetBytes($inputText)

    # Convert the bytes to Base64
    $encodedText = [System.Convert]::ToBase64String($encodedBytes)

    return $encodedText
}


ConvertTo-Base64 -inputText aa:aa


Invoke-RestMethod https://summit.dcrich.net/api/user_password -Headers @{Authorization = "Basic $(ConvertTo-Base64 aa:aa)" }


Invoke-RestMethod https://summit.dcrich.net/api/user_password -Headers @{Authorization = "Bearer LiHq2DPQIkF94ouXMSB75UTYnn7ddVhqzccuzcjT0IEWiRC7SEdfgOKI7pPk6D0XtgHq3c4uzJSJ9rOJrNEWIJ0CzwbG4NzC7RqOW4RwdHxBRKJM2ndjh8UIB1T1okoK0TqoQ5JDxMnd4JPMn9j5PsqhnUNgHtISOIEkSbOcGGfBPjYZFxxHNmt65JjWkoZJ4Wp5RrUDDYuLHmbLsFY9UfcuOkUvdXyIQHxUk0sVZg0QF0H5fDefPiLnh1RK1i6A" }


Invoke-RestMethod https://summit.dcrich.net/api/user_bearer -Headers @{Authorization = "Bearer LiHq2DPQIkF94ouXMSB75UTYnn7ddVhqzccuzcjT0IEWiRC7SEdfgOKI7pPk6D0XtgHq3c4uzJSJ9rOJrNEWIJ0CzwbG4NzC7RqOW4RwdHxBRKJM2ndjh8UIB1T1okoK0TqoQ5JDxMnd4JPMn9j5PsqhnUNgHtISOIEkSbOcGGfBPjYZFxxHNmt65JjWkoZJ4Wp5RrUDDYuLHmbLsFY9UfcuOkUvdXyIQHxUk0sVZg0QF0H5fDefPiLnh1RK1i6A" }

