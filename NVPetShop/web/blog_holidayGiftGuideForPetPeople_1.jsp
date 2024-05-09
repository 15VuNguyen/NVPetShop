<%-- 
    Document   : blog_holidayGiftGuideForPetPeople
    Created on : Mar 9, 2024, 3:49:18 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | Holiday Gift Guide for Pet People</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/blog_detail.css" />
  </head>
  <body>
    <div class="header_first_test">
      <div class="header container">
        <div class="header__logo">
          <a href="./index.jsp"
            ><img src="./img/logo-removebg-preview.png" alt="logo_ne"
          /></a>
          <a href="./index.jsp"><p>NVPetShop</p></a>
        </div>
        <div class="header__right">
          <div class="header__nav">
            <ul>
              <li><a href="./index.jsp">HOME</a></li>
              <li><a href="./about.jsp">ABOUT</a></li>
              <li><a href="./services.jsp">SERVICES</a></li>
              <li><a href="./blog.jsp" id="blog">BLOG</a></li>
              <li><a href="#">CONTACT</a></li>
            </ul>
          </div>
          <button onclick="openForm()">LOGIN</button>
          <button>GETTING STARTED</button>
          <div class="header__cart">
            <img src="./img/cart-removebg-preview.png" alt="cart_ne" />
          </div>
        </div>
      </div>
    </div>
    <div class="container body">
      <h1>Holiday Gift Guide for Pet People</h1>
      <div class="img_blog">
        <img
          src="./img/blog7_dogForCatPeople.jpg"
          alt="HolidayGiftGuideForPetPeople"
        />
      </div>
      <p>
        This year, many families are having to forgo their time together and
        instead planning virtual dinners and gatherings. The typical present
        exchange that once took place around the tree or menorah with extended
        family members is replaced with gifts left at the front door or mailed
        from a distance, making this year even more unique.
      </p>
      <p>
        To help make this gift-giving season extra special, we have compiled a
        list of rare and custom gifts from artists and small businesses for all
        the pet people in your life!
      </p>
      <ul>
        <li>
          <strong>Collars & Collar Accessories - </strong>NiftyNix Pet Bowties,
          Moxino Collars, Puddle Jumper Pups
        </li>
        <li>
          <strong>Kitty Toys & Games - </strong>Crochet Catnip, Stack the Cats
          Game
        </li>
        <li>
          <strong>Human Clothing - </strong>Custom Dog Jacket by Emily Miller
        </li>
        <li>
          <strong>Portraits - </strong>Happy Moments Art Custom Portraits, Water
          Pop Custom Portraits, Juanitas Colored Book, New Hueby Paintings
        </li>
        <li>
          <strong>Custom Photography - </strong>Kimberly Kingen Photography,
          Dogs and Not Dogs Photography
        </li>
      </ul>
      <p>
        <strong style="color: #45c4b0"
          >From all of us at
          <a
            href="./services.jsp"
            style="color: #9aeba3; text-decoration: none"
            ><strong>NVPetShop</strong></a
          >, have a safe and happy holiday season!</strong
        >
      </p>
    </div>
    <div class="main" id="myForm">
      <input type="checkbox" id="chk" aria-hidden="true" />
      <img src="./img/Close-icon.png" alt="" onclick="closeForm()" />
      <div class="signup">
        <form>
          <label for="chk" aria-hidden="true">Sign up</label>
          <input type="text" name="txt" placeholder="User name" required="" />
          <input type="email" name="email" placeholder="Email" required="" />
          <input
            type="password"
            name="pswd"
            placeholder="Password"
            required=""
          />
          <button>Sign up</button>
        </form>
      </div>

      <div class="login">
        <form>
          <label for="chk" aria-hidden="true">Login</label>
          <input type="email" name="email" placeholder="Email" required="" />
          <input
            type="password"
            name="pswd"
            placeholder="Password"
            required=""
          />
          <button>Login</button>
        </form>
      </div>
    </div>
    <div class="footer_first_test">
      <div class="footer container">
        <h4>Email: NVPetShop@gmail.com</h4>
        <h4>Contact: +123-456-7890</h4>
        <h4>123 Nguyen Hue Street, District 1, Ho Chi Minh City, VietNam</h4>
      </div>
    </div>
    <script>
      function closeForm() {
        document.getElementById("myForm").style.display = "none";
      }
      function openForm() {
        document.getElementById("myForm").style.display = "block";
      }
    </script>
  </body>
</html>

