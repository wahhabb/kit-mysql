import mysql from "mysql2/promise";

let mysqlconn = null;

export function mysqlconnFn() {
  if (!mysqlconn) {
    // used for development with MAMP
    // mysqlconn = mysql.createConnection({
    //   host: "127.0.0.1",
    //   user: "root",
    //   password: "",
    //   database: "statedata",
    // });
    mysqlconn = mysql.createConnection({
      host: "82.180.138.232",
      user: "u384526927_wahhab",
      password: "sT4t3s&!ccmc9",
      database: "u384526927_States",
    });
  }

  return mysqlconn;
}
