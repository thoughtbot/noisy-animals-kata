function createNoisyAnimal(species) {
  function makeNoise({ loud = true } = {}) {
    if (species === 'cat') {
      if (loud) {
        console.log('meow');
        console.log('meow');
      } else {
        console.log('meow');
      }
    } else if (species === 'dog') {
      if (loud) {
        console.log('woof');
        console.log('woof');
      } else {
        console.log('woof');
      }
    } else if (species === 'leopard') {
      if (loud) {
        console.log('growl');
        console.log('growl');
      } else {
        console.log('growl');
      }
    } else if (species === 'hadedah') {
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
