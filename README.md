<div id="header" align="center">
  <a href="#">
    <img src="./img/afrilogo.png" alt="Logo" width="250">
  </a>
  <p align="center">
    <br />
    <a href=""><strong>Explore the API docs »</strong></a>
    <br />
    <br />
    <a href="https://africar-premium.herokuapp.com/api-docs/index.html">View Demo</a>
    ·
    <a href="https://github.com/Banstein/africar-backend/issues">Report Bug</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>TABLE OF CONTENTS</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#erd-diagram">ERD diagram</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#authors">Authors</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<br />

## About The Project

> **Africar App** is a Car reservation platform that allows customers to book their car remotely within a defined time frame.
### ERD diagram

<img alt="ERD diagram" src="./img/ERD diagram.png ">

### Built With

- ruby
- ruby on rails
- psql


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- POSTGRESQL _~> 14.x_
- Ruby _~> 3.1.x_

### Installation

1. Clone the repo:
   ```sh
   git clone git@github.com:Banstein/africar-backend.git
   ```
2. go to the project folder:
   ```sh
   cd africar-backend
   ```
3. Install the dependencies:
   ```sh
   bundle install
   ```
4. Set the following the environment variables for database:
   ```
   DATABASE_NAME
   USER_PASSWORD
   USER_NAME
   ```
5. Create database:
   ```sh
   rails db:create
   ```
6. Run the migrations:
   ```sh
   rails db:migrate
   ```
7. Seed the database:

   ```sh
   rails db:seed
   ```


9. Launch the server:

    ```sh
    rails s 
    ```

<hr>

## Authors

👤 Islam Bahnas

- GitHub: [@Banstein](https://github.com/Banstein)
- Twitter: [@islam_bahnas](https://twitter.com/islam_bahnas)
- LinkedIn: [islam-bahnas](www.linkedin.com/in/islam-bahnas)

👤 Pascal Kabika 
- GitHub: [@KABIKA681](https://github.com/KABIKA681?tab=overview&from=2021-12-01&to=2021-12-31)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/pascal-kabika-443061220/)

👤 Nicholas Mutale
- GitHub: [@mutalenic](https://github.com/mutalenic)
- Twitter: [@nicomutale](https://twitter.com/nicomutale)
- LinkedIn: [nicomutale](https://linkedin.com/in/nicomutale)

<br>

## Acknowledgments

Original design by [Murat Korkmaz](https://www.behance.net/muratk).

<br>

## License

See [`LICENSE`](./LICENSE) for more information.
