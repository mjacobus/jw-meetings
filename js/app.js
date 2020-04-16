var options = { mode: 'no-cors' }

fetch('./data/files.json', options).then(function (response) {
  console.log(response)
});
