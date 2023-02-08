# azure-public

Challenge #1


A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these
resources on a cloud environment (Azure/AWS/GCP). Please remember we will not be judged
on the outcome but more focusing on the approach, style and reproducibility.

Solution:

The module is created under https://github.com/mykloud44/azure-public/tree/main/cloudtest/azure-public/3_tier_az_tf_app directory

I have deployed 3 tier azure application in terraform
we have deployed azure public load balancer for public access, then the vmss for site hosting and azure mysql database in the backend.



Challenge #2


We need to write code that will query the meta data of an instance within AWS or Azure or GCP
and provide a json formatted output.
The choice of language and implementation is up to you.

solution:

I have created a powershell script to query the metadata of an azure vm.

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



Challenge #3



We have a nested object. We would like a function where you pass in the object and a key and
get back the value.
The choice of language and implementation is up to you.
Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a


Solution:

I have writted code in python to get the output.

def get_value(obj, key):
    keys = key.split("/")
    for k in keys:
        if k in obj:
            obj = obj[k]
        else:
            return None
    return obj

object1 = {"a":{"b":{"c":"d"}}}
key1 = "a/b"
print(get_value(object1, key1))

#output is {'c': 'd'}

object2 = {"x":{"y":{"z":"a"}}}
key2 = "x"
print(get_value(object2, key2))

#output is {'y': {'z': 'a'}}
