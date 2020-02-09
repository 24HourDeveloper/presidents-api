const express = require("express");
const cors = require('cors');
const app = express();

app.use(cors())
app.use(express.static("assets"));
app.use(express.json())
app.use(express.urlencoded({extended:true}))


const presidents = [
  {
    id:1,
    name: "George Washington",
    height: "6' 2",
    imgUrl:"http://localhost:5000/images/president1.jpg",
    dob: "February 22, 1732",
    died: "December 14, 1799",
    presidentNumber: 1,
    term: "April 30, 1789 – March 4, 1797",
    birthPlace: "Westmoreland County, Virginia",
    impeached: false
  },
  {
    id:2,
    name: "John Adams",
    height: "5' 7",
    imgUrl: "http://localhost:5000/images/president2.jpg",
    dob: "October 30, 1735",
    died: "July 4, 1826",
    presidentNumber: 2,
    term: "March 4, 1797 – March 4, 1801",
    birthPlace: "Braintree, Massachusetts",
    impeached: false
  },
  {
    id:3,
    name: "Thomas Jefferson",
    height: "6' 2",
    imgUrl: "http://localhost:5000/images/president3.jpg",
    dob: "April 13, 1743",
    died: "July 4, 1826",
    presidentNumber: 3,
    term: "March 4, 1801 – March 4, 1809",
    birthPlace: "Shadewell, Virginia",
    impeached: false
  },
  {
    id:4,
    name: "James Madison Jr.",
    height: "5' 4",
    imgUrl: "http://localhost:5000/images/president4.jpg",
    dob: "March 16, 1751",
    died: "June 28, 1836",
    presidentNumber: 4,
    term: "March 4, 1809 – March 4, 1817",
    birthPlace: "Port Conway, Virginia",
    impeached: false
  },
  {
    id:5,
    name: "James Monroe",
    height: "6'",
    imgUrl: "http://localhost:5000/images/president5.jpg",
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

app.get("/president/:id", (req, res) =>{
  const id = req.params.id;
  res.json(presidents[id]);
})

app.listen(5000, () => console.log("server is up"));
