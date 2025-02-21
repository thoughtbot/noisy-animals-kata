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
      ({
        loud: () => loudSound('meow'),
        quiet: () => quietSound('meow')
      })[loud ? 'loud' : 'quiet']();
      break;

    case 'dog':
      ({
        loud: () => loudSound('woof'),
        quiet: () => quietSound('woof')
      })[loud ? 'loud' : 'quiet']();
      break;

    case 'leopard':
      ({
        loud: () => loudSound('growl'),
        quiet: () => quietSound('growl')
      })[loud ? 'loud' : 'quiet']();
      break;

    case 'hadedah':
      ({
        loud: () => loudSound('squawk'),
        quiet: () => {
          quietSound('squawk');
          throw new Error('there is no such thing as a quiet hadedah!');
        }
      })[loud ? 'loud' : 'quiet']();
      break;

    case 'eagle':
      ({
        loud: () => loudSound('caw'),
        quiet: () => quietSound('caw')
      })[loud ? 'loud' : 'quiet']();
      break;

    case 'owl':
      ({
        loud: () => loudSound('hoot'),
        quiet: () => quietSound('hoot')
      })[loud ? 'loud' : 'quiet']();
      break;
    }
  }

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
