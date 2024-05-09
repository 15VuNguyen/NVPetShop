<%-- 
    Document   : blog_theScoopOnPoop
    Created on : Mar 9, 2024, 3:52:15 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog | The Scoop On Poop</title>
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
      <h1>The Scoop on Poop</h1>
      <p>
        Picking up dog poop just goes with the territory when you’re a dog
        parent. You probably don’t give it a second thought. But because the
        color and consistency of your dog’s stool can provide important clues to
        their health, it pays to take note of their poop when you take them for
        walks and potty breaks.
      </p>
      <p>
        Normal stools are firm, log-shaped and a chocolate brown color. Below
        are some other excrement colors you may see and what they could mean:
      </p>
      <p>
        <strong>Green.</strong>Green stool usually just means your pet has eaten
        a lot of grass and is not a cause for concern. But if your dog is
        passing unexplained green stools, it could indicate a gall bladder
        issue, rat-bait poisoning or internal parasites.
      </p>
      <p>
        <strong>Grey.</strong>Grey dog feces can be a sign that your dog’s
        pancreas isn’t producing the enzymes necessary for the digestion of fat.
        It also can indicate liver problems.
      </p>
      <p>
        <strong>Orange/Yellow.</strong>This might mean fecal matter is moving
        too quickly through your dog’s digestive system to absorb bile, the
        substance that makes poop brown. However, it could also be a sign of a
        biliary or liver problem.
      </p>
      <p>
        <strong>Red streaks or spots.</strong>Bright red blood in your pup’s
        stool may mean that they have an anal fissure, a tear in the tissue of
        the lower rectum or anus caused by straining to defecate. It can also be
        the result of other conditions such as viral and bacterial infections,
        gastroenteritis or colitis.
      </p>
      <p>
        <strong>Black.</strong>Black dog poop could mean your pup has a bleeding
        ulcer. Some other causes include cancer, parasites, and viral or
        bacterial pathogens or a foreign body in the gastrointestinal system.
      </p>
      <p>
        <strong>White.</strong>If your dog’s waste looks chalky white after it
        dries out, it could be caused by minerals from undigested food. It also
        could be caused by a high level of calcium in the diet, common in dogs
        that chew on a lot of animal bones. This typically isn’t a cause for
        concern. But too much calcium could lead to constipation. Signs include
        infrequent defecation, straining to poop and/or hard, dry stools that
        look like pebbles.
      </p>
      <p>
        <strong>White spots.</strong>Oftentimes, worms in dog feces can appear
        as white flecks resembling rice grains.
      </p>

      <div class="img_blog">
        <img src="./img/blog2_theScoopOnPoop.jpg" alt="TheScoopOnPoop" />
      </div>
      <p>
        In addition to color, pay attention to the consistency of your dog’s
        poop. It should be solid, slightly moist, and easy to pick up. Watery
        stool is a sure sign that something is off with your pup. If it only
        happens once in a while, it’s usually not a major concern. It could be
        “garbage gut”–a sign that your dog got into the trash. But if your dog
        passes watery stool regularly, it could mean a potentially serious
        problem, especially if accompanied by persistent vomiting, refusing to
        eat or drink for more than 24 hours, and/or lethargy.
      </p>
      <p>
        Similarly, a little mucus in the stool is typically nothing to worry
        about. The slimy substance made by the intestines keeps the lining of
        the colon lubricated and moist. But excess mucus could be a sign of
        parasitic infestation, intestinal infections or inflammatory disorders.
      </p>
      <p>
        Finally, a certain amount of odor is expected when you’re picking up dog
        poop. But if it’s more stinky than usual, that could mean your dog’s
        digestive system isn’t effectively absorbing the fiber in their food.
      </p>
      <p>
        Medications, stress and diet changes can all cause your dog’s deposits
        to look different than it normally does. While a temporary change is
        usually nothing to worry about (e.g., one or two loose stools because
        they ate too many treats or green stool because they binged on grass),
        ongoing changes warrant a visit to your veterinarian.
      </p>
      <h2>How We Help</h2>
      <p>
        At
        <a href="./services.jsp" style="color: #9aeba3; text-decoration: none"
          ><strong>NVPetShop</strong></a
        >, we’re always keeping an eye on your dog’s poop and will report back
        to you if anything seems amiss! It’s one of the many ways we provide the
        best possible care for your pup.
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

