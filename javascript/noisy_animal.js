function createNoisyAnimal(species) {
  function loudSound(sound) {
    console.log(sound);
    console.log(sound);
  }

  function quietSound(sound) {
    console.log(sound);
  }

  function makeNoise({ loud = true } = {}) {
    switch (species) {
    case 'cat':
      if (loud) {
        loudSound('meow');
      } else {
        quietSound('meow');
      }
      break;

    case 'dog':
      if (loud) {
        loudSound('woof');
      } else {
        quietSound('woof');
      }
      break;

    case 'leopard':
      if (loud) {
        loudSound('growl');
      } else {
        quietSound('growl');
      }
      break;

    case 'hadedah':
      if (loud) {
        loudSound('squawk');
      } else {
        quietSound('squawk');
        throw new Error('there is no such thing as a quiet hadedah!');
      }
      break;

    case 'eagle':
      if (loud) {
        loudSound('caw');
      } else {
        quietSound('caw');
      }
      break;

    case 'owl':
      if (loud) {
        loudSound('hoot');
      } else {
        quietSound('hoot');
      }
      break;
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
