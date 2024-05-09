<%-- 
    Document   : blog_whatIsFearFreeTraining
    Created on : Mar 9, 2024, 3:52:32 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | What Is Fear Free Training ?</title>
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
      <h1>What is Fear Free Training?</h1>
      <p>
        <a href="./index.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >
        Staff Trainer Kyle completed the Fear Free certification in 2021, which
        is intended to prevent and alleviate fear in pets through proper and
        positive handling techniques. The course aligns with our positive
        reinforcement philosophy and has since been implemented into our staff
        training.
      </p>
      <h2>What’s the Best Way to Interact with Pets?</h2>
      <p>
        As animal lovers, the question “what is the best way to interact with
        dogs and cats?” is an important one. By exploring Fear Free ideas, we
        elevate our understanding to that answer. You may have already heard of
        Fear Free Practices with certified Veterinary clinics or Dog Trainers
        that you have worked with. Fear Free provides education on preventing
        and alleviating fear, anxiety, and stress in pets, as well as their
        enrichment and emotional well-being.
      </p>
      <div class="img_blog">
        <img
          src="./img/blog1_whatIsFearFreeTraining.jpg"
          alt="whatIsFearTraining"
        />
      </div>
      <p>
        When I first started working at
        <a href="./index.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >, I wanted to give the best experiences possible in any situation for
        the dogs and cats I spent time with. In the first couple months on the
        job, I read dog behavior and training books and then went on to cat
        behavior and training books. This helped prepare me to interact and
        communicate with dogs and cats effectively as well as understanding the
        messages that their behavior and body language were showing me.
      </p>
      <p>
        The same drive and dedication to always provide the best experiences to
        our cat and dog clients is what inspired us as a company to implement
        Fear Free practices in our work. This can range from greeting a new dog
        with non-threatening body language and a treat, to saying goodbye to a
        pet with separation anxiety in a relaxed way along with a distraction as
        we are leaving.
      </p>
      <h2>Return to Office and Separation Anxiety</h2>
      <p>
        Since the beginning of the Covid pandemic, many dogs and cats have
        become accustomed to our new routines and enjoy the extra time with
        their parents. This could lead to separation anxiety and/or isolation
        distress as that time together continues to return closer to what it was
        pre-pandemic.
      </p>
      <p>
        If you’re heading back to the office after working from home for months
        or years, the schedule change may be a difficult adjustment for your pup
        or kitty. Help prepare him or her by first leaving for a short time,
        then longer stretches of time — this way you are slowly acclimating him
        or her to your absence. Allowing your pup to meet and walk with a dog
        walker in your presence is also a great way to begin the adjustment
        phase of going back to the office. Please review our dog walking service
        options or fill out our online application to see if we are a good fit
        for you!
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

