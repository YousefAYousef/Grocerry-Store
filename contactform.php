<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Contact Us </title>
        <link rel="stylesheet" type="text/css" href="Design.css">
    </head>

    <body>
        <div class="contact-title">
            <h1> Contact Us </h1>
        </div>
        <div class="contact-form">
            <form action="contactus.php" method="post" >
            <input name="name" type="text" class="form-control" 
            placeholder="Name" autocomplete="off" required>
            <br>
            <input name="email" type="email" class="form-control" 
            placeholder="Email" autocomplete="off" required>
            <br>
            <input name="Phone" type="text" class="form-control" 
            placeholder="Phone Number" autocomplete="off" required>
            <br>
            <textarea name="message" class="form-control" 
            placeholder="Message" row="4" required></textarea><br>

            <input type="submit" class="form-control submit" value="SUBMIT">
            </form>

        </div>
    </body>
</html>