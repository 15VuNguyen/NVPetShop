<%-- 
    Document   : services
    Created on : Mar 9, 2024, 3:37:25 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Services | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/services.css" />
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
              <li><a href="./index.jsp" >HOME</a></li>
              <li><a href="./about.jsp">ABOUT</a></li>
              <li><a href="./services.jsp" id="services">SERVICES</a></li>
              <li><a href="./blog.jsp">BLOG</a></li>
              <li><a href="./contact.jsp">CONTACT</a></li>
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
    <div class="container">
      <div class="services_body">
        <div class="services_body__title">
          <h3>NVPetShop</h3>
          <h2>Where Every Paw Matters</h2>
        </div>
        <div class="services_body__intro">
          <div class="services_body__intro__image">
            <img src="./img/about_2_event.png" alt="" />
          </div>
          <div class="services_body__intro__detail">
            <p>
              We are not just an ordinary pet store; we are a passionate
              community of pet lovers. We believe that pets are cherished
              members of the family and deserve the very best care.
            </p>
            <p>
              <a href="#NVPetFood" style="color: #9aeba3; text-decoration: none"
                ><strong>NVPetFood</strong></a
              >
              - Health and nutrition are our top priorities. We provide a wide
              range of high-quality pet food, from handcrafted meals to
              nutritious dry and wet food options. With NVPetFood, you can
              confidently nourish your pet with the best.
            </p>
            <p>
              <a
                href="#NVPetGrooming"
                style="color: #9aeba3; text-decoration: none"
                ><strong>NVPetGrooming</strong></a
              >
              - Beauty in every detail! Our team of expert pet groomers will
              transform your pet into a true star. From bathing, fur trimming,
              and nail clipping to ear cleaning and oral hygiene, we deliver an
              exceptional grooming experience for your beloved companion.
            </p>
            <p>
              <a
                href="#VeterinaryCare"
                style="color: #9aeba3; text-decoration: none"
                ><strong>Veterinary Care</strong></a
              >
              - Health comes first. Our professional veterinary team ensures
              that your pet stays in optimal health. From regular check-ups,
              vaccinations to treatments and consultations, we are committed to
              providing comprehensive medical care for your furry friend.
            </p>
            <p>
              <a
                href="#NVPetEvent"
                style="color: #9aeba3; text-decoration: none"
                ><strong>NVPetEvent</strong></a
              >
              - Connect and celebrate. We organize exciting events for pets and
              pet owners, creating opportunities to share joy and experiences
              within our pet-loving community.
            </p>
            <p>
              <a
                href="#NVPetTraining"
                style="color: #9aeba3; text-decoration: none"
                ><strong>NVPetTraining</strong></a
              >
              - Be the perfect companion. Our pet training services help your
              pet develop the best skills and behaviors. We assist you and your
              pet in building a loving and trustworthy relationship.
            </p>
            <p>
              <a
                href="#NVPetSitter"
                style="color: #9aeba3; text-decoration: none"
                ><strong>NVPetSitter</strong></a
              >
              - We will ensure that your pet is fed, walked, played with, and
              receives love and attention while you are away. You can feel
              confident going to work, traveling, or engaging in any other
              plans, knowing that your pet is being well taken care of.
            </p>
          </div>
        </div>
        <div class="services_body__list">
          <div class="services_body__block">
            <div class="services_body__block__image" id="NVPetFood">
              <img src="./img/home_2_best-service1_food.png" alt="service1" />
            </div>
            <div class="services_body__block__info">
              <h2>NVPetFood Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Our Pet Food service offers
                high-quality and nutritious food options for your pets. We
                prioritize their care and health by providing products made with
                fresh, natural ingredients and free from artificial additives or
                harmful preservatives.
              </p>
              <h4><strong>Price: </strong>50$</h4>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>

          <div class="services_body__block">
            <div class="services_body__block__image">
              <img
                src="./img/home_3_best-service2_gromming.png"
                alt="service2"
                id="NVPetGrooming"
              />
            </div>
            <div class="services_body__block__info">
              <h2>NVPetGrooming Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Pet grooming is a service that
                involves caring for and beautifying pets, ensuring they are
                clean, comfortable, and have a well-groomed appearance. The pet
                grooming process includes activities such as bathing, trimming
                the fur...
              </p>
              <h4><strong>Price: </strong>100$</h1>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>

          <div class="services_body__block">
            <div class="services_body__block__image">
              <img
                src="./img/home_4_bestservice3_veterinary.png"
                alt="service3"
                id="VeterinaryCare"
              />
            </div>
            <div class="services_body__block__info">
              <h2>Veterinary Care Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Our Veterinary Care service at
                NVPetShop is dedicated to providing comprehensive healthcare for
                your beloved pets.Our veterinary care services include
                vaccinations, preventive care, diagnostics, surgical procedures,
                dental care, and nutritional counseling.
              </p>
              <h4><strong>Price: </strong>200$</h4>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>

          <div class="services_body__block">
            <div class="services_body__block__image">
              <img
                src="./img/service_4_petEvent.png"
                alt="service4"
                id="NVPetEvent"
              />
            </div>
            <div class="services_body__block__info">
              <h2>NVPetEvent Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Our pet events are designed to bring
                pets and their owners together in a vibrant and engaging
                environment. Whether it's a pet adoption drive, a pet-friendly
                fair, or a themed gathering, our events offer a wide range of
                activities.
              </p>
              <h4><strong>Price: </strong>50$</h4>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>

          <div class="services_body__block">
            <div class="services_body__block__image">
              <img
                src="./img/service_5_petTraining.png"
                alt="service4"
                id="NVPetTraining"
              />
            </div>
            <div class="services_body__block__info">
              <h2>NVPetTraining Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Our experienced trainers work closely
                with both you and your pet to address specific training needs
                and goals.Using reward-based training methods, we focus on
                teaching essential commands, socialization skills, and
                addressing behavioral issues.
              </p>
              <h4><strong>Price: </strong>50$</h4>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>

          <div class="services_body__block">
            <div class="services_body__block__image">
              <img
                src="./img/service_6_petSitter.png"
                alt="service6"
                id="NVPetSitter"
              />
            </div>
            <div class="services_body__block__info">
              <h2>NVPetSitter Service</h2>
              <strong>Pet Category: </strong
              ><select name="" id="">
                <option value="Dog">Dog</option>
                <option value="Cat">Cat</option>
                <option value="Fish">Fish</option>
                <option value="Bird">Bird</option>
                <option value="Hamster">Hamster</option>
                <option value="Rabbit">Rabbit</option>
                <option value="Guinea Pig">Guinea Pig</option>
                <option value="Turtle">Turtle</option>
                <option value="Snake">Snake</option>
                <option value="Lizard">Lizard</option>
                <option value="Ferret">Ferret</option>
                <option value="Hedgehog">Hedgehog</option>
                <option value="Tarantula">Tarantula</option>
                <option value="Hermit Crab">Hermit Crab</option>
                <option value="Gerbil">Gerbil</option>
                <option value="Chinchilla">Chinchilla</option>
                <option value="Parrot">Parrot</option>
                <option value="Horse">Horse</option>
                <option value="Miniature Pig">Miniature Pig</option>
                <option value="Goat">Goat</option>
              </select>
              <p>
                <strong>Detailed: </strong>Our pet sitters will follow your
                instructions regarding feeding, exercise, medication, and any
                specific needs of your pets. We offer regular updates and
                communication, so you can stay informed about your pets'
                well-being while you're away.
              </p>
              <h4><strong>Price: </strong>150$</h4>
            </div>
            <div class="services_body__block__controller">
              <div class="services_body__block__controller-btn">
                <a href="#">BOOKING</a>
              </div>
              <div class="services_body__block__controller-btn">
                <a href="#">ADD TO CART</a>
              </div>
            </div>
          </div>
        </div>
      </div>
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

