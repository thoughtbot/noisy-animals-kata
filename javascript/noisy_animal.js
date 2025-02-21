function createNoisyAnimal(species) {
  function isBird() {
    return ['owl', 'eagle', 'hadedah'].includes(species);
  }

  function mammalNoise() {
    const noises = {
      cat: 'meow',
      dog: 'woof',
      leopard: 'growl'
    };
    return noises[species];
  }

  function makeBirdNoise(isLoud = true) {
    if (species === 'hadedah') {
      console.log('squawk');
    } else if (species === 'eagle') {
      console.log('caw');
    } else {
      console.log('hoot');
    }

    if (isLoud) {
      if (species === 'owl') {
        console.log('hoot');
      }
      if (species === 'eagle') {
        console.log('caw');
      }
      if (species === 'hadedah') {
        console.log('squawk');
      }
    } else {
      if (species === 'hadedah') {
        throw new Error('there is no such thing as a quiet hadedah!');
      }
    }
  }

  function makeNoise({ loud = true } = {}) {
    if (isBird() && !loud) {
      makeBirdNoise(loud);
    }
    if (loud) {
      if (mammalNoise()) {
        console.log(mammalNoise());
        console.log(mammalNoise());
      }
      if (isBird()) {
        makeBirdNoise(loud);
      }
    } else if (['cat', 'dog', 'leopard'].includes(species)) {
      console.log(mammalNoise());
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
