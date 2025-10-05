import { json } from "@sveltejs/kit";
import { mysqlconnFn } from "$lib/db/mysql";

export async function POST({ request }) {
  const { st } = await request.json();
  // let mysqlconn = await mysqlconnFn();
  // let results = await mysqlconn
  //   .query("SELECT * FROM states where state = '" + st + "'")
  //   .then(function ([rows, fields]) {
  //     //     console.log("Got this far!!");
  //     //     console.log(rows);
  //     return rows;
  //   });

    try {
    const pool = await mysql.createPool({
      host: "srv766.hstgr.io",
      user: "u384526927_wahhabb",
      password: "sT4t3s&!ccmc9",
      database: "u384526927_States",
    });
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
