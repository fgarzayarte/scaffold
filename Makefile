install:
	python3 -m pip install --target .scaffold/lib/python3.9/site-packages --upgrade pip &&\
	python3 -m pip install --target .scaffold/lib/python3.9/site-packages -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python3 -m pytest -vv --cov=hello test_hello.py

all: install lint test