// const address = document.getElementById("address");
// const mapContainer = document.getElementById('map');
//
// document.addEventListener('DOMContentLoaded', () => {
//   fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${address.value}`)
//   .then(response => response.json())
//   .then((data) => {
//     console.log(data)
//     const latitude = (data.results[0].geometry.location.lat)
//     const longitude = (data.results[0].geometry.location.lng)
//
//     let addressFound = {lat: latitude, lng: longitude };
//     console.log(addressFound)
//     let map = new google.maps.Map(mapContainer, {
//       zoom: 12,
//       center: addressFound
//     });
//     console.log(document.getElementById('map'))
//
//     let marker = new google.maps.Marker({
//       position: addressFound,
//       map: map
//     });
//   });
// });
