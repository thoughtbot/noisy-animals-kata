function createNoisyAnimal(species) {
  function loudSound(sound) {
    console.log(sound);
    console.log(sound);
  }

  function quietSound(sound) {
    console.log(sound);
  }

function makeNoise({ loud = true } = {}) {
  let actions;

  switch (species) {
    case 'cat':
      actions = {
        loud: () => loudSound('meow'),
        quiet: () => quietSound('meow')
      };
      break;

    case 'dog':
      actions = {
        loud: () => loudSound('woof'),
        quiet: () => quietSound('woof')
      };
      break;

    case 'leopard':
      actions = {
        loud: () => loudSound('growl'),
        quiet: () => quietSound('growl')
      };
      break;

    case 'hadedah':
      actions = {
        loud: () => loudSound('squawk'),
        quiet: () => {
          quietSound('squawk');
          throw new Error('there is no such thing as a quiet hadedah!');
        }
      };
      break;

    case 'eagle':
      actions = {
        loud: () => loudSound('caw'),
        quiet: () => quietSound('caw')
      };
      break;

    case 'owl':
      actions = {
        loud: () => loudSound('hoot'),
        quiet: () => quietSound('hoot')
      };
      break;
  }

  if (actions) {
    actions[loud ? 'loud' : 'quiet']();
  }
}

  return {
    makeNoise
  };
}

module.exports = createNoisyAnimal;
