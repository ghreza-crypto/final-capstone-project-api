<a name="readme-top"></a>

<div align="center">
  <br/>

  <h3><b>TripTrek</b></h3>

</div>


# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 TripTrek ](#-triptrek-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo](#-live-demo)
  - [🚀 Video Demo](#-video-demo)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ (OPTIONAL) ](#-faq-optional-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 TripTrek <a name="about-project"></a>

TripTrek is an innovative car booking application designed to elevate your travel experience. With TripTrek, effortlessly reserve a vehicle for your journeys, whether it's a quick city escape or a scenic road trip. Our user-friendly platform ensures a seamless and convenient booking process, allowing you to choose from a diverse fleet of reliable vehicles. Experience the freedom of the open road as TripTrek takes care of the details, making your travel adventures memorable and stress-free. Embrace the joy of exploration with TripTrek – your trusted companion for every road ahead. 

**TripTrek** 

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

The following stacks were used

<details>
  <summary>Technologies Used:</summary>
  <ul>
    <li>
      Front-end:
      <ul>
        <li><a href="https://developer.mozilla.org/en-US/docs/Web/HTML">HTML</a></li>
        <li><a href="https://developer.mozilla.org/en-US/docs/Web/CSS">CSS</a></li>
        <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">JavaScript</a></li>
        <li><a href="https://react-redux.js.org/">React Redux</a></li>
        <li><a href="https://react.dev/">React</a></li>
        <li><a href="https://webpack.js.org/">Webpack</a></li>
      </ul>
    </li>
    <li>
      Back-end:
      <ul>
        <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
        <li><a href="https://rubyonrails.org/">Rails</a></li>
        <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
      </ul>
    </li>
  </ul>
</details>



<!-- Features -->

### Key Features <a name="key-features"></a>

- **User Registration**
- **Car Booking**
- **Reserve a car**
- **Responsive Design**
- **Car Fleet Information**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo 
<a name="live-demo" href="#">Demo(not available)</a>

## 🚀 Video Demo 
<a name="live-demo" href="#">Video(not available)</a>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need to have 
- a browser and a code editor
- `Node.js` and `npm` on your computer.
- installed and configured ruby in your local environment:
- setup Postgres database

### Setup

Clone these repositories to your desired folder:

<!--
Example commands:

```sh
  cd my-folder
  git clone https://github.com/devalibello/final-capstone-project.git
  git clone https://github.com/devalibello/final-capstone-project-api.git
```
 
--->
Before to run the program, verify that you have Ruby installed on your OS running the following command:
<!--
```sh
   ruby -v
```
--->

### Usage

To run the project follow these steps :
1. Run the server :
   1. Open your terminal and navigate to the root directory of your project
   2. Run `bundle install`
   3. Remove config/master.key and config/credentials.yml.enc if they exist.
   4. Run `EDITOR="code --wait" rails credentials:edit`
   5. Run `rails db:create db:migrate db:seed`
   6. Run ```$ rails server```
   7. open your navigator
   8. Go to ```http://localhost:3000/```
   9. If you receive an authentication error
   10. Delete your `credential.yml` file
   11. Run `rails credentials:edit`
   12. Run ```$ rails server``` again
2. Run the front-end :
   1. Run the command ```$npm start ``` in your terminal.
   2. Your default browser should open automatically and display your React app

### Run tests

If you follow the tutorial above to setup linters then you can run these tests

```$
  npx hint .
```
```$
  npx stylelint "**/*.scss"
```
```$
  rubocop
```

or if you use css then run this instead of the latter command above

```$
  npx stylelint "**/*.{css,scss}"
```

### Deployment

You can deploy this project using: GitHub Pages Netifly or Render 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Ali Bello**

- GitHub: [@githubhandle](https://github.com/devalibello)
- Twitter: [@twitterhandle](https://twitter.com/i_am_aalee)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ali-bello-imoukhuede/)

👤 **Benson Kiai**

- GitHub: [@Benson](https://github.com/BenMKT)
- LinkedIn: [Ben](https://www.linkedin.com/in/bensonkiai)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>


- [ ] **Profile management**
- [ ] **Deployment**
- [ ] **Payment Integration**
- [ ] **Reviews and Ratings**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/devalibello/final-capstone-project-api/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can follow me on github for more.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

thanks to Microverse for providing the necessary resources.
And special thanks to <a href='https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign' target="_blank">Murat Korkmaz </a> the author of the original design


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ❓ FAQ (OPTIONAL) <a name="faq"></a>

- **Are the linters necessary?**

  - It is a good practice to install and use them as they guide you towards best practice, but yes you can do without. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
