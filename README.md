# Python Pylint GitHub Action
Github Action for Pylint with Python Slim Docker image (supports install of numpy and pandas and takes very less time to build)

Run any pylint command using the action -

```bash
$ pylint <directory_name>
```

Run pylint command with .pylintrc in your repo -

```bash
$ pylint --rcfile=.pylintrc <directory_name>
```

### Usage

```yml
- name: Python Pylint GitHub Action
  uses: kamalauriga/python-pylint-github-action@master
  with:
    args: pip3 install -r requirements.txt && pylint --rcfile=.pylintrc <directory_name>
```
