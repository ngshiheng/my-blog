# Django Blog :pencil2:

![alt text](https://i.imgur.com/wcqeGTQ.png)

Blog application built using Django. Current supported features:

-   User authentication
-   User password reset
-   User profile
-   Create, delete and update a blog post
-   Pagination
-   Post filtering by author

## Requirements :notebook:

-   It is recommended to use [Python](https://www.python.org/downloads/) 3.6+
-   [pip](https://pip.pypa.io/en/stable/) package installer
-   Django

## Setup for Ubuntu :nut_and_bolt:

_Note: This project is tested and develop on Ubuntu 18.04 LTS._

Create a virtual environment using Python `venv` OR `virtualenv` OR any other similar alternatives that you may find.

Example

```bash
python -m venv venv-my-blog
```

Setup with the provided bash script

```bash
./setup.sh
python3 manage.py runserver
```

## Contributing :busts_in_silhouette:

-   Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

-   Please run `./lint.sh` before commiting any code and make sure it passes all the lint and format check

-   Please make sure to update tests as appropriate.

## License :checkered_flag:

[MIT](https://choosealicense.com/licenses/mit/)
