const express = require("express");
const app = express();

const presidents = [
  {
    name: "George Washington",
    height: "6' 2",
    dob: "February 22, 1732",
    died: "December 14, 1799",
    presidentNumber: 1,
    term: "April 30, 1789 – March 4, 1797",
    birthPlace: "Westmoreland County, Virginia",
    impeached: false
  },
  {
    name: "John Adams",
    height: "5' 7",
    dob: "October 30, 1735",
    died: "July 4, 1826",
    presidentNumber: 2,
    term: "March 4, 1797 – March 4, 1801",
    birthPlace: "Braintree, Massachusetts",
    impeached: false
  },
  {
    name: "Thomas Jefferson",
    height: "6' 2",
    dob: "April 13, 1743",
    died: "July 4, 1826",
    presidentNumber: 3,
    term: "March 4, 1801 – March 4, 1809",
    birthPlace: "Shadewell, Virginia",
    impeached: false
  },
  {
    name: "James Madison Jr.",
    height: "5' 4",
    dob: "March 16, 1751",
    died: "June 28, 1836",
    presidentNumber: 4,
    term: "March 4, 1809 – March 4, 1817",
    birthPlace: "Port Conway, Virginia",
    impeached: false
  },
  {
    name: "James Monroe",
    height: "6'",
    dob: "April 28, 1758",
    died: "July 4, 1831",
    presidentNumber: 5,
    term: "March 4, 1817 – March 4, 1825",
    birthPlace: "Westmoreland County, Virginia",
    impeached: false
  }
];

app.get("/", (req, res) => {
  res.json(presidents);
});

app.listen(3000, () => console.log("server is up"));
