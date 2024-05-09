<%-- 
    Document   : blog_calmYourCatsFireworksFears
    Created on : Mar 9, 2024, 4:02:52 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | Calm Your Cat's Fireworks Fears</title>
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
      <h1>Calm Your Cat’s Fireworks Fears</h1>
      <p>
        As any cat owner can attest, cats hate loud noises, which they associate
        with danger. Their reactions are an evolutionary response to a situation
        that might require them to fight or take flight, according to veterinary
        experts. So it’s no surprise that fireworks can be pretty scary to cats.
      </p>
      <p>
        Signs that your cat may show if he is afraid of fireworks include
        dilated pupils, growling, pinned-back ears, crouching, and moving low
        and slow with his belly low to the ground. He may head under the bed or
        into a closet to seek refuge. Some cats may even become so panicked that
        they bolt out a screened window. So it’s a good idea to keep windows
        closed, which will also help muffle the noise of fireworks.
      </p>
      <div class="img_blog">
        <img
          src="./img/blog5_calmYourCat.jpg"
          alt="CalmYourCat’sFireworksFears"
        />
      </div>
      <p>
        Make sure their favorite areas to go when frightened are available to
        them. You can also create a safe room with several cozy hiding places
        where they can run to and hide if they want. Put the cat’s litter box
        and water bowl in the safe room too. Close curtains and blinds to help
        block flashes of light. You can also try to cover the noise. Renowned
        cat behaviorist Pam Johnson-Bennett recommends music or television
        rather than white noise because those are household sounds cats are
        already familiar with.
      </p>
      <p>
        She also recommends creating a “cat cave” where they can take comfort.
        You can make your own cave-style bed by stretching a t-shirt over a box.
        Just put the neck hole of the shirt over the opening of the box, turn
        the box on the side and line it with something soft. An advantage to
        using a homemade bed is that you can use a shirt you’ve already worn
        that has your comforting scent already on it, according to
        Johnson-Bennett.
      </p>
      <p>
        Another tip from Johnson-Bennett is to create a cat tunnel to the litter
        box so that kitty can get there without feeling exposed. If you don’t
        already have a cat tunnel you can make one out of paper bags by cutting
        out the bottoms and taping them together.
      </p>
      <p>
        Over-the-counter products that may help relieve your cat’s stress
        include compression shirts and synthetic pheromone sprays, collars or
        plug-in diffusers. CBD products may offer relief as well. If in the past
        your cat has been truly terrified of fireworks, you might want to talk
        to your veterinarian about an anti-anxiety medication.
      </p>
      <p>
        Staying calm yourself will also help get your cat through a night of
        fireworks. Take your cue from your cat and provide whatever kind of
        comfort she wants, whether letting her burrow her head in the crook of
        your arm or retreating to the back of the closet.
      </p>
      <p>
        Just pay attention to what works for your cat, and you will be going a
        long way to making them feel safe and secure.
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

