
# clean the build directory
clean:
	rm -rf build/ dist/ .eggs/ *.egg-info/ || true

# build the deployment package
deployment: clean
	python setup.py bdist_wheel
	python3 setup.py bdist_wheel

# ship the deployment package to PyPi
ship: deployment
	twine upload dist/*
