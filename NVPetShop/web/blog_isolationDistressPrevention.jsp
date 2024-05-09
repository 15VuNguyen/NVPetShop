<%-- 
    Document   : blog_isolationDistressPrevention
    Created on : Mar 9, 2024, 3:49:36 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | Isolation Distress Prevention</title>
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
      <h1>Isolation Distress Prevention</h1>
      <p>
        Our pups have been spoiled with our daily presence during what has
        become an endless work-from-home stint. But what happens when we have to
        return to the office and our dogs are left to sit in silence for 8 hours
        each day?
      </p>
      <p>
        <strong
          >Dog daycare can provide too much stimulation for many dogs, so it is
          critical to find a solution in which your dog can remain in the home
          environment he has come to trust.
        </strong>
      </p>
      <ul>
        <li>Did you adopt a dog during Covid?</li>
        <li>
          Have you been home with your dog day in and day out during the
          pandemic?
        </li>
        <li>
          Have you wondered how things will be once you return to the office?
        </li>
        <li>
          Do you know how your pup will handle your extended absence once you do
          return to the office?
        </li>
      </ul>
      <div class="img_blog">
        <img
          src="./img/blog6_isolationDistressPrevention.jpg"
          alt="IsolationDistressPrevention"
        />
      </div>
      <p>
        Isolation distress and separation anxiety can be some of the most
        debilitating conditions for both you and your dog, so it’s important to
        know how your dog will handle your absence and to start preparing now.
        Overcoming fears does not happen overnight, and we’re here to walk you
        through every step!
      </p>
      <p>
        What is Isolation Distress and how is it different from Separation
        Anxiety? Isolation Distress is when your pup doesn’t want to be left
        alone, but another human other than the owner can give comfort.
        Separation Anxiety is defined as a serious state of anguish when the dog
        becomes panicked and terrified at their owner’s departure, and being
        alone in the house while they’re gone.
      </p>
      <p>Causes of Isolation Distress or Separation Anxiety:</p>
      <ul>
        <li>
          The dog’s personality – there may be a genetic predisposition to SA or
          ID
        </li>
        <li>
          Re-homing, such as a dog who has had to be rehomed multiple times or
          even just once or a puppy who has just left the warmth of his
          littermates
        </li>
        <li>A dog who has never been left alone</li>
        <li>
          A dog who has been through a traumatic separation through the death of
          a family member (human or animal)
        </li>
        <li>
          The dog or a family member has an extended hospital stay, separating
          the dog from their family
        </li>
        <li>
          A dog who has experienced some sort of trauma while alone (an
          attempted or successful burglary or a fire, tornado, or severe storm)
        </li>
        <li>Noise phobia</li>
        <li>Old age</li>
        <li>The arrival of a new family member (human or animal)</li>
        <li>Leaving the litter at too young of an age</li>
        <li>
          The family moving to a new home or downsizing from a house to a
          condo/apartment
        </li>
      </ul>

      <p>
        <a href="./services.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >
        would like to help prepare your pup for comfortably living at home while
        you’re at work. Reach out now to schedule a virtual Meet ‘n Greet to see
        if we can help you!
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

