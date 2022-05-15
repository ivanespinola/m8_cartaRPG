<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Login</title>
  </head>
 
  <body>
 
    <form action="" method="post">
 
      <label for="name">Name:</label>
      <input name="name" required><br />
 
      <label for="contraseña">Contraseña:</label>
      <input name="contraseña" type="contraseña" required><br />
 
      <div class="g-recaptcha" data-sitekey="6LcePAATAAAAAGPRWgx90814DTjgt5sXnNbV5WaW"></div>
 
      <input type="submit" value="Submit" />
 
    </form>
 
    
    <script src='https://www.google.com/recaptcha/api.js'></script>
 
  </body>
</html>