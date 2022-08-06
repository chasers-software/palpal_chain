require("@nomiclabs/hardhat-waffle");
require("dotenv").config({ path: ".env" });

//for rinkeby

// const ALCHEMY_API_KEY_URL = process.env.ALCHEMY_API_KEY_URL;

// const RINKEBY_PRIVATE_KEY = process.env.RINKEBY_PRIVATE_KEY;

//for polygon
const API_URL = process.env.API_URL;

const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.9",
  networks: {
    hardhat: {
      chainId: 1337,
    },
    // rinkeby: {
    //   url: ALCHEMY_API_KEY_URL,
    //   accounts: [RINKEBY_PRIVATE_KEY],
    // },
    mumbai: {
      url: API_URL,
      accounts: [`0x${PRIVATE_KEY}`],
    },
  },
};
