function createNoisyAnimal(species) {
  function loudSound(sound) {
    console.log(sound);
    console.log(sound);
  }

  function quietSound(sound) {
    console.log(sound);
  }

  function makeNoise({ loud = true } = {}) {
    if (species === 'cat') {
      if (loud) {
        loudSound('meow');
      } else {
        quietSound('meow');
      }
    } else if (species === 'dog') {
      if (loud) {
        loudSound('woof');
      } else {
        quietSound('woof');
      }
    } else if (species === 'leopard') {
      if (loud) {
        loudSound('growl');
      } else {
        quietSound('growl');
      }
    } else if (species === 'hadedah') {
      if (loud) {
        loudSound('squawk');
      } else {
        quietSound('squawk');
        throw new Error('there is no such thing as a quiet hadedah!');
      }
    } else if (species === 'eagle') {
      if (loud) {
        loudSound('caw');
      } else {
        quietSound('caw');
      }
    } else if (species === 'owl') {
      if (loud) {
        loudSound('hoot');
      } else {
        quietSound('hoot');
      }
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
