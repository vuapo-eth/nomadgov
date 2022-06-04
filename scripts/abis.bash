rm abis/*

npx solcjs --abi --include-path node_modules/ --base-path ./ ./contracts/Citizens.sol -o abis

rm abis/@openzeppelin* abis/hardhat_console_sol_console.abi

mv abis/contracts_Citizens_sol_Citizens.abi         abis/ABI_Citizens.json