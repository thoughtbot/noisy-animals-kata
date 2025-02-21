function createNoisyAnimal(species) {
  function makeNoise({ loud = true } = {}) {
    if (['cat', 'dog', 'leopard'].includes(species)) {
      noise = {
        cat: 'meow',
        dog: 'woof',
        leopard: 'growl'
      }[species];
      if (loud) {
        console.log(noise);
        console.log(noise);
      } else {
        console.log(noise);
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
