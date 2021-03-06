# Introduction
<h3> Welcome to Hospini - Health Information Exchange </h3>
<ol>
  <li>  <a href = 'https://hospini.com/' target='_blank'> Hospini </a>  is the simplest and fastest application to Develop, Test, Deploy, Scale APIs for any Healthcare Business </li>
  <li> The APIs are built in <a href = 'https://www.hl7.org/fhir/' target='_blank'> FHIR R4</a> JSON Format </li>
  <li> To test the apis online, visit <a href = 'https://www.hospini.com' target='_blank'> https://www.hospini.com </a>   </li>
  <li> To test the apis locally or in your server, <a href = 'https://github.com/hospini-hie/fhir-r4-apis' target='_blank'> Download/Clone </a> the repo from GitHub </li>
  <li> Supports both Cloud and On-Premisis Hosting </li>
  <li> Works on all top cloud providers such as Azure, AWS, Google Cloud, IBM Cloud etc</li>
  <li> Supports 4 production databases - MYSQL, Oracle, SQL Server and PostGres </li>
  <li> Supports 100+ languages like <b> English ,中文 ,español, Русский , عربي ,Français etc </b> </li>
  <li> For Business Queries such as Enterprise Licensing,  send an email to <b>sales@hospini.com </b></li>
</ol>

# Initial Release
The Initial release is having following 3 components
<ol> 
  <li> <b>MySQL:</b> hospini.sql </li> 
  <li> <b>PHP api script:</b>  Folder php_apis_r4 </li> 
  <li> <b>Postman APIs collection:</b> Hospini FHIR R4 APIS -  Github.postman_collection.json  </li> 
</ol> 
 
It supports 3 FHIR resources  <br>
<ul> 
  <li> <a href = 'https://build.fhir.org/patient.html' target='_blank'> Patient </a> </li>  
  <li> <a href = 'https://build.fhir.org/organization.html' target='_blank'> Organization </a> </li> 
   <li> <a href = 'https://build.fhir.org/practitioner.html' target='_blank'> Practitioner </a> </li> 
</ul>

# Upcoming Releases

We have lot of interesting things coming up like 

<ol> 
  <li> PostGres+PHP+Postman </li> 
  <li> PostGres+Java+Postman </li> 
  <li> New FHIR resources like Encounter,PractitionerRole etc</li> 
  <li> much more </li> 
</ol> 

Please clone the repo for immediate updates upon releases

# How to test locally?
<ol> 
  <li> Download and Install WAMP Server from https://www.wampserver.com/en/ </li> 
  <li> Alternatively, You can use any App Servers from the cloud providers such as Azure, AWS, Google Cloud etc </li>
  <li> Mac users need to download XAMPP </li>
  <li> Create a folder called <b>hospini</b> in www folder and place your <b>php_apis_r4</b>  folder</li> 
  <li> Download Postman Client from https://www.postman.com/  </li> 
  <li> Import <b>Hospini FHIR R4 APIS -  Github.postman_collection.json</b> into your Postman Client </li> 
  <li> Goto phpMyAdmin in MYSQL and create a database called <b>hospini</b> </li> 
  <li> Import <b>hospini.sql</b> into phpMyAdmin </li>
  <li> Edit connection.php if needed </li>
  <li> Open Postman client and test the apis such as <b>Get All Patients, Get Patient by ID etc</b> </li>  
</ol>  

# How to test online?
Visit <a href = 'https://www.hospini.com' target='_blank'> https://www.hospini.com </a>

# Trademark
FHIR® is the registered trademark of <a href = 'https://www.hl7.org/' target='_blank'> HL7 </a> and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
# Contact Us

For Business Queries such as Enterprise Licensing,   send an email to <b>sales@hospini.com
