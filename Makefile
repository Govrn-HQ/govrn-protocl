# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
install:; forge install
update:; forge update

# Build & test
build  :; forge build
test   :; forge test
trace   :; forge test -vvv
clean  :; forge clean
snapshot :; forge snapshot

deploy :; forge create --rpc-url ${RPC_URL} --constructor-args 259200 -i src/Govrn.sol:Govrn
