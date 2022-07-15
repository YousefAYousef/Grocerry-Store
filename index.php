<?php
try {
    $conn = new PDO("mysql:host=localhost;dbname=shop", "root", "");
    $contactList = $conn->query("SELECT * FROM contact"); // object
    $contactData = $contactList->fetchAll(PDO::FETCH_ASSOC); // array 
} catch (PDOException $e) {
    echo $e->getMessage();
}
?>

<html>

<head>

</head>

<body>
    <table border="1" bgcolor="lightblue" width=50% align="center">
        <caption>Contacts</caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Message</th>
            
        </tr>
        <?php foreach ($contactData as $contact) { ?>
            <tr>
                <td><?php echo $contact['contactId'] ?></td>
                <td><?php echo $contact['Name'] ?></td>
                <td><?php echo $contact['Email'] ?></td>
                <td><?php echo $contact['Phone'] ?></td>
                <td><?php echo $contact['Message'] ?></td>
            </tr>
        <?php } ?>
    </table>
</body>

</html>