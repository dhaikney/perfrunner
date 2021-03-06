.PHONY: build

build:
	virtualenv -p python2.7 env
	./env/bin/pip install --upgrade --quiet pip wheel
	./env/bin/pip install --quiet --find-links wheels -r requirements.txt
	./env/bin/python setup.py install
	pwd > env/lib/python2.7/site-packages/perfrunner.pth

clean:
	rm -fr build perfrunner.egg-info dist
	find . -name '*.pyc' -o -name '*.pyo' | xargs rm -f

pep8:
	./env/bin/flake8 --statistics cbagent perfrunner spring
	./env/bin/isort --quiet --check-only --recursive --multi_line 3 --trailing-comma cbagent perfrunner

nose:
	./env/bin/nosetests -v unittests.py

test: nose pep8
