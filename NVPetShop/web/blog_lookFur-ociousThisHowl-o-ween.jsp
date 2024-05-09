<%-- 
    Document   : blog_lookFur-ociousThisHowl-o-ween
    Created on : Mar 9, 2024, 4:01:44 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | Look Fur-ocious this Howl-o-ween!</title>
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
      <h1>Look Fur-ocious this Howl-o-ween!</h1>
      <p>
        Incorporate fur accessories into your Halloween outfit. You can wear a
        faux fur coat, a furry tail, or furry leg warmers to give yourself a
        wild and "Fur-ocious" appearance.
      </p>
      <p>
        A lot of four-legged family members will be getting in on the fun, too.
        One in five pet parents intend to dress their pet up for Halloween this
        year, according to the survey. Younger adults are more likely to dress
        their pets in costume, with 28 percent of those aged 18–24 and 30
        percent of those aged 25–34 planning to do so.
      </p>
      <p>
        The most popular costumes for pet lovers include a pumpkin (10 percent),
        hot dog (5 percent), superhero or cat (each tied at 4 percent) and
        bumblebee (3 percent), according to the survey.
      </p>
      <div class="img_blog">
        <img
          src="./img/blog4_lookFurOcious.jpg"
          alt="LookFur-ociousThisHowl-o-ween!"
        />
      </div>
      <p>
        But that’s just the tip of the iceberg. We found plenty of clever and
        unusual costumes to round out the possibilities. Get ready for lots of
        smiles when you take your dog for a walk in one of these
        Instagram-worthy costumes.
      </p>
      <p>
        If the popular hot dog costume is too predictable for your taste,
        consider this: Tasty Taco Pet Costume
      </p>
      <p>OMG! Clear the sidewalks for Spider Dog! Spider Pup Dog Costume</p>
      <p>
        Nothing says Halloween like a killer clown: Ghost Town Clown Pet
        Illusion Costume
      </p>
      <p>
        For the dog (or cat) with artistic sensibilities: French Artist Costume
      </p>
      <p>
        Is your dog a real sweetheart? Get the message across with one of these
        delectable costumes: Banana Split Ice Cream Sundae Dog Costume & Cupcake
        Dog Costume
      </p>
      <p>
        It’ll be love at first bite with this vampire outfit. Available for cats
        too! Dracula Dog & Cat Costume
      </p>
      <p>
        Does your female dog have super powers? She needs this! Supergirl Dog
        Costume
      </p>
      <p>This fun costume delivers the goods: UPS Dog Costume</p>
      <p>
        Take your Toto out for a walk dressed like Dorothy, down to the red ruby
        shoes. Available for game kitties too. Wizard of Oz Dorothy Dog & Cat
        Costume
      </p>
      <p>
        Always measure your dog before ordering a costume — usually around the
        neck (snug like a collar), around the chest (at the widest part) and
        down the body (from the base of the neck to the base of the tail).
      </p>
      <p>
        If your dog can’t easily breathe, walk or potty while in the costume,
        forget the costume, no matter how cute or funny it is. Likewise, forgo
        any costume with dangling objects that could be swallowed, or one that
        impedes your dog’s vision or hearing.
      </p>
      <p>
        For more Halloween safety tips for your fearsome Fido, check out these
        safety tips!
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
