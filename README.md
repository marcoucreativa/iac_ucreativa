# Deploy Infraestructure as code (IAC)

Please find as follow all the laboratories we are working during this course:

* [Laboratory 01](Lab01/README.md)


az group create \
  --name infra-control-rg \
  --location southcentralus

az storage account create --name iacucreativa \
  --resource-group infra-control-rg \
  --location southcentralus


  

  az storage container create -n tfstate --account-name iacucreativa --account-key "pmLGOI7Sml0WtR2Jkd318fJpK7uT441fTuCYxe5nBrfHUV6xNltX5hjBnBn5oxhZw9liW1yYXD9PPacEOgqu4w=="