# Personal Portfolio website

Personal Portfolio Website written using Flask Framework in Python.

## Technologies Used
- Frontend
    - HTML
    - CSS
    - JS

- Backend
    - Python
    - sqlite3

## Installation
- Install pre-requirements
    - git
    - Python 3.X

- Clone repo
    ```bash
    git clone --depth=1 https://github.com/LewisJassy/My_Portfolio
    ```

- Change directory
    ```bash
    cd My_Portfolio
    ```

- Install Project requirements
    ```bash
    python -m pip install -r requirements.txt
    ```
    > `Note`: Ubuntu users might have to use `python3` instead of `python`

- Make Database migrations
    ```bash
    flask db init
    flask db migrate -m "initial migration"
    flask db upgrade
    ```

- run application using wsgi server
    ```bash
    waitress-serve wsgi:app
    ```

## Deploy using Docker
- Build image
  ```bash
  docker build -t my_portfolio .
  ```
- Run image
  ```bash
  docker run -d -p 8080:8080 my_portfolio
  ```

## TODO
- [ ] Make Website Responsive
- [ ] Create Blogs
