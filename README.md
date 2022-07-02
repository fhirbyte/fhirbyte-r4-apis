# Introduction
<ol>
  <li> <b>FHIRByte</b> is the simplest and fastest application to Develop, Test, Deploy, Scale APIs for any Healthcare Business </li>
  <li> The APIs are built in <a href = 'https://www.hl7.org/fhir/' target='_blank'> FHIR R4</a> JSON Format </li>
  <li> Supports both Cloud and On-Premisis Hosting </li>
  <li> Works on all top cloud providers such as Azure, AWS, Google Cloud, IBM Cloud etc</li>
  <li> Supports 4 databases - MYSQL, Oracle, SQL Server and PostGres </li>
  <li> Supports 100+ languages like <b> English ,中文 ,español, Русский , عربي ,Français etc </b> </li>
  <li> For Business Queries such as Enterprise Licensing, please send an email to <b>sales@fhirbyte.com </b></li>
</ol>

# Initial Release
The Initial release is having following 3 components
<ol> 
  <li> <b>MySQL:</b> fhirbyte.sql </li> 
  <li> <b>PHP api script:</b>  Folder php_apis_r4 </li> 
  <li> <b>Postman APIs collection:</b> FhirByte R4 apis.postman_collection.json  </li> 
</ol> 
 
It supports 1 FHIR resource  <br>
<ul> 
  <li> <a href = 'https://build.fhir.org/patient.html' target='_blank'> Patient </a> </li>  
</ul>

# Upcoming Releases

We have lot of interesting things coming up like 

<ol> 
  <li> PostGres+PHP+Postman </li> 
  <li> PostGres+Java+Postman </li> 
  <li> New FHIR resources like <a href = 'https://build.fhir.org/encounter.html' target='_blank'> Encounter </a>,
    <a href = 'https://build.fhir.org/organization.html' target='_blank'> Organization </a>, 
    <a href = 'https://build.fhir.org/practitioner.html' target='_blank'> Practitioner </a> etc</li> 
  <li> much more </li> 
</ol> 

Please clone the repo for immediate updates upon releases

# How Does it work?
<ol> 
  <li> Download WAMP Server from https://www.wampserver.com/en/ </li> 
  <li> Once Wamp is installed, create a folder called <b>fhirbyte</b> in www folder and place your <b>php_apis_r4</b>  folder</li> 
  <li> Download Postman Client from https://www.postman.com/  </li> 
  <li> Import <b>FhirByte R4 apis.postman_collection.json</b> into your Postman Client </li> 
  <li> Start the Wamp server and goto phpMyAdmin and create a database called <b>fhirbyte</b> </li> 
  <li> Import <b>fhirbyte.sql</b> into phpMyAdmin </li>
  <li> Edit connection.php if needed </li>
  <li> Open Postman client and test the apis such as <b>Get All Patients, Get Patient by ID etc</b> </li>  
</ol>  


# Trademark
FHIR® is the registered trademark of <a href = 'https://www.hl7.org/' target='_blank'> HL7 </a> and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
# Contact Us

For Business Queries such as Enterprise Licensing, please send an email to sales@fhirbyte.com
