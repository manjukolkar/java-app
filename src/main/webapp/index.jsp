<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Web App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            scroll-behavior: smooth;
        }

        /* Navbar styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #333;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 30px;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .brand {
            color: #4CAF50;
            font-size: 1.5em;
            font-weight: bold;
        }

        /* Header section */
        header {
            padding: 100px 20px 50px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            font-size: 2em;
        }

        /* Section styling */
        section {
            margin: 60px 20px;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        h2 {
            color: #333;
        }

        .content {
            max-height: 300px;
            overflow-y: auto;
            padding-right: 10px;
        }

        /* Testimonials section */
        .testimonial {
            background-color: #fff;
            padding: 15px;
            margin: 10px 0;
            border-left: 5px solid #4CAF50;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
            margin-top: 50px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .navbar a {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="brand">MyWebApp</div>
    <div>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#careers">Careers</a>
        <a href="#testimonials">Testimonials</a>
        <a href="#contact">Contact</a>
    </div>
</div>

<!-- Header -->
<header>Welcome to Our Professional Web App</header>

<!-- Sections -->
<section id="home">
    <h2>Home</h2>
    <div class="content">
        <p>This is the Home section with scrollable content.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero.</p>
        <p>Suspendisse potenti. In hac habitasse platea dictumst. Cras elementum ultrices diam.</p>
        <p>More content... More content... More content... More content... More content...</p>
    </div>
</section>

<section id="about">
    <h2>About Us</h2>
    <div class="content">
        <p>We are a company that believes in quality and innovation. Our mission is to simplify technology.</p>
        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus.</p>
    </div>
</section>

<section id="careers">
    <h2>Careers</h2>
    <div class="content">
        <p>We are hiring! Join our dynamic team and shape the future.</p>
        <p>Current Openings:</p>
        <ul>
            <li>Software Developer</li>
            <li>DevOps Engineer</li>
            <li>UI/UX Designer</li>
        </ul>
    </div>
</section>

<section id="testimonials">
    <h2>Testimonials</h2>
    <div class="testimonial">
        <p>"Amazing experience working with this team. Highly professional!"</p>
        <strong>- Jane Doe</strong>
    </div>
    <div class="testimonial">
        <p>"Their service quality is top-notch. We love their commitment."</p>
        <strong>- John Smith</strong>
    </div>
</section>

<section id="contact">
    <h2>Contact Us</h2>
    <div class="content">
        <p>Feel free to reach out via email or phone. We're here to help!</p>
        <p>Email: support@mywebapp.com</p>
        <p>Phone: +1 234 567 8901</p>
    </div>
</section>

<!-- Footer -->
<footer>
    &copy; 2025 MyWebApp. All rights reserved.
</footer>

</body>
</html>
