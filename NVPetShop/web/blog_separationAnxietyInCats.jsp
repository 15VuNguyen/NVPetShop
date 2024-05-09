<%-- 
    Document   : blog_separationAnxietyInCats
    Created on : Mar 9, 2024, 3:50:35 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | Separation Anxiety In Cats</title>
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
      <h1>Separation Anxiety in Cats</h1>
      <p>
        Consider having one of our professional cat sitters visit for one or two
        daily dedicated play sessions. This can help alleviate stress for those
        cats who are distressed by solitude and can enjoy the company of and
        attention from someone other than their owner.
      </p>
      <p>
        So it’s not surprising that cats can suffer from separation anxiety,
        particularly orphaned kitties who were bottle-fed or those who were
        separated from their mother too young. Interestingly, female cats are
        diagnosed with separation anxiety more often than male cats.
      </p>
      <p>
        A change in the cat’s routine often triggers separation anxiety or
        causes it to get worse. A common scenario is when pet parents travel.
        Pet parents who have worked from home during the pandemic might also
        find their cat behaving differently once they start leaving the house
        for work each day.
      </p>
      <h2>Signs of Separation Anxiety Can Include:</h2>
      <ul>
        <li>
          Over-attachment to the pet parent, following them from room-to-room
          and seeking constant contact.
        </li>
        <li>
          Distress as the pet parent prepares to depart (pre-departure anxiety).
        </li>
        <li>Abnormally enthusiastic greeting upon the pet parent’s return.</li>
        <li>Excessive meowing and crying.</li>
        <li>Excessive self-grooming (more common in female cats).</li>
        <li>Destructive behavior (more common in male cats).</li>
        <li>Anorexia – the cat is often too anxious to eat when left alone.</li>
        <li>Vomiting</li>
        <li>
          Elimination outside the litter box, often in the form of urine
          marking, though fecal marking might also occur. In one study,
          three-quarters of the cats that peed outside the litter box did so
          exclusively on the pet parent’s bed. This often means that your cat is
          seeking to mix their scent with yours, or that they believe they are
          helping you find your way home.
        </li>
      </ul>
      <p>
        Anxious behaviors are not the result of disobedience or spite. They are
        distress responses. If you punish your cat, they will become even more
        upset and the problem could get much worse.
      </p>
      <div class="img_blog">
        <img
          src="./img/blog3_separationAnxietyInCat.jpg"
          alt="SeparationAnxietyInCats"
        />
      </div>
      <h2>Strategies to Minimize Your Cat’s Separation Anxiety Can Include:</h2>
      <ul>
        <li>
          Making the time surrounding your departure less stressful for the cat,
          and providing a stimulating environment:
        </li>
        <li>
          Put on your coat or take out your keys (cues that tell your cat you
          are ready to leave) at times other than departure so they become
          indifferent to the cues.
        </li>
        <li>
          Keep arrivals and departures low key–no “Mommy’s going to work now” or
          “Daddy’s home!”.
        </li>
        <li>Start with shorter absences first.</li>
        <li>
          Leave the radio or TV on a station that is often on when you’re home.
        </li>
        <li>
          Provide toys and/or puzzles for playtime while you are gone, and/or
          hide food in toys that make kitty work for it.
        </li>
        <li>Provide a perch where your cat can see their favorite views.</li>
      </ul>

      <h2>
        How Can
        <a href="./services.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >
        Help?
      </h2>
      <p>
        <a href="./services.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >
        offers cat sitting services. Consider having one of our professional cat
        sitters come by for daily dedicated play sessions. This can help
        alleviate stress for those cats who are distressed by solitude and can
        enjoy the company of and attention from someone other than their owner.
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

