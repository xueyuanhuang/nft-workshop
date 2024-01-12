1.use [pinata](https://app.pinata.cloud/pinmanager) to store your metadata and picture  
1.1.upload to pictures folder first  
1.2.check your pircutre's url store in the cloude  
1.3.change it in the metadata  
1.4.upload the metadata folder  

2.use the [remix](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.22+commit.4fc1097e.js) to deploy nfts  
2.1.write the [code file](https://github.com/xueyuanhuang/nft-workshop/blob/main/SimpleNft.sol) under "contract" folder  
2.2.complie the code file  
2.3.choose the "Deploy & run transactions"  
2.4.environment choose "Injected Provider - MetaMask"  
2.5.under "Deploy" enter the "initialOwner"(the wallet address)  
2.6."_initbaseURL" enter "https://gateway.pinata.cloud/ipfs/[QmcQXHYsAa19FfSXzuVHHNFNw42EbYxwyu7mPRQx6cy4rj]" the [] part is metadata's jason clode location, you should be able to enter the browser to check if is the right json  
2.7.click to "transact"  

3.mint  
3.1. under the "Deployed Contracts" in "mint" option enter your wallet address  
3.2. under "VALUE" enter "10000000000000000"  
3.3.click "mint"  

4.go to [oepnsea testnet](https://testnets.opensea.io/assets/mumbai/0x64fa471d54ac6b67fbce046a0af0aca7bd4678ef/5) to check  
