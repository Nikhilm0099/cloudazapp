$response = Invoke-WebRequest -Uri "http://169.254.169.254/metadata/instance?api-version=2019-06-01" -Headers @{"Metadata"="true"}

if ($response.StatusCode -eq 200) {
    $metadata = $response.Content | ConvertFrom-Json

    # do something with the metadata
} else {
    Write-Error "Error: Unable to retrieve metadata (HTTP status code: $($response.StatusCode))"
}


$json = @{}
$json.Add("ComputeName", $metadata.compute.name)
$json.Add("Location", $metadata.compute.location)
$json.Add("ResourceGroupName", $metadata.compute.resourceGroupName)

$json | ConvertTo-Json


