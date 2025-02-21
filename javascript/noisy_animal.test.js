const createNoisyAnimal = require('./noisy_animal');

describe('NoisyAnimal', () => {
  let output = '';

  beforeEach(() => {
    output = '';
    jest.spyOn(console, 'log').mockImplementation((...args) => {
      output += args.join(' ') + '\n';
    });
  });

  afterEach(() => {
    jest.restoreAllMocks();
  });

  describe('when the animal is a cat', () => {
    it('makes a meow noise twice', () => {
      const animal = createNoisyAnimal('cat');
      animal.makeNoise();

      expect(output).toBe('meow\nmeow\n');
    });
  });

  describe('when the animal is a dog', () => {
    it('makes a woof noise twice', () => {
      const animal = createNoisyAnimal('dog');
      animal.makeNoise();

      expect(output).toBe('woof\nwoof\n');
    });
  });

  describe('when the animal is a leopard', () => {
    it('makes a growl noise twice', () => {
      const animal = createNoisyAnimal('leopard');
      animal.makeNoise();

      expect(output).toBe('growl\ngrowl\n');
    });
  });

  describe('when the animal is unusually quiet', () => {
    it('cat goes meow', () => {
      const animal = createNoisyAnimal('cat');
      animal.makeNoise({ loud: false });

      expect(output).toBe('meow\n');
    });

    it('dog goes woof', () => {
      const animal = createNoisyAnimal('dog');
      animal.makeNoise({ loud: false });

      expect(output).toBe('woof\n');
    });

    it('leopard goes growl', () => {
      const animal = createNoisyAnimal('leopard');
      animal.makeNoise({ loud: false });

      expect(output).toBe('growl\n');
    });
  });

  describe('when the animal is really a bird', () => {
    it('loud owls hoot twice', () => {
      const animal = createNoisyAnimal('owl');
      animal.makeNoise();

      expect(output).toBe('hoot\nhoot\n');
    });

    it('loud eagles caw twice', () => {
      const animal = createNoisyAnimal('eagle');
      animal.makeNoise();

      expect(output).toBe('caw\ncaw\n');
    });

    it('loud hadedahs squawk twice', () => {
      const animal = createNoisyAnimal('hadedah');
      animal.makeNoise();

      expect(output).toBe('squawk\nsquawk\n');
    });

    it('quiet owls hoot', () => {
      const animal = createNoisyAnimal('owl');
      animal.makeNoise({ loud: false });

      expect(output).toBe('hoot\n');
    });

    it('quiet eagles caw', () => {
      const animal = createNoisyAnimal('eagle');
      animal.makeNoise({ loud: false });

      expect(output).toBe('caw\n');
    });

    it('quiet hadedahs do not exist', () => {
      const animal = createNoisyAnimal('hadedah');

      expect(() => {
        animal.makeNoise({ loud: false });
      }).toThrow(/no such thing/);
    });
  });
});

