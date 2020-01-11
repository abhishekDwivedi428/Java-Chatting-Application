<%-- 
    Document   : ProfilePictureUpload
    Created on : Oct 7, 2018, 1:32:33 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Profile Picture Uploading</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/fileupload.css">

  
</head>

<body>

  <h2>Select your Profile Picture</h2>
<p class="lead">No Plugins <b>Just Javascript</b></p>

<!-- Upload  -->
<button>Skip>>>></button>
<form action="UploadImage.jsp" method="post" enctype="multipart/form-data" id="file-upload-form" class="uploader">
         <input id="file-upload" type="file" name="file-Upload" accept=".jpg,.png"/>

  <label for="file-upload" id="file-drag">
    <img id="file-image" src="#" alt="Preview" class="hidden">
    <div id="start">
      <i class="fa fa-download" aria-hidden="true"></i>
      <div>Select a file or drag here</div>
      <div id="notimage" class="hidden">Please select an image</div>
      <span id="file-upload-btn" class="btn btn-primary">Select a file</span>
    </div>
    <div id="response" class="hidden">
      <div id="messages"></div>
      <progress class="progress" id="file-progress" value="0">
        <span>0</span>%
      </progress>
    </div>
  </label>
         <input type="Submit" value="Continue"/>
  </form>


 







  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>

  

    <script  src="js/fileupload.js"></script>




</body>

</html>

