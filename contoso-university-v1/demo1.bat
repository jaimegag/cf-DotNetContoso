cf push contoso-demo-v1 -b binary_buildpack  -s windows2012R2 --no-start
cf set-health-check contoso-demo-v1 none
cf bind-service contoso-demo-v1 contoso-demo-sql
cf bind-service contoso-demo-v1 contoso-demo-queue
cf start contoso-demo-v1
cf map-route contoso-demo-v1 apps.10.65.226.17.piv.io -n contoso

REM Data Source=jagappsdb.database.windows.net;Integrated Security=False;User ID=jaguilar@jagappsdb;Password=Jg1g53l1r@;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;Initial Catalog=Contoso_DB

REM Endpoint=sb://jagapps.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=YxsEg9cI02BJPognvmHTSKPhfuU/MdFzZfCGCtsI4ww=