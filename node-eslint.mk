# Creates a blank node project with eslint and standard installed
#
# https://eslint.org/docs/user-guide/getting-started
# https://github.com/standard/eslint-config-standard

devPackages += \
	eslint \
	eslint-config-standard \
	eslint-plugin-promise \
	eslint-plugin-import \
	eslint-plugin-node

configFiles := config/eslint.json $(configFiles)

include node.mk
