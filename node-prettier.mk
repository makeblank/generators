# Creates a blank node-eslint project with prettier
#
# https://github.com/prettier/eslint-config-prettier

devPackages += prettier eslint-config-prettier@8

configFiles += config/prettier.json

include node-eslint.mk

init:: package.json
	npx prettier --write $<