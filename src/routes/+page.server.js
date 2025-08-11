import { mysqlconnFn } from "$lib/db/mysql";

export async function load() {
  let mysqlconn = await mysqlconnFn();
  try {
    let results = await mysqlconn
      .query("SELECT state FROM states;")
      .then(function ([rows, fields]) {
        //        console.log(rows);
        return rows;
      });

    return {
      data: results,
    };
  } catch (error) {
    console.error("Got an error!!!");
    console.error(error);
    return error;
  }
}
