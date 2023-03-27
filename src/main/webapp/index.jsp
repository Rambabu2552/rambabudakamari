<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>STUDENT REGISTERATION FORM</title>

</head>
<body bgcolor="Lightskyblue"></body>
    <h1>REGISTRATION FORM</h1>
 <form action="Registrationform" method="post">

    <label for="htnumber">HallTicket Number : </label>
    <input type="text" id="htnumber" Name="htnumber" placeholder="Enter your hallticket number"><br><br>

    <label for="fname">Name : </label>
    <input type="text" id="fname" Name="fname" placeholder="enter Name"><br><br>

    <label>Gender :</label>
    <input type="radio" name="gender" value="male"><label>Male</label>
    <input type="radio" name="gender" value="female"><label>FeMale</label>
    
    <br>

    <label>Branch:</label>
    <select name="branch">
        <option value="Course">Course</option>
        <option value="aiml">AI&ML</option>
        <option value="cse">CSE</option>
        <option value="ds">DS</option>
    </select> <br><br>

    <label>Section:</label>
    <select name="section">
        <option value="section">Section</option>
        <option value="a">A</option>
        <option value="b">B</option>
        <option value="c">C</option>
    </select> <br><br>


    <label>Phone :</label>
    <input type="text" name="phone" size="10"><br><br>

    <label>Email : </label>
    <input type="email" id="email" name="email"><br><br>

    <label>Pictures</label><br>
    <label for="myfile">select a file:</label>
    <input type="file" id="myfile" name="myfiles"> <br><br>

    <label>Address</label><br>
    <textarea cols="60"  name="address" value="address"></textarea> <br><br>


    <label>Password :</label>
    <input type="password" id="password" name="password"><br><br>


<input type="submit" value="register">
    <input type="button" value="Reset"/>
    <input type="button" value="Cancle"/>









    </form>


</body>
</html>