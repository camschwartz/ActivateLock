
[string] $ParticleAPIBaseUri = "https://api.particle.io/v1/devices/"

# This section defines connection properties for the Photon device to be used
[string] $ParticleDeviceID = "30002d000547343233323032"
[string] $ParticleAccessToken = "9d9ad498497bda7e6fb90d96af6375fb08d0cad4"

# Function to be called
[string] $ParticleAppName = "activatelock"

# Build the full URI
$postUri = $ParticleAPIBaseUri + $ParticleDeviceID + "/" + $ParticleAppName

# Build the POST payload
$postParams = @{access_token=$ParticleAccessToken;}

# Make the call
$WebResponse = Invoke-WebRequest -Uri $postUri -Method Post -Body $postParams