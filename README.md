# Django Blog :pencil2:

![alt text](https://i.imgur.com/wcqeGTQ.png)

Blog application built using Django. Current supported features:

- User authentication
- User password reset
- User profile
- Create, delete and update a blog post
- Pagination
- Post filtering by author

## Requirements :notebook:

- It is recommended to use [Python](https://www.python.org/downloads/) 3.6+
- [pip](https://pip.pypa.io/en/stable/) package installer
- Python [virtualenv](https://virtualenv.pypa.io/en/latest/)
- Django (this will be installed using `pip` later on)

## Setup for Ubuntu :nut_and_bolt:

_Note: This project is tested and develop on Ubuntu 18.04 LTS._

Setup with the provided bash script at the project directory

```bash
./setup.sh
source venv-my-blog/bin/activate
python3 manage.py runserver
```

## Contributing :busts_in_silhouette:

- Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change

- Please run `./lint.sh` before commiting any code and make sure it passes all the lint and format check

- Please make sure to update tests as appropriate

## License :checkered_flag:

MIT License

Copyright (c) [2019][ngshiheng]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
