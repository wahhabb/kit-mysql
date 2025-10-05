import { json } from "@sveltejs/kit";
import mysql from "mysql2/promise";
import { myPoolFn } from "$lib/db/mysql.js";

export async function POST({ request }) {
  const { st } = await request.json();
  try {
    const pool = await myPoolFn();
    let results = await(pool.query("SELECT * FROM states where state = '" + st + "'")
      .then (function ([rows, fields]) {
        //        console.log(rows);
        return rows;
    }))
    await pool.end();
    return json(results);
  } catch (error) {
    console.error("Got an error on getting state!!!");
    console.error(error);
    return error;
  }
}
