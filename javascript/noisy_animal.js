function createNoisyAnimal(species) {
  function isBird() {
    return ['owl', 'eagle', 'hadedah'].includes(species);
  }

  function isMammal() {
    return ['cat', 'dog', 'leopard'].includes(species);
  }

  function mammalNoise() {
    const noises = {
      cat: 'meow',
      dog: 'woof',
      leopard: 'growl'
    };
    return noises[species];
  }

  function makeBirdNoiseLoud() {
    if (species === 'hadedah') {
      console.log('squawk');
      console.log('squawk');
    } else if (species === 'eagle') {
      console.log('caw');
      console.log('caw');
    } else if (species === 'owl') {
      console.log('hoot');
      console.log('hoot');
    }
  }

  function makeBirdNoiseSoft() {
    if (species === 'hadedah') {
      console.log('squawk');
      throw new Error('there is no such thing as a quiet hadedah!');
    } else if (species === 'eagle') {
      console.log('caw');
    } else {
      console.log('hoot');
    }
  }

  function makeNoise({ loud = true } = {}) {
    if (loud) {
      if (isMammal()) {
        console.log(mammalNoise());
        console.log(mammalNoise());
      }
      if (isBird()) {
        makeBirdNoiseLoud();
      }
    } else {
      if (isMammal()) {
        console.log(mammalNoise());
      } else if (isBird()) {
        makeBirdNoiseSoft();
      }
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
