import mysql from "mysql2/promise";
import { myPoolFn } from "$lib/db/mysql.js";

export async function load() {
  try {
    const pool = await myPoolFn();
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
    console.error("Got an error getting state data!!!");
    console.error(error);
    return error;
  }
}