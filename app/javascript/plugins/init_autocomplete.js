import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('location');
  if (addressInput) {
    places({
      container: addressInput,
      appId: 'plJYONJFWK8F',
      apiKey: 'a0869ca449ca281ed1dd9ed532d21ae1'
    });
  }
};

export { initAutocomplete };
