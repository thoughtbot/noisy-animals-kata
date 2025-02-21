function createNoisyAnimal(species) {
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

  function makeMammalNoise() {
    console.log(mammalNoise());
  }

  function makeNoise({ loud = true } = {}) {
    if (isMammal()) {
      if (loud) {
        makeMammalNoise();
        makeMammalNoise();
      } else {
        makeMammalNoise();
      }
    }
    if (['owl', 'eagle', 'hadedah'].includes(species)) {
      if (loud) {
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
      } else {
        if (species === 'hadedah') {
          console.log('squawk');
          throw new Error('there is no such thing as a quiet hadedah!');
        } else if (species === 'eagle') {
          console.log('caw');
        } else {
          console.log('hoot');
        }
      }
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
