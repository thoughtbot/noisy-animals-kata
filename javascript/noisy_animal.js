function createNoisyAnimal(species) {
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
    if (['cat', 'dog', 'leopard'].includes(species)) {
      if (loud) {
        makeMammalNoise();
        makeMammalNoise();
      } else {
        makeMammalNoise();
      }
    }
    if (species === 'hadedah') {
      if (loud) {
        console.log('squawk');
        console.log('squawk');
      } else {
        console.log('squawk');
        throw new Error('there is no such thing as a quiet hadedah!');
      }
    } else if (species === 'eagle') {
      if (loud) {
        console.log('caw');
        console.log('caw');
      } else {
        console.log('caw');
      }
    } else if (species === 'owl') {
      if (loud) {
        console.log('hoot');
        console.log('hoot');
      } else {
        console.log('hoot');
      }
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
