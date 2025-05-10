<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Web App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        section {
            margin: 50px 0;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            border-radius: 5px;
        }
        .content {
            max-height: 500px;
            overflow-y: scroll;
        }
        header {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 2em;
        }
    </style>
</head>
<body>

<header>Welcome to Our Simple Web App</header>

<section id="home">
    <h2>Home</h2>
    <div class="content">
        <p>This is the Home section. It contains some scrollable content.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet erat vitae nisl fermentum iaculis non et ligula. Nullam ut malesuada libero. Phasellus auctor, sem non egestas auctor, nunc libero tempor arcu, a facilisis sapien justo at tortor.</p>
        <p>More content...</p>
        <p>More content...</p>
        <p>More content...</p>
    </div>
</section>

<section id="about">
    <h2>About Us</h2>
    <div class="content">
        <p>Learn more about us in the About Us section.</p>
        <p>Nullam ut malesuada libero. Phasellus auctor, sem non egestas auctor, nunc libero tempor arcu.</p>
    </div>
</section>

<section id="careers">
    <h2>Careers</h2>
    <div class="content">
        <p>Interested in joining our team? Visit the Careers section.</p>
    </div>
</section>

<section id="contact">
    <h2>Contact Us</h2>
    <div class="content">
        <p>Get in touch with us through the Contact section.</p>
    </div>
</section>

</body>
</html>
