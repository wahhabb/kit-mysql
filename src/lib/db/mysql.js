import mysql from "mysql2/promise";
import { env } from '$env/dynamic/private';


console.log(env.DEPLOYMENT_SPECIFIC_VARIABLE);
let myPool = null;

export async function myPoolFn() {
  try {
    myPool = await mysql.createPool({
          host: env.SQL_HOST,
          user: env.SQL_USER,
          password: env.SQL_PASSWORD,
          database: env.SQL_DATABASE,
    //       host: "srv766.hstgr.io",
    //       user: "u384526927_wahhabb",
    //       password: "sT4t3s&!ccmc9",
    //       database: "u384526927_States",
    // // used for development with MAMP
    //   host: "127.0.0.1",
    //   user: "root",
    //   password: "",
    //   database: "statedata",          
    });
  } catch(error) {
    console.error("Got an error on getting pool!!!");
    console.error(error);
    return error;
  }
  return myPool;
}