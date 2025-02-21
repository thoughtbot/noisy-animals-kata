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
    } else if (species === 'eagle') {
      console.log('caw');
    } else {
      console.log('hoot');
    }
    if (species === 'owl') {
      console.log('hoot');
    }
    if (species === 'eagle') {
      console.log('caw');
    }
    if (species === 'hadedah') {
      console.log('squawk');
    }
  }

  function makeBirdNoiseSoft() {
    if (species === 'hadedah') {
      console.log('squawk');
    } else if (species === 'eagle') {
      console.log('caw');
    } else {
      console.log('hoot');
    }

    if (species === 'hadedah') {
      throw new Error('there is no such thing as a quiet hadedah!');
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
