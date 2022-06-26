# Introduction
<ol>
  <li> <b>FHIRByte</b> is the simplest and fastest application to Develop, Test, Deploy, Scale APIs for any Healthcare Business </li>
  <li> The APIs are built in <a href = 'https://www.hl7.org/fhir/' target='_blank'> FHIR R4</a> JSON Format </li>
  <li> Supports both Cloud and On-Premisis Hosting </li>
  <li> Works on all top cloud providers such as Azure, AWS, Google Cloud, IBM Cloud etc</li>
  <li> Supports 4 databases - MYSQL, Oracle, SQL Server and PostGres </li>
  <li> Supports Data in all major languages like English, Mandarin , Spanish, Arabic, Russian etc </li>
  <li> For Business Queries, please send an email to <b>sales@fhirbyte.com </b></li>
</ol>

# Initial Release
First release was done on <b>26-Jun-2022</b> <br>
The release is having following 3 components
<ol> 
  <li> <b>MySQL:</b> fhirbyte.sql </li> 
  <li> <b>PHP api script:</b>  Folder php_apis_r4 </li> 
  <li> <b>Postman APIs collection:</b> FhirByte R4 apis.postman_collection.json  </li> 
</ol> 
 
It supports 1 FHIR resource  <br>
<ul> 
  <li> <a href = 'https://build.fhir.org/patient.html' target='_blank'> Patient </a> </li>  
</ul>

<h3> Steps to Test </h3>
<ol> 
  <li> Download WAMP Server from https://www.wampserver.com/en/ </li> 
  <li> Once Wamp is installed, create a folder called <b>fhirbyte</b> in www folder and place your <b>php_apis_r4</b>  folder</li> 
  <li> Download Postman Client from https://www.postman.com/  </li> 
  <li> Import <b>FhirByte R4 apis.postman_collection.json</b> into your Postman Client </li> 
  <li> Start the Wamp server and goto phpMyAdmin and create a database called <b>fhirbyte</b> </li> 
  <li> Import <b>fhirbyte.sql</b> into phpMyAdmin </li>
  <li> Edit connection.php if needed </li>
  <li> Open Postman client and test the 2 apis ie <b>Get All Patients and Get Patient by ID</b> </li>  
</ol> 
  
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
  <li> Download the 3 components
    <ul> <li> FHIR RDBMS Database SQL files </li>
      <li> Web Server Files like PHP,Python or Java JAR </li>
      <li> Postman APIs </li> </ul> </li>   
  <li> Import your test data in to the FHIR RDBMS Database (or) Use the already available sample data in your Cloud or On-Premisis DB server</li> 
  <li> Place the server files like .php or .jar in your Cloud or On-Premisis app server  </li>
  <li> Edit the connection strings for DB and App </li>
  <li> Try your <a href = 'https://en.wikipedia.org/wiki/Create,_read,_update_and_delete' target='_blank'> CRUD </a> Operations like Add Patient, Get Patient, Edit Encounters etc using <a href = 'https://www.postman.com/' target='_blank'> Postman </a>  apis </li>
</ol>  

# Trademark
FHIR® is the registered trademark of <a href = 'https://www.hl7.org/' target='_blank'> HL7 </a> and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
# Contact Us

For Business Queries, please send an email to sales@fhirbyte.com
