//import { mysqlconnFn } from "$lib/db/mysql";

// export async function load() {
//   let mysqlconn = await mysqlconnFn();
//   try {
//     let results = await mysqlconn
//       .query("SELECT state FROM states;")
//       .then(function ([rows, fields]) {
//         //        console.log(rows);
//         return rows;
//       });

//     return {
//       data: results,
//     };
//   } catch (error) {
//     console.error("Got an error!!!");
//     console.error(error);
//     return error;
//   }
//}

import mysql from "mysql2/promise";
//import { createPool} from "mysql2";
export async function load() {
  try {
    const pool = await mysql.createPool({
      host: "srv766.hstgr.io",
      user: "u384526927_wahhabb",
      password: "sT4t3s&!ccmc9",
      database: "u384526927_States",
    });
    let results = await(pool.query('SELECT state FROM states;')
      .then (function ([rows, fields]) {
        //        console.log(rows);
        return rows;
    }))
    await pool.end();
    return {
      data: results,
    }
  } catch (error) {
    console.error("Got an error!!!");
    console.error(error);
    return error;
  }
}